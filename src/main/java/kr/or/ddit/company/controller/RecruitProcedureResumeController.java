package kr.or.ddit.company.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.service.RecruitProcedureResumeService;
import kr.or.ddit.company.service.RecruitProcedureService;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.ResumeFormVO;
import kr.or.ddit.company.vo.ResumeScoreVO;
import kr.or.ddit.users.vo.ResumeAttatchVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/company")
public class RecruitProcedureResumeController {

	@Inject
	private RecruitProcedureResumeService service;

	/* 이력서 채점표 생성 */
	@PostMapping("recruit/resume/scoreForm")
	@ResponseBody
	public String resumeScoreFormCreate(
			@ModelAttribute ResumeFormVO resumeFormVO
	) {
		log.info("{}",resumeFormVO);
		
		ServiceResult result =service.createResumeScoreForm(resumeFormVO);
		
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

	/* 이력서 상세조회 */
	@GetMapping("recruit/resume")
	@ResponseBody
	public Map<String, Object> retrieveResumeDetail(
			@RequestParam String resattNo
			, @ModelAttribute ResumeScoreVO resumeScoreVO
	) throws IOException {
		
		ResumeAttatchVO resumeAttatchVO = service.retrieveResumeAttatch(resattNo);
		String fileName = resumeAttatchVO.getResattSavename();
		String resumeImageUrl = String.format("/recruit/resume/%s", fileName);
		
		ResumeScoreVO resumeScoreInfo = service.retrieveResumeScore(resumeScoreVO);
		ResumeFormVO resumeForm = service.retrieveResumeForm(resumeScoreVO);
		
		Map<String, Object> result = new HashMap<>();
		result.put("resumeImageUrl", resumeImageUrl);
		result.put("resumeForm", resumeForm);
		result.put("resumeScoreInfo", resumeScoreInfo);
		
		return result;
	}
	
	/* 이력서 점수 등록 */
	@PutMapping("recruit/resumeScore")
	@ResponseBody
	public String resumeScoreUpdate(
			@ModelAttribute ResumeScoreVO resumeScoreVO
	) {
		ResumeScoreVO resumeScoreInfo = service.retrieveResumeScore(resumeScoreVO);
		
		ServiceResult result = null;
		if(resumeScoreInfo == null) {
			// 이력서 점수 정보가 없으면 등록
			result = service.createResumeScore(resumeScoreVO);
		}else {
			// 이력서 점수 정보가 있으면 수정
			result = service.modifyResumeScore(resumeScoreVO);
		}
	
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

	/* 이름 클릭 이력서 조회 */
	@GetMapping("recruit/resumeImg")
	@ResponseBody
	public Map<String, Object> retrieveResumeDetail(
			@RequestParam String resattNo
	) throws IOException {
		
		ResumeAttatchVO resumeAttatchVO = service.retrieveResumeAttatch(resattNo);
		String fileName = resumeAttatchVO.getResattSavename();
		String resumeImageUrl = String.format("recruit/resume/%s", fileName);
		
		Map<String, Object> result = new HashMap<>();
		result.put("resumeImageUrl", resumeImageUrl);
		
		return result;
	}
	
	
}
