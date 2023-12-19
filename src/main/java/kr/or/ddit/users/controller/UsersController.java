package kr.or.ddit.users.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.MemberService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.vo.UsersVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.extern.slf4j.Slf4j;

//@RequestMapping("/users")
@Controller
@Slf4j
public class UsersController {

	@Inject
	private MemberService memberService;

	 //post에서 재활용을 위해
	@ModelAttribute("users")
	public UsersVO users() {
		return new UsersVO();
	}
	
	@ModelAttribute("member")
	public MemberVO member() {
		return new MemberVO();
	}
	
	//아이디 중복 검사
	@ResponseBody
	@PostMapping("/users/{memId}/checkId")
	public String checkId(
			@ModelAttribute ("member")MemberVO member
			,@PathVariable String memId
			) {
		String msg = "NG";     
		
		log.info("dfs",memId);
		
		ServiceResult result = memberService.retrieveMemId(memId); 
		
		if(result == ServiceResult.OK) {
			msg = "OK";
		}
		return msg;
		
		
	}

	//개인 회원가입  UI
	@GetMapping("/users")
	public String usersForm() {
		return "users/auth/userJoin";
	}
	//개인 회원가입 insert
	@PostMapping(value= "/users/new")
	public String usersInsert(
							//@RequestParam("memId")String memId
							@Validated(InsertGroup.class) @ModelAttribute("member") MemberVO memberVo
							, BindingResult errors,
							Model model) {

		boolean valid = !errors.hasErrors();
		String viewName = null;

		if (valid) {
			memberVo.getUsers().setUsersVpoint(1000); // 1000포인트 지급
//			memberVo.getUsers().setUsersId(memberVo.getMemId());
			
			ServiceResult result = memberService.createMember(memberVo);
			switch (result) {
			case OK:
				viewName = "redirect:/";

				break;

			default:
				model.addAttribute("message", "서버 오류, 다시 시도하세요.");
				viewName = "users/auth/userJoin";
				break;
			}
		}else {
			//검증 불통
			viewName = "users/auth/userJoin";
		}

		return viewName;
	}

}
