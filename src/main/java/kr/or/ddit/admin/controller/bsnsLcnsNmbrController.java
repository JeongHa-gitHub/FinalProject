
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

import kr.or.ddit.admin.service.BsnsLcnsNmbrService;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureOuterVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/bsnsLcnsNmbr")
public class bsnsLcnsNmbrController {
	@Inject
	private BsnsLcnsNmbrService service;
	
	@GetMapping
	public String companyList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<CompanyVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveCompanyList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/companyInfo/bsnsLcnsNmbr";
	}
	
	
	// 상세
	@GetMapping("/bsnsDetail/{companyId}")
	public String bsnsDetail(
			@PathVariable String companyId
			, Model model
		) {
			CompanyVO bsnsInfo= service.retrieveBsns(companyId);
			model.addAttribute("bsnsInfo", bsnsInfo);
			return "jsonView";
	}
	
	/* 합불여부 수정 */
	@PostMapping("passStatus")
	@ResponseBody
	public String passStatusUpdate(@RequestBody CompanyVO companyVO) {
		ServiceResult result = service.modifyPassStatus(companyVO);
		
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
