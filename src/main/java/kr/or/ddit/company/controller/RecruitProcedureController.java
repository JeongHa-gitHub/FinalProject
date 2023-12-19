package kr.or.ddit.company.controller;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.service.RecruitProcedureService;
import kr.or.ddit.company.vo.AProcedureOuterVO;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.utils.MailUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/company")
public class RecruitProcedureController {
	
	@Inject
	private RecruitProcedureService service;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource uploadFolder;
	
	/* 채용공고 목록 조회 */
	@GetMapping("recruitListUI")
	public String recruitListUI() {
		return "company/recruit/recruitList";
	}
	
	@ResponseBody
	@GetMapping("recruit")
	public PaginationInfo<Map<String, Object>> recruitListRetrieve(
			@SessionAttribute(value="authId", required = false) String companyId
			, @RequestParam Map<String, Object> variousCondition
			,@RequestParam(value = "page", defaultValue = "1", required = false) int currentPage
	) {
		PaginationInfo<Map<String, Object>> paging = new PaginationInfo<>(3,5);

		// 시큐리티를 안쓰기 때문에.. 있을 수 없는 기업아이디 세팅
		if(companyId==null) {
			companyId = UUID.randomUUID().toString();
		}
		
		variousCondition.put("companyId", companyId);
		
		paging.setVariousCondition(variousCondition);
		paging.setCurrentPage(currentPage);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		
		service.retrieveRecruitList(paging);
		return paging;
	}
	
	/* 채용공고 상세 조회 */
	@GetMapping("recruit/{rcrtNo}/{rprocOrder}")
	public String recruitViewRetrieve(
			@PathVariable String rcrtNo
			, @PathVariable int rprocOrder
			, Model model
	) {
		// rcrtNo 의 채용절차 정보 가져오기 -> forEach문 돌려서 채용절차정보만큼 탭 만들기, rprocOrder에 해당하는 탭에 select 주기
		List<RProcedureVO> dataList = service.retrieveRecruitProcedure(rcrtNo);
		
		// 한 채용절차의 상세정보
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("rcrtNo", rcrtNo);
		paramMap.put("rprocOrder", rprocOrder);
		RProcedureVO currProcedureInfo = service.retrieveCurrentProcedureInfo(paramMap);
		
		// 채점표 존재유무 판단
		int resumeScoreFormCount = service.retrieveResumeScoreFormCount(paramMap);
		
		model.addAttribute("dataList",dataList);
		model.addAttribute("currProcedureInfo",currProcedureInfo);
		model.addAttribute("resumeScoreFormCount",resumeScoreFormCount);
		
		return "company/recruit/recruitView";
	}
	
	@ResponseBody
	@GetMapping("recruit/ajax/{rcrtNo}/{rprocOrder}")
	public PaginationInfo<AProcedureVO> recruitViewData(
			@PathVariable String rcrtNo
			, @PathVariable int rprocOrder
			, @RequestParam(value="page", defaultValue = "1", required = false) int currentPage
			, @RequestParam Map<String, Object> variousCondition
	) {
		// 채용절차유형에 따라 service에서 실행할 메소드 달라짐
		
		PaginationInfo<AProcedureVO> paging = new PaginationInfo<>(5,5);
		paging.setCurrentPage(currentPage);
		variousCondition.put("rcrtNo", rcrtNo);
		variousCondition.put("rprocOrder", rprocOrder);
		paging.setVariousCondition(variousCondition);
		paging.setRenderer(new BootstrapPaginationRenderer());
		
		service.retrieveApplicantList(paging);
		
		return paging;
		
	}
	
	/* 합불여부 수정 */
	@PutMapping("recruit/passStatus")
	@ResponseBody
	public String passStatusUpdate(
			@ModelAttribute AProcedureOuterVO outerVO
			, RedirectAttributes redirectAttribute
	) {
		ServiceResult result = service.modifyPassStatus(outerVO);
		
		String message = null;
		switch (result) {
		case OK:
			message = "OK";
			break;
		default:
			message = "FAIL";
			break;
		}
		
		return message;
	}
	
	/* 마감여부 수정 */
	@PutMapping("recruit/closeStatus")
	public String closeStateUpdate(
			@ModelAttribute AProcedureOuterVO outerVO
			, @RequestParam Map<String, Object> paramMap
			, RedirectAttributes redirectAttribute
	) {
		ServiceResult result = service.modifyCloseStatus(outerVO, paramMap);
		
		switch (result) {
		case OK:
			redirectAttribute.addFlashAttribute("message","채용절차 마감 성공");
			break;
		default:
			redirectAttribute.addFlashAttribute("message","채용절차 마감 실패");
			break;
		}
		
		String rcrtNo = String.valueOf(paramMap.get("rcrtNo"));
		int rprocOrder = Integer.parseInt(String.valueOf(paramMap.get("rprocOrder")));
		
		return String.format("redirect:/company/recruit/%s/%d", rcrtNo, rprocOrder);
	}
	

	/* 마감 알림 메일 컨트롤러 */
	@GetMapping(value ="/recruit/mail/{rcrtNo}/{rprocOrder}",produces = "application/json;charset=utf-8")
	@ResponseBody
	public void sendCloseMail(
			HttpServletRequest request
			, @PathVariable String rcrtNo
			, @PathVariable int rprocOrder
			, @SessionAttribute(value="authId", required = false) String companyId
			) throws Exception {
		/*
		// 방법1
		ServletContext context = request.getSession().getServletContext();		
		Properties prop = new Properties();
		prop.load(context.getResourceAsStream("WEB-INF/properties/sample2.properties"));
		*/
		
		/* 방법2
		Reader	reader= Resources.getResourceAsReader("/properties/sample.properties");
		Properties prop = new Properties();
		prop.load(reader);
		*/
		
		// 시큐리티를 안쓰기 때문에.. 있을 수 없는 기업아이디 세팅
		if(companyId==null) {
			companyId = UUID.randomUUID().toString();
		}
		
		CompanyVO companyVO = service.retrieveCompanyInfo(companyId);
		String fromName = companyVO.getCompanyNm();
		String url = "https://enjoyed-ultimate-finch.ngrok-free.app/FinalProject/";

		RecruitVO recruitVO = service.retrieveRecruitInfo(rcrtNo);
		String rcrtTitle = recruitVO.getRcrtTitle();
		
		AProcedureVO aprocVO = new AProcedureVO();
		aprocVO.setRcrtNo(rcrtNo);
		aprocVO.setRprocOrder(rprocOrder);
		List<String> emailList = service.retrieveApplicantEmailList(aprocVO);
		
		String contents =  String.format("[%s]<br>채용절차가 마감되었습니다. 결과를 확인하세요.<br><a href='%s'>결과 확인하기</a>", rcrtTitle, url);
		Map<String, String> mailDTO = new HashMap<String, String>();
		mailDTO.put("fromMail", "ddit2305@naver.com");
		mailDTO.put("password", "roqkfdnjs2305!!");
		mailDTO.put("title", "채용절차 마감 안내");
		mailDTO.put("fromName",fromName);
		mailDTO.put("contents",contents);
		
		for(String email : emailList) {
			mailDTO.put("toMail", email);
			MailUtil.sendMail(mailDTO);
		}
		
	}
	
	/* 지원자 목록 다운로드 */
	@GetMapping("recruit/applicantListDownload")
	public ResponseEntity<Resource> applicantListDownload(
			@RequestParam String rcrtNo
			, @RequestParam int rprocOrder
			, @RequestParam(required = false) String aprocPass
	) throws IOException {
		/* 필요한 데이터 구하기 */
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("rcrtNo", rcrtNo);
		paramMap.put("rprocOrder", rprocOrder);
		paramMap.put("aprocPass", aprocPass);
		
		
//		String rcrtNo = String.valueOf(paramMap.get("rcrtNo"));
		RecruitVO recruitInfo = service.retrieveRecruitInfo(rcrtNo);
		String rcrtTitle = recruitInfo.getRcrtTitle();
		String rcrtDate = recruitInfo.getRcrtDate();
		
		RProcedureVO rprocVO = service.retrieveCurrentProcedureInfo(paramMap);
		
		List<AProcedureVO> applicantList = service.retrieveApplicantList(paramMap);
		
		
		/* 엑셀파일 만들기 */
		XSSFWorkbook workbook = new XSSFWorkbook();
		
		XSSFSheet sheet = workbook.createSheet("지원자목록");
		
		// 셀 색깔 설정
		CellStyle color = workbook.createCellStyle();
		color.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		color.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 색깔 입힐 셀 임시저장할 변수
		Cell cell = null;
		
		// Row 생성
		Row title = sheet.createRow(0);
		
		cell = title.createCell(0);
		cell.setCellStyle(color);
		cell.setCellValue("공고명");
		title.createCell(1).setCellValue(rcrtTitle);
		
		// Row 생성
		Row date = sheet.createRow(1);
		
		cell = date.createCell(0);
		cell.setCellStyle(color);
		cell.setCellValue("등록일");
		date.createCell(1).setCellValue(rcrtDate);
		
		// Row 생성
		Row procedure = sheet.createRow(2);
		
		cell = procedure.createCell(0);
		cell.setCellStyle(color);
		cell.setCellValue("진행절차");
//		procedure.createCell(1).setCellValue(paramMap.get("rprocOrder")+"차");
		procedure.createCell(1).setCellValue(rprocOrder+"차");
		
		// Row 생성
		Row isClose = sheet.createRow(3);
		
		cell = isClose.createCell(0);
		cell.setCellStyle(color);
		cell.setCellValue("마감여부");
		
		String isCloseDate = (rprocVO.getRprocEnd());
		if(isCloseDate.equals("N")) {
			isCloseDate = "진행중";
		}else {
			isCloseDate = "마감";
		}
		isClose.createCell(1).setCellValue(isCloseDate);
		
		// Row 생성
		sheet.createRow(4);
		
		// Row 생성
		Row header = sheet.createRow(5);
		
		cell = header.createCell(0);
		cell.setCellStyle(color);
		cell.setCellValue("이름");
		
		cell = header.createCell(1);
		cell.setCellStyle(color);
		cell.setCellValue("생년월일");
		
		cell = header.createCell(2);
		cell.setCellStyle(color);
		cell.setCellValue("성별");
		
		cell = header.createCell(3);
		cell.setCellStyle(color);
		cell.setCellValue("지원일");
		
		cell = header.createCell(4);
		cell.setCellStyle(color);
		cell.setCellValue("합불여부");
		
		int length = applicantList.size();
		
		for(int i=0; i<length; i++) {
			Row content = sheet.createRow(6+i);

			content.createCell(0).setCellValue(applicantList.get(i).getUsers().getUsersNm());
			content.createCell(1).setCellValue(applicantList.get(i).getUsers().getUsersBir());
			content.createCell(2).setCellValue(applicantList.get(i).getUsers().getUsersGen());
			content.createCell(3).setCellValue(applicantList.get(i).getAprocDate());
			content.createCell(4).setCellValue(applicantList.get(i).getAprocPass());
		}
		
		
		
//		String fileName = UUID.randomUUID().toString();
//		File file = new File(applicantListFolder, fileName+".xlsx");
//		FileSystemResource resource = new FileSystemResource(file);
		try(
			ByteArrayOutputStream os = new ByteArrayOutputStream();
//			굳이 불필요한 파일로 저장하고싶지 않음 -> 인메모리? 랩메모리?
			BufferedOutputStream bout = new BufferedOutputStream(os);
		){
			// 컬럼 넓이 조절
			sheet.setColumnWidth(1,(sheet.getColumnWidth(1))+550);
			sheet.setColumnWidth(3,(sheet.getColumnWidth(3))+550);
			
			workbook.write(bout);
			bout.flush();
			
			byte[] array = os.toByteArray();
			ByteArrayResource resource = new ByteArrayResource(array);
			
			HttpHeaders headers = new HttpHeaders();

//			Content-Disposition: attachment; filename="filename.jpg"
			ContentDisposition disposition =  ContentDisposition.attachment()
					.filename("지원자목록.xlsx", Charset.defaultCharset())
					// 저장파일명, 한글이 포함되어있을 수 있기 때문에 charset 셋팅
					.build();
//					그릴게(inline) 아니라 다운로드해야함 -> attachment
			
			headers.setContentDisposition(disposition);	// 이거 안하면 다운로드가 아니라 그려버림
			headers.setContentLength(resource.contentLength());
//			파일을 저장할 수 있는 단위로 쪼개서 나감(청크?) ..> 몇개의 청크 -> 몇번의 다운로드? ==> contentLength
			
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			// 뭘 다운로드 받고있는지.. 다운로드할 때는 contentType 보통 한가지로 셋팅 - APPLICATION_OCTET_STREAM
				// -> 스트림을 그대로 카피해서 주면 됨 -> octet : 1byte : 바이트 스트림데이터를 받고있다를 의미
			
			return ResponseEntity.ok()	 // response의 line 셋팅 - 상태코드 200
						.headers(headers)	// response의 헤더 셋팅 - 필요하다면 여러 개 셋팅 - 하나의 객체로 모아놓음(headers)
						.body(resource);	// response의 바디 셋팅 -바디에 이미지파일 넣어줌
											// 스프링이 이미지파일을 스트링카피 떠서 응답보내줌
		}
		
		
	}
	
}