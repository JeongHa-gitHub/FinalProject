
package kr.or.ddit.users.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.NoticeService;
import kr.or.ddit.users.vo.NoticeVO;

@Controller
@RequestMapping("/member")
public class NoticeController {
	@Inject
	private NoticeService service;
	
	@GetMapping("noticeList")
	public String noticeList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
			){
		PaginationInfo<NoticeVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveNoticeList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "users/notice/usersNoticeList";
	}
	
	@GetMapping("noticeDetail/{noticeNo}")
	public String noticeDetail(
			@PathVariable String noticeNo
			, Model model
		) {
			NoticeVO notice= service.retrieveNotice(noticeNo);
			model.addAttribute("notice", notice);
			
			return "users/notice/usersNoticeDetail";
	}
	
}
