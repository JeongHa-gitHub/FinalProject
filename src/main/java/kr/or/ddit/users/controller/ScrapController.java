package kr.or.ddit.users.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.ScrapService;
import kr.or.ddit.users.vo.LikeCompanyVO;
import kr.or.ddit.users.vo.ScrapVO;
import kr.or.ddit.utils.ValidationUtils;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class ScrapController {
	
	@Inject
	private ScrapService service;
	
	@GetMapping("scrapList")
	public String scrapList(
		Model model
		, @ModelAttribute("simpleCondition") SearchVO simpleCondition
		, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		, @SessionAttribute("authId") String usersId
	) {
		log.info("아이디 : " + usersId);
		PaginationInfo<ScrapVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("usersId", usersId);
		
		paging.setVariousCondition(variousCondition);
		
		service.retrieveScrapList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
				
		return "users/member/scrapList";
	}
	
	@PostMapping("removeScrap")
	public String removeScrap(
			@ModelAttribute ScrapVO scrapVO
	        , Model model) {
		log.info("값 : " + scrapVO);
	    Map<String, List<String>> errors = new HashMap<>();
	    model.addAttribute(errors);

	    boolean valid = ValidationUtils.validate(scrapVO, errors, DeleteGroup.class);
	    String viewName = null;
	    if (valid) {
	        ServiceResult result = service.removeScrap(scrapVO);
	        switch (result) {
	            case OK:
	                model.addAttribute("message", "삭제");
	                viewName = "redirect:/user/scrapList";
	                break;
	            default:
	                model.addAttribute("message", "서버 오류, 쫌따 다시 해보셈.");
	                viewName = "redirect:/user/scrapList"; 
	                break;
	        }
	    } else {
	        viewName = "users/member/scrapList";
	    }
	    return viewName;
	}
	
}
