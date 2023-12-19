
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
import kr.or.ddit.admin.service.RecruitMgmtService;
import kr.or.ddit.company.vo.RecruitVO;

@Controller
@RequestMapping("/recruitMgmt")
public class RecruitMgmtController {
	@Inject
	private RecruitMgmtService service;
	
	@GetMapping
	public String recruitList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<RecruitVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveRecruitList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/companyInfo/recruitMgmt";
	}
	
	// 상세
	@GetMapping("/recruitDetail/{rcrtNo}")
	public String recruitDetail(
			@PathVariable String rcrtNo
			, Model model
		) {
			RecruitVO recruit= service.retrieveRecruit(rcrtNo);
			model.addAttribute("recruit", recruit);
			return "jsonView";
	}
//	
}
