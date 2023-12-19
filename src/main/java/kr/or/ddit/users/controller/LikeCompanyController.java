package kr.or.ddit.users.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.LikeCompanyService;
import kr.or.ddit.users.vo.LikeCompanyVO;
import kr.or.ddit.utils.ValidationUtils;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class LikeCompanyController {

	@Inject
	private LikeCompanyService service;

	@GetMapping("likeCompanyList")
	public String likeCompanyList(Model model, @ModelAttribute("simpleCondition") SearchVO simpleCondition,
			@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage,
			@SessionAttribute("authId") String usersId) {
		log.info("아이디 : " + usersId);
		PaginationInfo<LikeCompanyVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("usersId", usersId);

		paging.setVariousCondition(variousCondition);

		service.retrieveLiekCompanyList(paging);

		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);

		return "users/member/likeCompanyList";
	}

	@PostMapping("removeLikeCompany")
	public String removeLikeCompany(
	       @ModelAttribute LikeCompanyVO likeCompanyVO
	        , Model model) {
	    Map<String, List<String>> errors = new HashMap<>();
	    model.addAttribute(errors);

	    boolean valid = ValidationUtils.validate(likeCompanyVO, errors, DeleteGroup.class);
	    String viewName = null;
	    if (valid) {
	        ServiceResult result = service.removeLikeCompany(likeCompanyVO);
	        switch (result) {
	            case OK:
	                model.addAttribute("message", "삭제");
	                viewName = "redirect:/user/likeCompanyList"; 
	                break;
	            default:
	                model.addAttribute("message", "서버 오류, 쫌따 다시 해보셈.");
	                viewName = "redirect:/user/likeCompanyList"; 
	                break;
	        }
	    } else {
	        viewName = "users/member/likeCompanyList";
	    }
	    return viewName;
	}
}
