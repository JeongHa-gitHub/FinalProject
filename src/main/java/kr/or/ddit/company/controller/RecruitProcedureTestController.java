package kr.or.ddit.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.service.RecruitProcedureService;
import kr.or.ddit.company.service.RecruitProcedureTestService;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/company")
public class RecruitProcedureTestController {

	@Inject
	private RecruitProcedureTestService service;

	/* 시험결과 조회 */
	@GetMapping("recruit/test/{rcrtNo}/{rprocOrder}/{aplNo}")
	@ResponseBody
	public Map<String, Object> retrieveTestResult(
			@PathVariable String aplNo
			, @PathVariable String rcrtNo
			, @PathVariable int rprocOrder
			, @RequestParam String testNo
	) {
		TestResultVO testResultVO = new TestResultVO();
		testResultVO.setTestNo(testNo);
		testResultVO.setAplNo(aplNo);
		testResultVO.setRcrtNo(rcrtNo);
		testResultVO.setRprocOrder(rprocOrder);
		List<TestVO> testResult = service.retrieveTestResult(testResultVO);
		List<TestResultVO> techScoreInfo = service.retrieveTestScore(testResultVO);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("testResult", testResult);
		result.put("techScoreInfo", techScoreInfo);
		return result;
	}
	
	/* 기술시험 점수 update */
	@PutMapping("recruit/techScore")
	@ResponseBody
	public Map<String, Object> techScoreUpdate(
			@Validated(UpdateGroup.class) @ModelAttribute TestResultOuterVO outerVO
			,BindingResult errors
	) {
		
		Map<String, Object> resultMap = new HashMap<>();
		
		String message = null;
		
		if(errors.hasErrors()) {
			List<FieldError> fieldErrors = errors.getFieldErrors();
			// 모든 에러에 대한 정보
			Map<String, Object> errorMap = new HashMap<>();
			
			for(FieldError error : fieldErrors) {
				if(error.getCode().equals("NotNull")) {
					errorMap.put(error.getField(), "공백일 수 없습니다.");					
				}
			}
			
			resultMap.put("errors", errorMap);
			message = "INVALIDATE";
		}else {
			ServiceResult result = service.modifyTechScore(outerVO);
	
		
			switch (result) {
			case OK:
				message = "OK";
				break;
			default:
				message = "FAIL";
				break;
			}
		
		}

		resultMap.put("message", message);
		
		return resultMap;
	}
}
