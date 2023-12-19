package kr.or.ddit.common.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.AuthenticateService;
import kr.or.ddit.common.service.MemberService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.users.vo.UsersVO;
import kr.or.ddit.utils.MailUtil;
import lombok.extern.slf4j.Slf4j;


/**
 * @author 홍길동
 * @since 2023. 11. 9.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre> 
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     김소원       최초작성
 * 2023. 11. 7		김소원		수정
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 * </pre>
 * 
 * 
 * 
 */

@Slf4j
@Controller
public class MemberController {
	
	@Inject
	private AuthenticateService service;
	
	@Inject
	private MemberService memService;
	
	//로그인 UI
	@GetMapping (value = "/loginForm")
	public String loginForm() {
		return "users/auth/login";
	}
	
	//로그인 data
		@PostMapping (value = "/loginProcess")
		public String Login(
				@RequestParam("memId") String memId
				,@RequestParam("memPass") String memPass
				,HttpSession session
				, RedirectAttributes redirectAttribute
				) {
			
			MemberVO inputData = new MemberVO();
			inputData.setMemId(memId);
			inputData.setMemPass(memPass);
			
			String viewName = null;
			
			ServiceResult result = service.authenticate(inputData);
			
			//판단 
			switch (result) {
			case OK:
				//인증 성공 - 웰컴페이지로 이동
				if(inputData.getMemDivision().equals("H02")) {
					viewName = "redirect:/";
					session.setAttribute("authId", inputData.getMemId()); //세션 추가
					session.setAttribute("authNm", inputData.getUsers().getUsersNm()); //세션 추가
					session.setAttribute("authDivision", inputData.getMemDivision()); //세션 추가
					log.info("이름:{}",inputData.getUsers().getUsersNm());
					
				}else if(inputData.getMemDivision().equals("H03")) {
					viewName = "redirect:/indexCompany";
					session.setAttribute("authId", inputData.getMemId()); //세션 추가
					session.setAttribute("authNm", inputData.getCompany().getCompanyDnm()); //세션 추가
					session.setAttribute("authDivision", inputData.getMemDivision()); //세션 추가
				}else if(inputData.getMemDivision().equals("H01")) {
					viewName = "redirect:/indexAdmin";
					session.setAttribute("authId", inputData.getMemId()); //세션 추가
					session.setAttribute("authNm", "관리자"); //세션 추가
				}
				break;
				
			case INVALIDPASSWORD:
				//인증 실패 - 로그인폼으로 이동
				redirectAttribute.addFlashAttribute("message", "비밀번호 오류입니다.");
				viewName = "redirect:/loginForm";
				break;

			default:
				//멤버 없을 경우
				redirectAttribute.addFlashAttribute("message", "가입 안했거나 이미 탈퇴한 회원입니다.");
				viewName = "redirect:/loginForm";
				break;
			}
			return viewName;
		}
		
	
	//로그아웃
	@PostMapping (value = "/logoutProcess")
	public String logout(HttpSession session) {
        String viewName;
        if (session != null) {
            try {
                // 세션 무효화 
                session.invalidate();
                viewName = "redirect:/";
            } catch (IllegalStateException e) {
                viewName = "redirect:/loginForm";
            }
        } else {
            viewName = "redirect:/loginForm";
        }
        return viewName;
    }


	//공통 비밀번호 찾기  UI
	@GetMapping(value = "/pwFind/Form")
	public String pwFindForm() {
	
		return "users/auth/pwFind";
	}
	//공통 비밀번호 찾기
	//@RequestParam일떄 jsp 에서data:"JSON.stringify(memberVO)쓰지 않고 파라미터를 직접 전달하기
	@ResponseBody
	@PostMapping(value = "/pwFind/pwData")
	public String pwFindData(
						@RequestParam String id,
						@RequestParam String email
					) {
		
		log.info("아이디:{}",id);
		log.info("이메일:{}",email);
		MemberVO member = new MemberVO();
		
		member.setMemId(id);
		member.setMemMail(email);
		
		ServiceResult result = memService.selectPwFind(member);
		String msg = "NG";
		if(result == ServiceResult.OK) {
			//아이디와 비밀번호가 일치하면
			//이메일 보내기 아직 못함...
			int min = 100000; 
			int max = 999999;
			int randomNum = min + (int) (Math.random() * ((max - min) + 1));
			String userPw = String.valueOf(randomNum);
			
			member.setMemId(id);
			member.setMemMail(email);
			member.setMemPass(userPw);
			
//			String contents =  String.format("※내 일을 JOB자 비밀번호 변경안내※ [%s]<br>채용절차가 마감되었습니다. 결과를 확인하세요.<br><a href='%s'>결과 확인하기</a>", rcrtTitle, url);
//			String contents = " ※내 일을 JOB자 임시 비밀번호 안내※";
			String contents =String.format("임시비밀번호는 [%s]입니다!! 임시비밀번호를 사용하여 내 일을 JOB자에 로그인 후 새로운 비밀번호로 변경하시기 바랍니다.", userPw);
			String fromName ="내일을JOB자";
			Map<String, String> mailDTO = new HashMap<String, String>();
			mailDTO.put("fromMail", "ddit2305@naver.com");
			mailDTO.put("password", "roqkfdnjs2305!!");
			mailDTO.put("title", "※내 일을 JOB자 비밀번호 변경안내※");
			mailDTO.put("fromName",fromName);
			mailDTO.put("contents",contents);
			mailDTO.put("toMail", email);
			
			MailUtil.sendMail(mailDTO);
//			임시비밀번호는 366037 입니다!! 임시비밀번호를 사용하여 NORI Daejeon에 로그인 후 새로운 비밀번호로 변경하시기 바랍니다.
			ServiceResult updateRes = memService.modifyPw(member);
			msg = "OK";
		}
		return msg;
	}
	
	//개인 회원 아이디 찾기 UI
	@GetMapping(value = "/idFind/users/form")
	public String usersIdFindForm() {
		return "users/auth/userIdFind";
	}
	
	//개인 회원 아이디 찾기 
	//json으로 보낼때는 @RequestParam 쓰지 않는다 자동으로 맵핑해줌
	@PostMapping(value = "/idFind/users/data")
	@ResponseBody
	public String usersIdFindData(@RequestBody MemberVO member ) {
		member.setMemMail(member.getMemMail()); //이메일  자동 맵핑 해줬기 때문 member 그대로 써주기
		
		if(member.getUsers() == null) {
			member.setUsers(new UsersVO());
		}
		member.getUsers().setUsersNm(member.getUsers().getUsersNm());
		
		//memService.selectIdFind가 업데이트된 member를 반환한다고 가정한다.
		member= memService.selectIdFind(member);
		

		String result = null;
		if(member == null) {
			result = "NG";
		}else {
			result = member.getMemId();
		}
		return result;
		
	}
	
	// 기업 회원 아이디 찾기 UI
	@GetMapping(value = "/idFind/company/form")
	public String companyIdFindForm() {
		return "users/auth/companyIdFind";
	}
	
	//기업 회원 아이디 찾기
	@ResponseBody
	@PostMapping(value = "/idFind/company/data")
	public String companyIdFindData(@RequestBody MemberVO member) {
		member.setMemMail(member.getMemMail());
		
		if(member.getCompany()==null) {
			member.setCompany(new CompanyVO());
		}
		member.getCompany().setCompanyDnm(member.getCompany().getCompanyDnm());
		member = memService.companySelectIdFid(member);
		
		String result = null;
		if(member == null) {
			result="NG";
		}else {
			result = member.getMemId();
		}
		return result;
	}
}
