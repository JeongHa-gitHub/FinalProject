package kr.or.ddit.users.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.FrBoardService;
import kr.or.ddit.users.vo.CommentVO;
import kr.or.ddit.users.vo.FrBoardVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/frBoardList")
public class FrBoardController {
	@Inject
	private FrBoardService service;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource saveFolder;
	
	@GetMapping
	public String frBoardList(
		Model model
		, @ModelAttribute("simpleCondition") SearchVO simpleCondition
		, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		, @SessionAttribute("authId") String usersId
			) {
		log.info("아이디 : " + usersId);
		PaginationInfo<FrBoardVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		
		//로그인한 아이디의 memberVO
		MemberVO memberVO = this.service.getMemberVO(usersId);
		log.info("memberVO : " + memberVO);
		
		//게시판 목록
		service.retrieveFrBoardList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		model.addAttribute("memberVO",memberVO);
		
		return "users/board/boardList";
		
	}
	
	//자유게시판 글작성 폼
	/*
	 요청URI : /frBoardList/create
	 파라미터 : 
	 요청방식 : get
	 */
	@GetMapping("/create")
	public String create() {
		//forwarding : jsp
		return "users/board/boardForm";
	}
	
	//자유게시판 글작성 실행
	/*
	 요청URI : /frBoardList/createPost
	 파라미터 : {frbTitle=제목2,frbWrite=내용23}
	 요청방식 : post
	 */
	@PostMapping("/createPost")
	public String createPost(FrBoardVO frBoardVO, Principal principal) {
		//FrBoardVO(rnum=0, frbNo=null, usersId=null, frbTitle=제목22, frbWrite=ㅁㄴㄹㅇ, frbDate=null, 
		//frbLno=null, frbRep=null, uploadFile=[org.springframework.web.multipart.support.StandardMultipartHttpS...]
		//, comment=null, frBoardAttatchVOList=null)
		//로그인 아이디
		frBoardVO.setUsersId("kf001");
		log.info("frBoardVO : " + frBoardVO);
		
		int result = this.service.createPost(frBoardVO);
		log.info("result : " + result);
		
		//redirect : URI
		return "redirect:/frBoardList/detail?frbNo="+frBoardVO.getFrbNo();
	}
	
	//자유게시판 글수정 폼
	/*
	 요청URI : /frBoardList/detail?frbNo=FRB0061
	 파라미터 : frbNo=FRB0061
	 요청방식 : get
	 */
	@GetMapping("/detail")
	public String detail(FrBoardVO frBoardVO, Model model) {
		//FrBoardVO(rnum=0, frbNo=FRB0086, usersId=null, frbTitle=null, frbWrite=null, frbDate=null, frbLno=null, frbRep=null, uploadFile=null, comment=null, frBoardAttatchVOList=null)
		log.info("detail->frBoardVO : " + frBoardVO);
		
		//조회수증가
		int updateResult = this.service.increaseFrbLno(frBoardVO);
		log.info("updateResult : " + updateResult);
		//상세화면
		frBoardVO = this.service.detail(frBoardVO);
		log.info("frBoardVO : " + frBoardVO);
		
		//댓글
		List<CommentVO> commentVOList = this.service.commentList(frBoardVO);
		log.info("commentVOList : " + commentVOList);
		
		model.addAttribute("frBoardVO", frBoardVO);
		model.addAttribute("commentVOList", commentVOList);
		
		//forwarding
		return "users/board/boardDetail";
	}
	
	//게시글 신고
	/*
	 요청URI : /FinalProject/frBoardList/frbRepPost
	 요청파라미터 : {"frbNo":"FRB0099"}
	 요청방식 : post
	 */
	@ResponseBody
	@PostMapping("/frbRepPost")
	public String frbRepPost(@RequestBody FrBoardVO frBoardVO) {
		//FrBoardVO(rnum=0, frbNo=FRB0099, usersId=null,...
		log.info("frbRepPost->frBoardVO : " + frBoardVO);
		
		int result = this.service.frbRepPost(frBoardVO);
		log.info("result : " + result);
		
		if(result>0) {//성공
			return "success";
		}else {//실패
			return "failed";
		}
		
	}
	//댓글 신고
	/*
	 요청URI : /FinalProject/frBoardList/coNoPost
	 요청파라미터 : {"coNo":"3"}
	 요청방식 : post
	 */
	@ResponseBody
	@PostMapping("/coNoPost")
	public String coNoPost(@RequestBody CommentVO commentVO) {
		//commentVO(coNo=3,...
		log.info("coNoPost->commentVO : " + commentVO);
		
		int result = this.service.coNoPost(commentVO);
		log.info("result : " + result);
		
		if(result>0) {//성공
			return "success";
		}else {//실패
			return "failed";
		}
		
	}
	
	///frBoardList/comment
	@PostMapping("/comment")
	public String comment(CommentVO commentVO) {
		//CommentVO(coNo=null, usersId=az001, frbNo=FRB0101, coContent=ㄻㄴㅇㄹㄴㅁㄹㅇㄴㄹㅇㄴㅁㄹㅇㄴ, coDate=null, coRep=null, cdepth=null, cgroup=null)
		log.info("commentVO : " + commentVO);
		
		int result = this.service.comment(commentVO);
		log.info("result : " + result);
		
		return "redirect:/frBoardList/detail?frbNo="+commentVO.getFrbNo();
	}
	
	//파일 다운로드
	// localhost/FinalProject/frBoardList/download?fileName=2022/07/25/cd862ebd-10a2-4220-bbbb-5bbf8ffdadd7_phone01.jpg
	@GetMapping("/download")
	public ResponseEntity<Resource> download(@RequestParam String fileName) throws IOException{
		log.info("fileName : " + fileName);
		
		//resource : 다운로드 받을 파일(자원)
//		Resource resource = new FileSystemResource(
//				"D:\\finalprojectDoc\\uploadFiles\\frBoard\\"
//				+fileName
//				);
		File saveFolderTemp = saveFolder.getFile();
		
		Resource resource = new FileSystemResource(
				saveFolderTemp+"/frBoard/"
				+fileName
				);
		//cd862ebd-10a2-4220-bbbb-5bbf8ffdadd7_phone01.jpg
		String resourceName = resource.getFilename();
		//header : 인코딩 정보, 파일명 정보
		HttpHeaders headers = new HttpHeaders();
		try {
			headers.add("Content-Disposition", "attachment;filename="+
					new String(resourceName.getBytes("UTF-8"),"ISO-8859-1"));
		} catch (UnsupportedEncodingException e) {
			log.info(e.getMessage());
		}
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	
	//자유게시판 글수정 실행
	/*
	 요청URI : /frBoardList/detailPost
	 파라미터 : 
	 요청방식 : post
	 */

	//자유게시판 글삭제 실행
	/*
	 요청URI : /frBoardList/deletePost
	 파라미터 : 
	 요청방식 : post
	 */
	
//	@PostMapping("/deletePost")
//	public String deletePost(FrBoardVO frBoardVO) {
//		
//		int result = this.service.deletePost(frBoardVO);
//		
//	return "redirect:users/board/boardList";
//	}
	
	
}



