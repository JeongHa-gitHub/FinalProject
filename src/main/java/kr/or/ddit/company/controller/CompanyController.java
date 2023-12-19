package kr.or.ddit.company.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.MemberService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CompanyController {
	
	@Inject
	private MemberService memberService;
	
	
	@Value("#{appInfo.recruitFiles}")
	private String saveFolderStr;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource saveFolder;
	
	
	 //post에서 재활용을 위해
	@ModelAttribute("company")
	public CompanyVO company() {
		return new CompanyVO();
	}
	
	//value="${member.memId}"
	@ModelAttribute("member")
	public MemberVO member() {
		return new MemberVO();
	}
	
	//아이디 중복 검사
	@ResponseBody
	@PostMapping("/company/{memId}/checkId")
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
		
	//기업 회원가입 UI
	@GetMapping("/company")
	public String companyForm() {
		return "users/auth/companyJoin";
		
	}
	
	//기업 회원가입 insert
		@PostMapping("/company/new")
		public String companyInsert(
							//@RequestParam("memId")String memId
							@Validated(InsertGroup.class)@ModelAttribute("member")MemberVO memberVo
							,BindingResult errors
							,Model model
							) throws Exception, IOException {
			
			log.info("파일확인{}",memberVo);
			MultipartFile upload = memberVo.getCompany().getCompanyImage();
			
//			String saveFolder = "d:/finalprojectDoc/uploadFiles/companyInfo/";  
			
			if(!upload.isEmpty()) {
				String saveName = "company"+UUID.randomUUID().toString()+".png"; 
				File saveFileTemp =  new File(saveFolder.getFile()+"/company");
//				File saveFile = new File(saveFolder,saveName);
//				upload.transferTo(saveFile); //업로드 완료
				
				if(!saveFileTemp.exists()) {
					saveFileTemp.mkdirs();
				}
				File saveFile = new File(saveFileTemp,saveName);
				upload.transferTo(saveFile); //업로드 완료
				
//				log.info("경로확인:" + saveFolder + "/" + saveName);
				memberVo.getCompany().setCompanyFile(saveName);
				
				log.info("파일확인{}",upload);
				log.info("파일확인{}",upload.getOriginalFilename());
				log.info("파일확인{}",upload.getSize());
			}
			
			boolean valid = !errors.hasErrors();
			memberVo.getCompany().setCompanyId(memberVo.getMemId()); 

			String viewName = null;
			if(valid) {
				
				ServiceResult result =memberService.createCompanyMember(memberVo);
				
				switch (result) {
				case OK:
					viewName = "redirect:/";
					break;

				default:
					model.addAttribute("message", "서버 오류, 다시 시도해주세요");
					viewName = "users/auth/companyJoin";
					break;
				}
			}else {
				//검증 불통
				viewName = "users/auth/companyJoin";
			}
			return viewName;
		}
}