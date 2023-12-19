
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.admin.service.FreeBoardMgmtService;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.vo.FrBoardVO;

@Controller
@RequestMapping("/freeBoardMgmt")
public class freeBoardMgmtController {
   @Inject
   private FreeBoardMgmtService service;
//   
//   @GetMapping("ListUI")
//   public String freeBoardListUI() {
//      return "admin/freeboard/freeBoardMgmt";
//   }
//   
   @GetMapping()
   public String freeBoardList(
         Model model
         , @ModelAttribute("simpleCondition") SearchVO simpleCondition
         , @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
      ){
      PaginationInfo<FrBoardVO> paging = new PaginationInfo<>();
      paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
      paging.setCurrentPage(currentPage);

      service.retrieveFreeBoardList(paging);
      
      paging.setRenderer(new BootstrapPaginationRenderer());
      model.addAttribute("paging", paging);
      
      return "admin/freeboard/freeBoardMgmt";
   }
   
   
   // 상세
   @GetMapping("/freeboardDetail/{frbNo}")
   public String freeboardDetail(
         @PathVariable String frbNo
         , Model model
      ) {
         FrBoardVO freeBoardInfo= service.retrieveFreeBoard(frbNo);
         model.addAttribute("freeBoardInfo", freeBoardInfo);
         return "jsonView";
   }
   
   // 글 삭제
	@PostMapping("boardDelete")
	public String boardDelete(
			FrBoardVO board
	          , RedirectAttributes redirectAttributes
	        ) {

	    String viewName = null;

        ServiceResult result = service.removeBoard(board);
        switch (result) {
            case OK:
            	redirectAttributes.addFlashAttribute("message", "삭제 완료되었습니다."); 
                viewName = "redirect:/freeBoardMgmt";
                break;
            default:
                viewName = "redirect:/freeBoardMgmt";
                redirectAttributes.addFlashAttribute("message", "서버 오류"); 
                break;
        }
	    return viewName;
	}
}