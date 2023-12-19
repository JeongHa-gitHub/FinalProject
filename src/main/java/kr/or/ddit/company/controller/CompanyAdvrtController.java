package kr.or.ddit.company.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.company.service.CompanyAdvrtService;
import kr.or.ddit.company.vo.CmpAdvrtPayVO;
import kr.or.ddit.company.vo.CompanyAdvrtVO;

@Controller
public class CompanyAdvrtController {
	
	@Inject
	private CompanyAdvrtService companyAdvrtService;
	
	//기업 광고 페이지로 이동
	@GetMapping("/cmpAdvrtView")
	public String cmpAdvrtView(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		if(id == null) {
			// 로그인이 안되어있을 때
			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("url", request.getContextPath()+"/");
			return "alert";
			}
		
			// 로그인이 되어있을 때
		return "company/promotion/companyAdvrt";
	}
	
	// 비동기로 db에 있는 기업 광고 목록 가져오기
	@GetMapping("/selectCmpAdvrtList")
	@ResponseBody
	public List<CompanyAdvrtVO> selectCmpAdvrtList() {
		List<CompanyAdvrtVO> cmpAdvrtList = companyAdvrtService.selectCmpAdvrtList();
		return cmpAdvrtList;
	}
	
	// 기업 광고 결제 db로 저장하기
	@PostMapping("/sendCmpAdPay")
	@ResponseBody
	public String sendCmpAdPay(@RequestBody CmpAdvrtPayVO cmpAdvrtPayVO) {
		try {
			companyAdvrtService.sendCmpAdPay(cmpAdvrtPayVO);
			return "success";
		} catch (Exception e) {
			return "fail";
		}
	}
	
	//오늘 날짜에 해당되는 기업 광고 가져오기
		@GetMapping("/selectCmpAdvrtIndex")
		@ResponseBody
		public List<CmpAdvrtPayVO>selectCmpAdvrtIndex() {
			List<CmpAdvrtPayVO> CmpAdvrtIndex = companyAdvrtService.selectCmpAdvrtIndex();
			return CmpAdvrtIndex;
		}
	
	/////////////////////////////////////////기업 마이페이지//////////////////////////////////////////
	
	//사용중인 기업 광고 불러오기
	@GetMapping("/validCmpAdvrtList")
	@ResponseBody
	public List<CmpAdvrtPayVO>validCmpAdvrtList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		List<CmpAdvrtPayVO> myCmpAdvrList = companyAdvrtService.validCmpAdvrtList(id);		
		return myCmpAdvrList;
	}
	
	//사용중인 기업 광고 테이블 목록 불러오기
	@GetMapping("/retriveMyCmpAdvrtList")
	@ResponseBody
	public List<CmpAdvrtPayVO>retriveMyCmpAdvrtList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		List<CmpAdvrtPayVO> myCmpAdvrList = companyAdvrtService.retriveMyCmpAdvrtList(id);		
		return myCmpAdvrList;
	}
}
