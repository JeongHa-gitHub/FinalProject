package kr.or.ddit.users.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.ApplyService;
import kr.or.ddit.users.service.ResumeService;
import kr.or.ddit.users.vo.CareerVO;
import kr.or.ddit.users.vo.CertificateVO;
import kr.or.ddit.users.vo.CoverLetterVO;
import kr.or.ddit.users.vo.EducationVO;
import kr.or.ddit.users.vo.IntrnActvtVO;
import kr.or.ddit.users.vo.LanguageVO;
import kr.or.ddit.users.vo.OverseasStudyVO;
import kr.or.ddit.users.vo.ResumeAttatchVO;
import kr.or.ddit.users.vo.ResumeFileInfoVO;
import kr.or.ddit.users.vo.ResumeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
//@RequestMapping("/user")
public class ApplyController {
	
	@Inject
	private ApplyService service;
	
	@Inject
	private ResumeService resumeService;  //소원
	
	//소원
	@Value("#{appInfo.recruitFiles}")
	private String saveFolderStr;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource saveFolder;
	
	@PostConstruct
	public void init() {
		log.info("================================================={}",saveFolder);
	}
	
	//주연
	@GetMapping("/user/applyList")
	public String applyList(
		Model model
		, @ModelAttribute("simpleCondition") SearchVO simpleCondition
		, @RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
		, @SessionAttribute("authId") String usersId
	) {	
		log.info("아이디 : " + usersId);
		PaginationInfo<ApplyVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("usersId", usersId);

		paging.setVariousCondition(variousCondition);

		service.retrieveApplyList(paging);

		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);

		return "users/member/applicationList";
	}
	
	
	//소원
	
	//중복지원 막기
		@ResponseBody
		@GetMapping("/apply/{reNo}/applyCheck")
		public String applyCheck(@PathVariable("reNo") String reNo, @SessionAttribute("authId")String usersId, @SessionAttribute("authDivision")String usersDivision) {
			
			ApplyVO applyVo = new  ApplyVO();
			applyVo.setUsersId(usersId); //세션 아이디 
			applyVo.setRcrtNo(reNo);
			log.info("채용공고 번호{}",reNo);
			ServiceResult result = service.selectCheckApply(applyVo);
			log.info("채용공고 result:{}",result);
			log.info("채용공고 authDivision:{}",usersDivision);

			String msg = null;
			if(result == ServiceResult.OK) {
				//지원 안했을 경우 
				if(usersDivision.equals("H03")) {
					msg = "NG";
				}else {
					
					msg = "OK";
				}
			}else {
				msg = "NG";
			}
			return msg;
		}
// 이력서 리스트
	@ResponseBody
	@GetMapping("/apply/resumeList")
	public List<ResumeVO> resumeList(
			@SessionAttribute("authId")String usersId
			){
		
		List<ResumeVO> list = service.retrieveResumeList(usersId);
		return list;
	}
	
	//1차 입사지원 버튼
	@ResponseBody
	@PostMapping("/apply/applyInsert")
	public String resumeInsert(@RequestBody ApplyVO applyVo, @SessionAttribute("authId")String usersId) throws Exception {
		
	
		applyVo.setUsersId(usersId); //사용자 아이디 하드코딩
		applyVo.setRcrtNo(applyVo.getRcrtNo()); //채용공고번호 
		
		log.info("applyVo{}",applyVo);
		
		if (applyVo.getAprocedure() == null) {
		    applyVo.setAprocedure(new AProcedureVO()); 
		}
		
		
		applyVo.getAprocedure().setRcrtNo(applyVo.getRcrtNo()); // 채용공고 번호
		applyVo.getAprocedure().setRprocOrder(1); //전형 순서

		String msg = "NG";
		ServiceResult result = service.createApply(applyVo);
		
		// 중복 지원 막기!!!!!!!!
		if(result == ServiceResult.OK) {
			applyVo.getAprocedure().setAplNo(applyVo.getAplNo() );
			msg = "OK";
		}
		
		return msg;
	}
	
	    // 이력서 이미지 변환
		@ResponseBody  
		@PostMapping("/apply/resumeImage")
		public String resumeImageUpload(ResumeFileInfoVO resumeFileInfoVO,HttpServletRequest request) throws Exception {

//			String saveFolder = "d:/finalprojectDoc/uploadFiles/resume/";  // 확인하기 좋게 일단 하드코딩 appinfo!!!!!!!
//			String saveFolder = "/recruit/resume";  // 확인하기 좋게 일단 하드코딩 appinfo!!!!!!!
			log.info("파일확인{}",resumeFileInfoVO);
			log.info("파일확인{}",resumeFileInfoVO.getUpload().getOriginalFilename());
			log.info("파일확인{}",resumeFileInfoVO.getUpload().getSize());
			
			MultipartFile upload = resumeFileInfoVO.getUpload();
			
			ResumeAttatchVO vo = null;
			if(!upload.isEmpty()) {
				String saveName = "resume" + UUID.randomUUID().toString() + ".png";
				//File saveFolder = resumeImages.getFile();
//				Resource saveFileRes =  saveFolder.createRelative(saveName);
				File saveFileTemp =  new File(saveFolder.getFile()+"/resume");
//				File saveFile = new File(saveFolder, saveName);
//				File saveFile = saveFileRes.getFile();
				
				if(!saveFileTemp.exists()) {
					saveFileTemp.mkdirs();
				}
				
				File saveFile = new File(saveFileTemp,saveName);

				upload.transferTo(saveFile); //업로드 완료
				
				log.info("경로확인:" + saveFolder + "/" + saveName);
				
				vo = new ResumeAttatchVO(upload);
				
				log.info("체크1{}",vo);
				vo.setResattSavename(saveName);  //저장명
				vo.setResattFilesize((int) upload.getSize()); //파일 사이즈
				vo.setResattMime(upload.getContentType()); // 파일 MIME
				vo.setResattOriginalnm("이력서"); 
				vo.setResumeTitle(resumeFileInfoVO.getSwName()); //일단 하드코딩!!!!!!!!! 이력서 제목
				
				service.createResumeAttatch(vo);
				log.info("체크2{}",vo); // resattno
			}
			return vo.getResattNo();  //웹 경로 문자열로 리턴
		}
		
		//이력서 html 
		@GetMapping("/apply/{resumeNo}")
		@ResponseBody
		public Map<String,Object> resumeDetail(@PathVariable String resumeNo) {
			
			//리스트 담을 map
			Map<String,Object>response = new HashMap<String, Object>();
			
			ResumeVO resume = resumeService.retrieveResume(resumeNo);
			
			List<EducationVO> eduList = resumeService.retrieveEduInfo(resumeNo);
			List<CertificateVO> cerList = resumeService.retrieveCerInfo(resumeNo);
			List<CoverLetterVO> covList = resumeService.retrieveCovList(resumeNo);
			List<LanguageVO> lagList = resumeService.retrieveLagList(resumeNo);
			List<IntrnActvtVO> inaList = resumeService.retrieveInaList(resumeNo);
			List<OverseasStudyVO> ostList = resumeService.retrieveOstList(resumeNo);
			List<CareerVO> carList = resumeService.retrieveCarList(resumeNo);
			
			response.put("resume", resume);
			response.put("eduList", eduList);
			response.put("cerList", cerList);
			response.put("covList", covList);
			response.put("lagList", lagList);
			response.put("inaList", inaList);
			response.put("ostList", ostList);
			response.put("carList", carList);
			log.info("이력서{}",response);
		
			return response;
			
		}
	
}

