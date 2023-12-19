package kr.or.ddit.company.controller;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.service.CompanyMemInfoService;
import kr.or.ddit.utils.ValidationUtils;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/companyMemInfo")
public class CompanyMemInfoController {

	@Inject
	private CompanyMemInfoService service;
	
	@GetMapping
	public String companyMemInfo(
			Model model
			, @SessionAttribute("authId") String memId
	)	{
		//아이디 : kf001
		log.info("아이디 : " + memId);
		MemberVO member = service.retrieveCompany(memId);
		log.info("companyMemInfo->member : " + member);
		model.addAttribute("member", member);
		
		return "company/companymypage/companyMemInfo";
	}
	
	@DeleteMapping("delete")
	public String companyInfoDelete(
		@AuthenticationPrincipal MemberVO member
		, @RequestParam("memPass") String memPass
		, HttpSession session
	) {
		log.info("값 : " + member);
		
		String memId = member.getMemId();
		
		MemberVO inputData = new MemberVO();
		inputData.setMemId(memId);
		inputData.setMemPass(memPass);
		
		Map<String, List<String>> errors = new HashMap<>();
        boolean valid = ValidationUtils.validate(inputData, errors, DeleteGroup.class);
        String viewName = null;

        if (valid) {
            ServiceResult result = service.removeCompany(inputData);
            switch (result) {
                case INVALIDPASSWORD:
                    viewName = "redirect:/companyMemInfo";
                    session.setAttribute("message", "비밀번호가 일치하지않습니다. 다시 입력하세요."); // flash attribute
                    break;
                case OK:
                    session.invalidate();
                    viewName = "redirect:/";
                    break;
                default:
                    viewName = "redirect:/companyMemInfo";
                    session.setAttribute("message", "서버 오류"); // flash attribute
                    break;
            }
        } else {
            viewName = "redirect:/companyMemInfo";
            session.setAttribute("message", "비밀번호를 입력하세요."); // flash attribute
        }
        return viewName;
	}
	
	//요청URI : /companyMemInfo/edit
	// 수정
    @GetMapping("/edit")
    public String usersInfoEdit(
            Model model
            , @SessionAttribute("authId") String memId
            ) {
        MemberVO member = service.retrieveCompany(memId);
        model.addAttribute("member", member);

        //forwarding : jsp
        return "company/companymypage/companyMemInfoEdit";
    }
    
  //요청URI : /companyMemInfo/editPost
// 수정 실행
  @PostMapping("/editPost")
  public String editPost(
          Model model
          , MemberVO memberVO
          , @SessionAttribute("authId") String memId
          ) {
	  //memberVO : MemberVO(memId=kf001, memPass=1234, memTel=010-3755-2525, memMail=k11@google.com, memZip=0, memAddr1=null
	  //, memAddr2=null, memDivision=null, memDelete=null, users=null, 
	  //company=CompanyVO(companyId=null, companyNum=0, companyDnm=이서하, companyNm=null, companyDate=null, 
	  //companyPermission=null, companyFile=null))
	  log.info("editPost->memberVO : " + memberVO);
	  
	  int result = this.service.editPost(memberVO);
	  log.info("result : " + result);
	  
      //redirect : url
      return "redirect:/companyMemInfo";
  }
  


//탈퇴
	// /companyMemInfo/exitPost
	@PostMapping("/exitPost")
	public String exitPost(String memId, HttpSession session) {
		/*
		UPDATE MEMBER
		SET    MEM_DELETE = 'Y'
		WHERE  MEM_ID = 'test02'
		 */
		log.info("exitPost->memId : " + memId);
		
		int result = this.service.exitPost(memId);
		log.info("result : " + result);
		
		if(result>0) {//탈퇴 성공 시
			session.invalidate();//세션 삭제
		}
		
		return "redirect:/";
	}

}
