
package kr.or.ddit.admin.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.or.ddit.admin.service.InterviewMgmtService;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureOuterVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.vo.InterviewReviewVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/intvwRevMgmt")
public class interviewReviewController {
	@Inject
	private InterviewMgmtService service;
	
	@GetMapping
	public String interviewReviewList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<InterviewReviewVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveIntrvwList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/interview/intvwRevMgmt";
	}
	
	
	// 상세
	@GetMapping("/interviewDetail/{intrevNo}")
	public String interviewDetail(
			@PathVariable String intrevNo
			, Model model
		) {
			InterviewReviewVO intrevInfo= service.retrieveIntrvw(intrevNo);
			model.addAttribute("intrevInfo", intrevInfo);
			return "jsonView";
	}
	
	/* 승인여부 수정 */
	@PostMapping("passStatus")
	@ResponseBody
	public String passStatusUpdate(@RequestBody InterviewReviewVO interviewReviewVO) {
		//interviewReviewVO : {"intrevNo":"INTREV0001","intervApproval":"unconfirmed","usersId":"az001"}
		log.info("passStatusUpdate->interviewReviewVO : " + interviewReviewVO);
		ServiceResult result = service.modifyPassStatus(interviewReviewVO);
		
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

}
