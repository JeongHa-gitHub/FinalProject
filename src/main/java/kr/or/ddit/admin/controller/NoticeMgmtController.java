
package kr.or.ddit.admin.controller;

import java.security.Principal;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.admin.service.NoticeMgmtService;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.users.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/noticeMgmt")
public class NoticeMgmtController {
	@Inject
	private NoticeMgmtService service;
	
	@GetMapping
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
		
		return "admin/notice/noticeMgmt";
	}


	// 삭제
	@PostMapping("noticeDelete")
	public String noticeInfoDelete(
				NoticeVO notice
	          , RedirectAttributes redirectAttributes
	        ) {

	    String viewName = null;

        ServiceResult result = service.removeNotice(notice);
        switch (result) {
            case OK:
            	redirectAttributes.addFlashAttribute("message", "삭제 완료되었습니다."); 
                viewName = "redirect:/noticeMgmt";
                break;
            default:
                viewName = "redirect:/noticeMgmt";
                redirectAttributes.addFlashAttribute("message", "서버 오류"); 
                break;
        }
	    return viewName;
	}
	
	// 작성
	@PostMapping("/createPost")
	public String createPost(NoticeVO noticeVO, Principal principal) {
		log.info("noticeVO : " + noticeVO);
		
		int result = this.service.createPost(noticeVO);
		log.info("result : " + result);
	
		return "redirect:/member/noticeDetail/"+noticeVO.getNoticeNo();
	}
	
	
}
