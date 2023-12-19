package kr.or.ddit.users.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.service.ResumeService;
import kr.or.ddit.users.vo.CareerVO;
import kr.or.ddit.users.vo.CertificateVO;
import kr.or.ddit.users.vo.CoverLetterVO;
import kr.or.ddit.users.vo.EducationVO;
import kr.or.ddit.users.vo.IntrnActvtVO;
import kr.or.ddit.users.vo.LanguageVO;
import kr.or.ddit.users.vo.OverseasStudyVO;
import kr.or.ddit.users.vo.ResumeVO;
import kr.or.ddit.utils.ValidationUtils;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class ResumeController {
	
	@Inject
	private ResumeService service;
	
	//조회
	@GetMapping("resumeList")
	public String resumeList(
		Model model
		, @ModelAttribute("simpleCondition") SearchVO simpleCondition
		, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		, @SessionAttribute("authId") String usersId
	) {
		log.info("아이디 : " + usersId);
		PaginationInfo<ResumeVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("usersId", usersId);
		
		paging.setVariousCondition(variousCondition);
	
		service.retrieveResumeList(paging);
	
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
				
		return "users/member/resumeList";
	}
	
	
	@GetMapping("resume/{resumeNo}")
	public String resumeDetail(
		@PathVariable String resumeNo
		, Model model
		) {
		ResumeVO resume = service.retrieveResume(resumeNo);
		
		List<EducationVO> eduList = service.retrieveEduInfo(resumeNo);
		List<CertificateVO> cerList = service.retrieveCerInfo(resumeNo);
		List<CoverLetterVO> covList = service.retrieveCovList(resumeNo);
		List<LanguageVO> lagList = service.retrieveLagList(resumeNo);
		List<IntrnActvtVO> inaList = service.retrieveInaList(resumeNo);
		List<OverseasStudyVO> ostList = service.retrieveOstList(resumeNo);
		List<CareerVO> carList = service.retrieveCarList(resumeNo);
		
		model.addAttribute("resume", resume);
		model.addAttribute("eduList", eduList);
		model.addAttribute("cerList", cerList);
		model.addAttribute("covList", covList);
		model.addAttribute("lagList", lagList);
		model.addAttribute("inaList", inaList);
		model.addAttribute("ostList", ostList);
		model.addAttribute("carList", carList);
		
		return "users/member/resumeDetail";
		
	}
	
	//등록
	@GetMapping("resume/new")
	public String resumeForm(
			Model model
			, @SessionAttribute("authId") String usersId
			) {
		
		log.info("아이디 : " + usersId);
		ResumeVO userInfo = service.retrieveUsersInfo(usersId);
		model.addAttribute("userInfo", userInfo);
		
		return "users/member/resumeForm";
	}
	
	@PostMapping("resume/newPost")
	public String createResume(
			ResumeVO resume,
			HttpSession session
		) {
		log.info("체킁: {}",resume);
		String usersId= String.valueOf(session.getAttribute("authId"));
		resume.setUsersId(usersId);
		service.createResume(resume);
		return "redirect:/user/resume/"+resume.getResumeNo();
	}
	
	//수정
	@GetMapping("resume/{resumeNo}/edit")
	public String resumeEdit(
			@PathVariable String resumeNo
			, Model model
			, @SessionAttribute("authId") String usersId
		) {
		log.info("아이디 : " + usersId);
		ResumeVO resume = service.retrieveResume(resumeNo);
		ResumeVO userInfo = service.retrieveUsersInfo(usersId);
		
		List<EducationVO> eduList = service.retrieveEduInfo(resumeNo);
		List<CertificateVO> cerList = service.retrieveCerInfo(resumeNo);
		List<CoverLetterVO> covList = service.retrieveCovList(resumeNo);
		List<LanguageVO> lagList = service.retrieveLagList(resumeNo);
		List<IntrnActvtVO> inaList = service.retrieveInaList(resumeNo);
		List<CareerVO> carList = service.retrieveCarList(resumeNo);
		
		model.addAttribute("resume", resume);
		model.addAttribute("userInfo", userInfo);
		model.addAttribute("eduList", eduList);
		model.addAttribute("cerList", cerList);
		model.addAttribute("covList", covList);
		model.addAttribute("lagList", lagList);
		model.addAttribute("inaList", inaList);
		model.addAttribute("carList", carList);
		
		return "users/member/resumeEdit";
	}
	
	@PostMapping("resume/update")
	public String updateResume(
			ResumeVO resume,
			HttpSession session
		) {
		log.info("체킁: {}",resume);
		String usersId= String.valueOf(session.getAttribute("authId"));
		resume.setUsersId(usersId);
		service.modifyResume(resume);
		return "redirect:/user/resume/"+resume.getResumeNo();
	}
	
	//삭제
	@PostMapping("removeResume")
	public String resumeDelete(
		@ModelAttribute ResumeVO resumeVO
		, @SessionAttribute("authId") String usersId
		, Model model
	) {
		 	Map<String, List<String>> errors = new HashMap<>();
		    model.addAttribute(errors);

		    boolean valid = ValidationUtils.validate(resumeVO, errors, DeleteGroup.class);
		    String viewName = null;
		    if (valid) {
		        ServiceResult result = service.removeResume(resumeVO);
		        switch (result) {
		            case OK:
		                model.addAttribute("message", "해당 이력서가 삭제되었습니다.");
		                viewName = "redirect:/user/resumeList";
		                break;
		            default:
		                model.addAttribute("message", "서버 오류, 쫌따 다시 해보셈.");
		                viewName = "redirect:/user/resumeList"; 
		                break;
		        }
		    }
		    return viewName;
	}
}