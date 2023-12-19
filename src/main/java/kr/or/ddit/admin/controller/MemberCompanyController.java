
package kr.or.ddit.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.admin.service.MemberCompanyService;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;

/**
 *   목록 : /memberCmpny
 *   탈퇴 : /memberCmpnyDelete
 *
 */

@Controller
@RequestMapping("/memberCmpny")
public class MemberCompanyController {
	@Inject
	private MemberCompanyService service;
	
	@GetMapping
	public String memberList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<MemberVO> paging = new PaginationInfo<>();
		Map<String, Object> variousCondition = new HashMap<String, Object>();
		variousCondition.put("memDivision", "H03");
		paging.setVariousCondition(variousCondition);
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		paging.setTotalRecord(service.countMembers(paging));
		service.retrieveMemberList(paging);
	
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/member/memberCmpny";
	}
	
	// 상세
	@GetMapping("/companyDetail/{companyId}")
	public String memberDetail(
			@PathVariable String companyId
			, Model model
		) {
			ComInfoVO comInfo= service.retrieveMember(companyId);
			model.addAttribute("comInfo", comInfo);
			return "jsonView";
	}

	// 탈퇴
	@PostMapping("memberCmpnyDelete")
	public String usersInfoDelete(
	          MemberVO member
	        , RedirectAttributes redirectAttributes
	        ) {

	    String viewName = null;

        ServiceResult result = service.removeMember(member);
        switch (result) {
            case OK:
            	redirectAttributes.addFlashAttribute("message", "탈퇴 완료되었습니다."); 
                viewName = "redirect:/memberCmpny";
                break;
            default:
                viewName = "redirect:/memberCmpny";
                redirectAttributes.addFlashAttribute("message", "서버 오류"); 
                break;
        }
	    return viewName;
	}	
}
