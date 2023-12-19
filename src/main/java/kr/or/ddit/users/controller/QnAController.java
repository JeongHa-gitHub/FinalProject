package kr.or.ddit.users.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.admin.vo.QnAReplyVO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.AuthenticateService;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.QnAService;
import kr.or.ddit.users.vo.NoticeVO;
import kr.or.ddit.users.vo.QnAVO;
import kr.or.ddit.utils.ValidationUtils;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class QnAController {
	
	@Inject
	private QnAService service;
	
	@GetMapping("qnaList")
	public String qnaList(
		Model model
		, @ModelAttribute("simpleCondition") SearchVO simpleCondition
		, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		, @SessionAttribute("authId") String memId
		) {
		log.info("아이디 : " + memId);
		PaginationInfo<QnAVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("memId", memId);
		
		paging.setVariousCondition(variousCondition);
		
		service.retrieveQnAList(paging);;
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
				
		return "users/notice/usersQuestionList";
	}
	
	@GetMapping("qna/{qstnNo}")
	private String qnaView(@PathVariable String qstnNo, Model model) {
		log.info("글번호 : " + qstnNo);
		QnAVO qna = service.retrieveQnA(qstnNo);
		QnAReplyVO reply = service.retrieveQnAReply(qstnNo);
		
		model.addAttribute("qna", qna);
		model.addAttribute("reply", reply);
		return "users/notice/usersQuestionDetail";
	}
	
	@PostMapping("qna/remove")
	public String removeQnA(
			@PathVariable String qstnNo
			, @SessionAttribute("authId") String memId
			, RedirectAttributes redirectAttributes
			) {
			String viewName = null;
	
	        ServiceResult result = service.removeQnA(qstnNo);
	        switch (result) {
	            case OK:
	            	redirectAttributes.addFlashAttribute("message", "삭제완료"); 
	                viewName = "redirect:/member/qnaList";
	                break;
	            default:
	                viewName = "redirect:/member/{qstnNo}";
	                redirectAttributes.addFlashAttribute("message", "서버 오류"); 
	                break;
	        }
		    return viewName;
	}
	
	//1:1문의 등록폼
	@GetMapping("/qna/create")
	public String create() {
		//forwarding
		return "users/notice/usersQuestionForm";
	}
	
	//1:1문의 등록폼
	@PostMapping("/qna/createQnaPost")
	public String createQnaPost(@SessionAttribute("authId") String memId,
			QnAVO qnaVO) {
		qnaVO.setMemId(memId);
//		QnAVO(rnum=0, qstnNo=null, memId=az001, qstnTitle=궁금, qstnContent=합니다, qstnDate=null, qstnReply=null, reply=null, qnaFile=null, attatchList=null),memId : az001
		log.info("qnaVO : " + qnaVO + ",memId : " + memId);
		
		int result = this.service.createQnaPost(qnaVO);
		log.info("result : " + result);
		
		//redirect
		return "redirect:/member/qnaList";
	}
	
	//1:1문의 수정
	///member/qna/updateQnaPost
	@PostMapping("/qna/updateQnaPost")
	public String updateQnaPost(@SessionAttribute("authId") String memId,
			QnAVO qnaVO) {
		qnaVO.setMemId(memId);
//		QnAVO(rnum=0, qstnNo=QNA0018, memId=az001, qstnTitle=궁금, qstnContent=합니다, qstnDate=null, qstnReply=null, reply=null, qnaFile=null, attatchList=null),memId : az001
		log.info("qnaVO : " + qnaVO + ",memId : " + memId);
		
		int result = this.service.updateQnaPost(qnaVO);
		log.info("result : " + result);
		
		//redirect
		return "redirect:/member/qna/"+qnaVO.getQstnNo();
	}
	
	//1:1문의 삭제
	///member/qna/deleteQnaPost
	@PostMapping("/qna/deleteQnaPost")
	public String deleteQnaPost(@SessionAttribute("authId") String memId,
			QnAVO qnaVO) {
		qnaVO.setMemId(memId);
//		QnAVO(rnum=0, qstnNo=QNA0018, memId=az001, qstnTitle=궁금, qstnContent=합니다, qstnDate=null, qstnReply=null, reply=null, qnaFile=null, attatchList=null),memId : az001
		log.info("qnaVO : " + qnaVO + ",memId : " + memId);
		
		int result = this.service.deleteQnaPost(qnaVO);
		log.info("result : " + result);
		
		//redirect
		return "redirect:/member/qnaList";
	}
	
	// 댓글 등록
	@PostMapping("/createPost")
	public String createPost(QnAReplyVO qnAReplyVO, Principal principal) {
		log.info("qnAReplyVO : " + qnAReplyVO);
		
		int result = this.service.createPost(qnAReplyVO);
		log.info("result : " + result);
	
		return "redirect:/member/qna/"+qnAReplyVO.getQstnNo();
	}
	

}
