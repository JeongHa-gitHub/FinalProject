package kr.or.ddit.users.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.service.ComInfoResumeService;
import kr.or.ddit.users.service.ComInfoService;
import kr.or.ddit.users.vo.CareerVO;
import kr.or.ddit.users.vo.CertificateVO;
import kr.or.ddit.users.vo.CoverLetterVO;
import kr.or.ddit.users.vo.EducationVO;
import kr.or.ddit.users.vo.InterviewReviewVO;
import kr.or.ddit.users.vo.IntrnActvtVO;
import kr.or.ddit.users.vo.LanguageVO;
import kr.or.ddit.users.vo.OverseasStudyVO;
import kr.or.ddit.users.vo.PointPayVO;
import kr.or.ddit.users.vo.ResumeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/users")
public class ComInfoResumeController {

	@Inject
	private ComInfoResumeService service;
	@Inject
	private ComInfoService comInfoService;
	
//	합격자 이력서 리스트 조회
	@GetMapping("comResumeList/{companyId}")
	public String comResumeList(
			Model model
			, HttpServletRequest request
			, @ModelAttribute("detailCondition") ResumeVO detailCondition
			, @RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
			, @SessionAttribute("authId") String usersId
			, @PathVariable("companyId") String companyId
	) {
		// 사용자가 기업인지, 사용자인지 구분하기
		String memberType = service.retrieveMemberType(usersId);
		
		// 사용자에 해당하는 유효한 이용권 검색하기
		List<PointPayVO> ValidTicketList = service.retrieveValidTicketList(usersId);
		log.info("ValidTicketList{}",ValidTicketList);
		
		// 유효한 이용권이 존재하지 않을떄
		if ((ValidTicketList == null || ValidTicketList.isEmpty()) && memberType.equals("H02"))  {
				request.setAttribute("msg", "유효한 이용권이 존재하지 않습니다. 이용권을 구매해주세요.");
				request.setAttribute("url", request.getContextPath()+"/users/companyDetail/"+companyId);
				return "alert";
		}else {
			log.info("아이디 : " + usersId);
			PaginationInfo<ResumeVO> paging = new PaginationInfo<>();
			paging.setDetailCondition(detailCondition); // 키워드 검색 조건
			paging.setCurrentPage(currentPage);
			Map<String, Object> variousCondition = new HashMap<>();
			variousCondition.put("usersId", usersId);
			variousCondition.put("companyId", companyId);

			paging.setVariousCondition(variousCondition);
			
			service.retrieveResumeList(paging);
			
			ComInfoVO cominfo = comInfoService.retrieveCominfo(companyId);
			
			
			paging.setRenderer(new BootstrapPaginationRenderer());
			model.addAttribute("paging", paging);
			model.addAttribute("cominfo", cominfo);
			
			return  "users/cominfo/companyResume";
		}
	}
	
//	합격자 이력서 상세 조회	
	@GetMapping("comResumeDetail/{companyId}/{resumeNo}")
	public String comResumeDetail(
			@PathVariable("resumeNo") String resumeNo
			, @PathVariable("companyId") String companyId
			, Model model
	) {
		ComInfoVO cominfo = comInfoService.retrieveCominfo(companyId);
		
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
		model.addAttribute("cominfo", cominfo);
				
		return "users/cominfo/companyResumeDetail";
	}
	
}
