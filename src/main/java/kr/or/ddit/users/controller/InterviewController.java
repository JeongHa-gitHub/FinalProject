package kr.or.ddit.users.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.InterviewService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class InterviewController {

	@Inject
	private InterviewService service;
	
	@GetMapping("interviewScheduleList")
	public String interviewScheduleList(
		Model model
		, @ModelAttribute("simpleCondition") SearchVO simpleCondition
		, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		, @SessionAttribute("authId") String usersId	
	) {
		log.info("아이디 : " + usersId);
		PaginationInfo<InterviewSchdVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("usersId", usersId);
		
		paging.setVariousCondition(variousCondition);
	
		service.retrieveInterviewSchdList(paging);
	
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
				
		return "users/member/interviewSchedule";
	}
}
