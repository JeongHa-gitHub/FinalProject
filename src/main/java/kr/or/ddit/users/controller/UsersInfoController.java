package kr.or.ddit.users.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.service.UsersInfoService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UsersInfoController {
	@Inject
	private UsersInfoService service;

	// 개인정보 조회
	@GetMapping("info")
	public String userInfo(
			Model model
			, @SessionAttribute("authId") String memId
			) {
		log.info("아이디 : " + memId);
		MemberVO member = service.retrieveUsers(memId);
		model.addAttribute("member", member);

		return "users/member/memberInfo";
	}
	
	// 수정
	@GetMapping("edit")
	public String infoEdit(
			Model model
			, @SessionAttribute("authId") String memId
			) {
		log.info("아이디 : " + memId);
		MemberVO member = service.retrieveUsers(memId);
		model.addAttribute("member", member);

		return "users/member/memberInfoEdit";
	}
	
	// 수정 실행
	@PostMapping("editPost")
	public String editPost(
			MemberVO memberVO
			, @SessionAttribute("authId") String memId
			, Model model
		) throws IOException {
		log.info("아이디 : " + memId);
		//MemberVO(memId=jd001, memTel=010-6350-8975, memMail=juyeon98p@naver.com, memZip=34400
		//, memAddr1=대전 대덕구 동춘당로114번길 47, memAddr2=209동 1701호, memDivision=null, memDelete=null
		//, users=UsersVO(usersId=null, usersNm=박주욘, usersBir=2023-12-04, usersGen=F, usersImg=null
		//, usersImage=null, usersVticket=0, usersVpoint=0, point=null, ticketMnmtVO=null), 
		//uploadFiles=org.springframework.web.mult..., company=null)
			log.info("editPost->memberVO : " + memberVO);
		  
			int result = this.service.editPost(memberVO);
			log.info("result : " + result);
		  
			//redirect : url
			return "redirect:/user/info";
	}

	// 탈퇴
	@PostMapping("exitPost")
	public String delete(
	        String memId
	        , HttpSession session
	        ) {
		
			log.info("exitPost->memId : " + memId);
					
			int result = this.service.exitPost(memId);
			log.info("result : " + result);
			
			if(result>0) {//탈퇴 성공 시
				session.invalidate();//세션 삭제
			}
			
			return "redirect:/";
	}
}
