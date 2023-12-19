package kr.or.ddit.company.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.service.ImageAdvrtService;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ImageAdvrtController {

	@Inject
	private ImageAdvrtService imageAdvrtService;

	@Value("#{appInfo.recruitFiles}")
	private Resource saveFolder;
	
	
	//이미지 광고 페이지로 이동
	@GetMapping("/imageAdvrtView")
	public String imageAdvrtView(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		if(id == null) {
			// 로그인이 안되어있을 때
			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("url", request.getContextPath()+"/");
			return "alert";
			}
		
			// 로그인이 되어있을 때
		return "company/promotion/imageAdvrt";
	}
	
	//이미지 광고 마이페이지로 이동
	@GetMapping("/companyMyPromotionView")
	public String companyMyPromotionView(
			Model model
			, @SessionAttribute("authId") String memId
			) {
		//아이디 : kf001
		log.info("아이디 : " + memId);
		MemberVO member = imageAdvrtService.retrieveCompany(memId);
		log.info("companyMemInfo->member : " + member);
		model.addAttribute("member", member);
		
		// 로그인이 되어있을 때
		return "company/companymypage/companyMyPromotion";
	}
	
	
	//이미지 광고 심사 페이지로 이동
	@GetMapping("/imgAdPayMgmtView")
	public String imgAdPayMgmtView(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		if(id == null) {
			// 로그인이 안되어있을 때
			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("url", request.getContextPath()+"/");
			return "alert";
		}
		
		// 로그인이 되어있을 때
		return "admin/paymgmt/imgAdPayMgmt";
	}
	
	
	
	
	// 비동기로 db에 있는 이미지 광고 목록 가져오기
	@GetMapping("/selectImageAdvrtList")
	@ResponseBody
	public List<ImageAdvrtVO> selectImageAdvrtList() {
		List<ImageAdvrtVO> ImageAdvrtList = imageAdvrtService.selectImageAdvrtList();
		return ImageAdvrtList;
	}

	// 비동기로 db에 있는 배너 광고 목록 가져오기
	@GetMapping("/selectBannerAdvrtList")
	@ResponseBody
	public List<ImageAdvrtVO> selectBannerAdvrtList() {
		List<ImageAdvrtVO> ImageAdvrtList = imageAdvrtService.selectBannerAdvrtList();
		return ImageAdvrtList;
	}

	// 비동기로 사업자 등록번호 가져오기
	@PostMapping("/selectCmpPass")
	public String selectCmpPass(Model model, @RequestParam("id") String authId) {
		CompanyVO cmpPass = imageAdvrtService.selectCmpPass(authId);
		model.addAttribute("cmpPass", cmpPass.getCompanyNum());
		return "jsonView";
	}

	// 이미지광고 결제 db로 저장하기
	@PostMapping(value = "/sendImgAdPay", consumes = "multipart/form-data")
	public String sendImgAdPay(
			
			MultipartFile[] uploadFile, 
			@RequestParam("imgadNo") String imgadNo,
			@RequestParam("authId") String companyId,
			@RequestParam("PaymentMethod") String pmtMethdno,
			@RequestParam("selectedDateInput") String imgadSdate,
			@RequestParam("disabledDateInput") String imgadEdate,
			@RequestParam("Final_imgadPrice") Integer imgadBprice,
			@RequestParam("imgadTitle") String imgadTitle,
			@RequestParam("imgadContent") String imgadContent,
			@RequestParam("imgadLoc") String imgadLoc
			
			) throws IOException {
//		String ImgAdForm = "D:\\finalprojectDoc\\uploadFiles\\ImgAdForm";
		ImgAdvrtPayVO imgAdvrtPayVO = new ImgAdvrtPayVO();
		
		for (MultipartFile multipartFile : uploadFile) {
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			String uuid = UUID.randomUUID().toString();
			uploadFileName  = uuid + "_" + uploadFileName;
			
			File saveFileTemp = saveFolder.getFile();
			File saveFile = new File(saveFileTemp+"/ImgAdForm",uploadFileName);
			
			
//			
//			/* 파일 위치, 파일 이름을 합친 File 객체 */
//			File saveFile = new File(ImgAdForm, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			imgAdvrtPayVO.setImgadNo(imgadNo);
			imgAdvrtPayVO.setCompanyId(companyId);
			imgAdvrtPayVO.setPmtMethdno(pmtMethdno);
			imgAdvrtPayVO.setImgadSdate(imgadSdate);
			imgAdvrtPayVO.setImgadEdate(imgadEdate);
			imgAdvrtPayVO.setImgadBprice(imgadBprice);
			imgAdvrtPayVO.setImgadTitle(imgadTitle);
			imgAdvrtPayVO.setImgadContent(imgadContent);
			imgAdvrtPayVO.setImgadFile(uploadFileName);
			imgAdvrtPayVO.setImgadLoc(imgadLoc);
		}
		imageAdvrtService.sendImgAdPay(imgAdvrtPayVO);
		return "jsonView";
	}
	
	//오늘 날짜에 해당되는 이미지 광고 가져오기
	@GetMapping("/selectImgAdvrtIndex")
	@ResponseBody
	public List<ImgAdvrtPayVO>selectImgAdvrtIndex() {
		List<ImgAdvrtPayVO> ImageAdvrtIndex = imageAdvrtService.selectImgAdvrtIndex();
		return ImageAdvrtIndex;
	}
		
	//오늘 날짜에 해당되는 배너 광고 가져오기
	@GetMapping("/selectBannerAdvrtIndex")
	@ResponseBody
	public List<ImgAdvrtPayVO>selectBannerAdvrtIndex() {
		List<ImgAdvrtPayVO> BannerAdvrtIndex = imageAdvrtService.selectBannerAdvrtIndex();
		return BannerAdvrtIndex;
	}
	
	//기업 마이페이지의 이미지 광고 목록 가져오기
	@GetMapping("/selectMyImgAdvrList")
	@ResponseBody
	public List<ImgAdvrtPayVO>selectMyImgAdvrList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		List<ImgAdvrtPayVO> ImageAdvrtIndex = imageAdvrtService.selectMyImgAdvrList(id);
		return ImageAdvrtIndex;
	}
	
	//사용중인 이미지 광고 불러오기
	@GetMapping("/validImgAdvrtList")
	@ResponseBody
	public List<ImgAdvrtPayVO>validImgAdvrtList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		List<ImgAdvrtPayVO> ImageAdvrtIndex = imageAdvrtService.validImgAdvrtList(id);
		return ImageAdvrtIndex;
	}
}
