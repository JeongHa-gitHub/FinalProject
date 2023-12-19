package kr.or.ddit.admin.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.admin.service.PayMgmtService;
import kr.or.ddit.company.vo.CmpAdvrtPayVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class PayMgmtController {
	
	@Inject
	private PayMgmtService payMgmtService;
	
	//결제 관리 페이지로 이동
	@GetMapping("/payMgmtView")
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
		return "admin/paymgmt/PayMgmt";
	}
	
	//이미지 신청 리스트 불러오기
	@GetMapping("/selectImgAdFormList")
	@ResponseBody
	public List<ImgAdvrtPayVO> selectImgAdFormList(HttpServletRequest request) {
		List<ImgAdvrtPayVO> imgadFormList = payMgmtService.selectImgAdFormList();
		log.info("체킁 {}",imgadFormList);
		return imgadFormList;
	}
	
	//이미지 신청 반려 리스트 불러오기
	@GetMapping("/disagreeImgAdFormList")
	@ResponseBody
	public List<ImgAdvrtPayVO> disagreeImgAdFormList(HttpServletRequest request) {
		List<ImgAdvrtPayVO> imgadFormList = payMgmtService.disagreeImgAdFormList();
		log.info("체킁 {}",imgadFormList);
		return imgadFormList;
	}
	
	//이미지 신청 승인 리스트 불러오기
	@GetMapping("/agreeImgAdFormList")
	@ResponseBody
	public List<ImgAdvrtPayVO> agreeImgAdFormList(HttpServletRequest request) {
		List<ImgAdvrtPayVO> imgadFormList = payMgmtService.agreeImgAdFormList();
		log.info("체킁 {}",imgadFormList);
		return imgadFormList;
	}
	
	//이미지 신청 반려하기
	@PostMapping("/disagreeImgForm")
	@ResponseBody
	public String disagreeImgForm(@RequestBody ImgAdvrtPayVO imgAdvrtPayVO) {
		log.info("체킁 {}",imgAdvrtPayVO);
		payMgmtService.disagreeImgForm(imgAdvrtPayVO);
		return "success";
	}
	
	//이미지 신청 승인하기
	@PostMapping("/agreeImgForm")
	@ResponseBody
	public String agreeImgForm(@RequestBody ImgAdvrtPayVO imgAdvrtPayVO) {
		log.info("체킁 {}",imgAdvrtPayVO);
		payMgmtService.agreeImgForm(imgAdvrtPayVO);
		return "success";
	}
	
	//이미지 신청 대기하기
	@PostMapping("/holdImgForm")
	@ResponseBody
	public String holdImgForm(@RequestBody ImgAdvrtPayVO imgAdvrtPayVO) {
		log.info("체킁 {}",imgAdvrtPayVO);
		payMgmtService.holdImgForm(imgAdvrtPayVO);
		return "success";
	}
	
	//////////////////////////////////이미지 광고 심사////////////////////////////////////////
	
	
	//이용권 결제 내역 불러오기
	@GetMapping("/selectPeriodTicketPay")
	@ResponseBody
	public List<PointPayVO> selectPeriodTicketPay(HttpServletRequest request) {
		List<PointPayVO> TicketPayList = payMgmtService.selectPeriodTicketPay();
		log.info("체킁 {}",TicketPayList);
		return TicketPayList;
	}
	
	//이미지 광고 결제 내역 불러오기
	@GetMapping("/selectImgAdPay")
	@ResponseBody
	public List<ImgAdvrtPayVO> selectImgAdPay(HttpServletRequest request) {
		List<ImgAdvrtPayVO> imgAdPayList = payMgmtService.selectImgAdPay();
		log.info("체킁 {}",imgAdPayList);
		return imgAdPayList;
	}
	
	//기업 광고 결제 내역 불러오기
	@GetMapping("/selectcmpAdPay")
	@ResponseBody
	public List<CmpAdvrtPayVO> selectcmpAdPay(HttpServletRequest request) {
		List<CmpAdvrtPayVO> cmpAdPayList = payMgmtService.selectcmpAdPay();
		log.info("체킁 {}",cmpAdPayList);
		return cmpAdPayList;
	}



}
