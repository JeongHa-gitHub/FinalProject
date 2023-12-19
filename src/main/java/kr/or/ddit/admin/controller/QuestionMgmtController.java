
package kr.or.ddit.admin.controller;

import javax.inject.Inject;

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
import kr.or.ddit.admin.service.QuestionMgmtService;
import kr.or.ddit.users.vo.QnAVO;

@Controller
@RequestMapping("/questionMgmt")
public class QuestionMgmtController {
	@Inject
	private QuestionMgmtService service;
	
	@GetMapping
	public String questionList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<QnAVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveQuestionList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/notice/questionMgmt";
	}
	
	@GetMapping("detail/{qstnNo}")
	public String questionDetail(
			@PathVariable String qstnNo
			, Model model
		) {
			QnAVO question= service.retrieveQuestion(qstnNo);
			model.addAttribute("question", question);
			
			return "admin/notice/noticeMgmtDetail";
	}
//	
}
