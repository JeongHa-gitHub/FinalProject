package kr.or.ddit.users.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;


import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.ComInfoReviewService;
import kr.or.ddit.users.service.ComInfoService;

import kr.or.ddit.users.vo.InterviewReviewVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/users")
public class ComInfoReviewController {
	
	@Inject
	private ComInfoReviewService service;
	
	@Inject ComInfoService cominfoService;
	
	@GetMapping("comReviewList/{companyId}")
	public String comReviewList(
			Model model
			, HttpServletRequest request
			, @ModelAttribute("detailCondition") InterviewReviewVO detailCondition
			, @RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
			, @SessionAttribute("authId") String usersId
			, @PathVariable("companyId") String companyId
	) {
		// 사용자가 기업인지, 사용자인지 구분하기
		String memberType = service.retrieveMemberType(usersId);
		
		// 사용자에 해당하는 유효한 이용권 검색하기
		List<PointPayVO> ValidTicketList = service.retrieveValidTicketList(usersId);
		log.info("ValidTicketList{}",ValidTicketList);
		
		// 유효한 이용권이 존재하지 않을떄
		if ((ValidTicketList == null || ValidTicketList.isEmpty()) && memberType.equals("H02"))  {
				request.setAttribute("msg", "유효한 이용권이 존재하지 않습니다. 이용권을 구매해주세요.");
				request.setAttribute("url", request.getContextPath()+"/users/companyDetail/"+companyId);
				return "alert";
		}else {
			log.info("아이디 : " + usersId);
			PaginationInfo<InterviewReviewVO> paging = new PaginationInfo<>();
			paging.setDetailCondition(detailCondition); // 키워드 검색 조건
			paging.setCurrentPage(currentPage);
			Map<String, Object> variousCondition = new HashMap<>();
			variousCondition.put("usersId", usersId);
			variousCondition.put("companyId", companyId);

			paging.setVariousCondition(variousCondition);
			
			service.retrieveIntrReviewList(paging);
			
			
			ComInfoVO cominfo = cominfoService.retrieveCominfo(companyId);
			
			paging.setRenderer(new BootstrapPaginationRenderer());
			model.addAttribute("paging", paging);
			model.addAttribute("cominfo", cominfo);
			
			
			return "users/cominfo/companyReview";
		}
	}
	
	@GetMapping("companyDetail/{companyId}/{intrevNo}")
	public String comReviewDetail(
			@PathVariable("intrevNo") String intrevNo
			, @PathVariable("companyId") String companyId
			, Model model) {
		
		InterviewReviewVO intr = service.retrieveIntrReviewDetail(intrevNo);
		ComInfoVO cominfo = cominfoService.retrieveCominfo(companyId);
		model.addAttribute("intr", intr);
		model.addAttribute("cominfo", cominfo);
		
		return "jsonView";
	}

}
