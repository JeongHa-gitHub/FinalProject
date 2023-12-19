
package kr.or.ddit.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.admin.service.MemberMgmtService;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.utils.ValidationUtils;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.extern.slf4j.Slf4j;

/**
 *   목록 : /memberMgmt
 *   탈퇴 : /memberDelete
 *
 */

@Slf4j
@Controller
@RequestMapping("/memberMgmt")
public class MemberMgmtController {
	@Inject
	private MemberMgmtService service;
	
	@GetMapping
	public String memberList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<MemberVO> paging = new PaginationInfo<>();
		Map<String, Object> variousCondition = new HashMap<String, Object>();
		variousCondition.put("memDivision", "H02");
		paging.setVariousCondition(variousCondition);
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveMemberList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/member/memberMgmt";
	}
	
	
	// 탈퇴
		@PostMapping("memberDelete")
		public String usersInfoDelete(
		          MemberVO member
		          , RedirectAttributes redirectAttributes
		        ) {

		    String viewName = null;

	        ServiceResult result = service.removeMember(member);
	        switch (result) {
	            case OK:
	            	redirectAttributes.addFlashAttribute("message", "탈퇴 완료되었습니다."); 
	                viewName = "redirect:/memberMgmt";
	                break;
	            default:
	                viewName = "redirect:/memberMgmt";
	                redirectAttributes.addFlashAttribute("message", "서버 오류"); 
	                break;
	        }
		    return viewName;
		}
}
