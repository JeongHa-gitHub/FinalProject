package kr.or.ddit.company.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.service.RecruitProcedureInterviewService;
import kr.or.ddit.company.service.RecruitProcedureService;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.utils.MailUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/company")
public class RecruitProcedureInterviewController {

	@Inject
	private RecruitProcedureInterviewService intrService;

	@Inject
	private RecruitProcedureService service;
	

	/* 면접일정 등록 */
	@PostMapping("recruit/interviewSchd")
	@ResponseBody
	public String interviewSchdCreate(
			@ModelAttribute InterviewSchdVO interviewSchdVO
	) {
		ServiceResult result =intrService.createInterviewSchd(interviewSchdVO);
		
		String message = null;
		switch (result) {
		case OK:
			message = "OK";
			break;
		default:
			message = "FAIL";
			break;
		}
		
		return message;
	}
	
	
	/* 면접일정 상세조회(모달 초기값) */
	@GetMapping("recruit/interviewSchd")
	@ResponseBody
	public InterviewSchdVO interviewSchdView(
			@ModelAttribute InterviewSchdVO interviewSchdVO
	) {
		InterviewSchdVO data =intrService.retrieveInterviewSchd(interviewSchdVO);
		
		return data;
	}
	
	/* 면접일정 수정 */
	@PutMapping("recruit/interviewSchd")
	@ResponseBody
	public String interviewSchdUpdate(
			@ModelAttribute InterviewSchdVO interviewSchdVO
	) {
		log.info("{}",interviewSchdVO);
		ServiceResult result =intrService.modifyInterviewSchd(interviewSchdVO);
		
		String message = null;
		switch (result) {
		case OK:
			message = "OK";
			break;
		default:
			message = "FAIL";
			break;
		}
		
		return message;
	}
	
	/* 면접일정 삭제 */
	@DeleteMapping("recruit/interviewSchdDelete")
	@ResponseBody
	public String interviewSchdDelete(
			String intrNo
	) {
		
		ServiceResult result = intrService.removeInterviewSchd(intrNo);
		
		String message = null;
		switch (result) {
		case OK:
			message = "OK";
			break;
		default:
			message = "FAIL";
			break;
		}
		
		return message;
	}

	
	/* 면접일정 메일 전송 컨트롤러 */
	@GetMapping(value ="/recruit/interview/mail",produces = "application/json;charset=utf-8")
	@ResponseBody
	public String sendIntrSchdMail(
			//String toMail,HttpServletRequest request
			@RequestParam Map<String, String> mailDTO
			, @SessionAttribute(value="authId", required = false) String companyId
			
	) throws Exception {

		// 방법1
		/*
		ServletContext context = request.getSession().getServletContext();		
		Properties prop = new Properties();
		prop.load(context.getResourceAsStream("WEB-INF/properties/sample2.properties"));
		*/
		
		/* 방법2
		Reader	reader= Resources.getResourceAsReader("/properties/sample.properties");
		Properties prop = new Properties();
		prop.load(reader);
		*/
		
		CompanyVO companyVO = service.retrieveCompanyInfo(companyId);
		
		String fromName = companyVO.getCompanyNm();
		
		mailDTO.put("fromMail", "ddit2305@naver.com");
		mailDTO.put("password", "roqkfdnjs2305!!");
		mailDTO.put("fromName",fromName);
		
		String contents = mailDTO.get("contents").replace("\r\n", "<br>");
		mailDTO.put("contents", contents);
		
		MailUtil.sendMail(mailDTO);
		
		ServiceResult result = intrService.createIntrMail(mailDTO);

		String message = null;
		switch (result) {
		case OK:
			message = "OK";
			break;
		default:
			message = "FAIL";
			break;
		}
		
		return message;
	}
	
}
