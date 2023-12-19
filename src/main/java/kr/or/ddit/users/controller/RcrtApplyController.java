package kr.or.ddit.users.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.users.dao.RcrtApplyDAO;
import kr.or.ddit.users.service.RcrtApplyService;
import kr.or.ddit.validate.grouphint.InsertGroup;

@Controller
@RequestMapping("/users")
public class RcrtApplyController {
	
	@Inject
	private RcrtApplyService service;
	
	
	/**
	 * retrieveRecruitProcedure - 채용절차 조회
	 * retrieveCurrentProcedureInfo - 현재 채용절차 조회
	 * retrieveNextProcedure - 다음 채용절차 조회
	 * 
	 */
	@GetMapping("/apply/{rcrtNo}/{rprocOrder}")
	public String applyViewRetrieve(
			@PathVariable String rcrtNo
			, @PathVariable int rprocOrder
			, @SessionAttribute("authId") String usersId
			, String comCodeNm
			, Model model
			, @Validated(InsertGroup.class) @ModelAttribute("aproc") AProcedureVO aproc
			, BindingResult errors
	) {
		List<RProcedureVO> dataList = service.retrieveRecruitProcedure(rcrtNo);
		
		System.out.println("dataList : " + dataList);
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("rcrtNo", rcrtNo);
		paramMap.put("rprocOrder", rprocOrder);
		paramMap.put("usersId", usersId);
		RProcedureVO currProcedureInfo = service.retrieveCurrentProcedureInfo(paramMap);		
		
		
		List<ApplyVO> apply = service.retrieveApplicant(paramMap);
		ApplyVO appVO = null;
		for (int i = 0; i < apply.size(); i++) {
			ApplyVO app = apply.get(i);
			if(app.getProcedure_r().getRprocOrder() == rprocOrder) {
				appVO = app;
				break;
			}
		}
		
		List<Integer> orders = new ArrayList<Integer>();
		for (int i = 0; i < apply.size(); i++) {
			orders.add(apply.get(i).getProcedure_r().getRprocOrder());
		}
		
		RProcedureVO nextRproc = service.retrieveNextProcedure(paramMap);
						
		model.addAttribute("dataList", dataList);
		model.addAttribute("currProcedureInfo", currProcedureInfo);
		model.addAttribute("apply", appVO);
		model.addAttribute("userOrders", orders);
		model.addAttribute("applyList", apply);
		model.addAttribute("comCodeNm", comCodeNm);
		model.addAttribute("nextRproc", nextRproc);
		
		return "users/rcrtApply/rcrtApplyView";
	}	
	
	
	/**
	 * 적성검사 / 기술시험 시험지 조회
	 */
	@GetMapping("apply/test/{testNo}")
	@ResponseBody
	public List<TestVO> testRetrieve(
		@PathVariable String testNo
		, Model model
	) {
		
		List<TestVO> test = service.retrieveTest(testNo);
		
		model.addAttribute("test", test);
		
		return test;
	}
	

	/**
	 * RE01(서류) / RE04(면접)일 때 지원
	 */
	@PostMapping("/apply/insertAproc")
	public String insertAproc(
			@Validated(InsertGroup.class) @ModelAttribute("aproc") AProcedureVO aproc
			, String rcrtNo
			, int rprocOrder
			, BindingResult errors
			, Model model) {
		System.out.println("######################### aproc : " + aproc);
		System.out.println("######################### rcrtNo : " + rcrtNo);
		System.out.println("######################### rprocOrder : " + rprocOrder);
		
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("rcrtNo", rcrtNo);
		paramMap.put("rprocOrder", rprocOrder);
		RProcedureVO nextRproc = service.retrieveNextProcedure(paramMap);
		
		boolean valid = !errors.hasErrors();		
		String viewName = null;
		
		if(valid) {
			ServiceResult resultAproc = service.createRecruitProcedure(aproc);			
			if (resultAproc == ServiceResult.OK) {
					viewName = "redirect:/users/apply/" + rcrtNo + "/" + rprocOrder;
			}else {
				model.addAttribute("message", "서버 오류 발생! 잠시후 다시 시도해주세요.");
				viewName = "redirect:/users/apply/" + rcrtNo + "/" + (rprocOrder-1);
			}
		}	
		
		return viewName;
	}
	
	/**
	 * 시험지 조회 후 시험 결과 생성 및 다음 지원절차 이동
	 */
	@PostMapping("/apply/insertApply/{rcrtNo}/{rprocOrder}")
	public String insertApply(
			String rprocTypeno
			, TestResultVO testResultVO
			, TestResultOuterVO testResultOuterVO
			, @Validated(InsertGroup.class) @ModelAttribute("aproc") AProcedureVO aproc
			, @Validated(InsertGroup.class) @ModelAttribute("testOuter") TestResultOuterVO testOuter
			, String rcrtNo
			, int rprocOrder
			, BindingResult errors
			, Model model
		) {
		
		boolean valid = !errors.hasErrors();		
		String viewName = null;
		
		// 넘겨받은 rprocTypeno가 RE02, RE03이면 2개 테이블에 insert
		if(rprocTypeno.equals("RE02")) {
			// 2개 테이블 insert 서비스 요청
			if(valid) {
				ServiceResult resultAproc = service.createRecruitProcedure(aproc);
				ServiceResult resultTest = service.createAptRecruitProcedure(testOuter);
				if (resultAproc == ServiceResult.OK && resultTest == ServiceResult.OK) {
						viewName = "redirect:/users/apply/" + rcrtNo + "/" + rprocOrder;
				}else {
					model.addAttribute("message", "서버 오류 발생! 잠시후 다시 시도해주세요.");
					viewName = "redirect:/users/apply/" + rcrtNo + "/" + (rprocOrder-1);
				}
			}			
			
		}
		
		if(rprocTypeno.equals("RE03")) {
			// 2개 테이블 insert 서비스 요청
			if(valid) {
				ServiceResult resultAproc = service.createRecruitProcedure(aproc);
				ServiceResult resultTest = service.createTechRecruitProcedure(testOuter);
				if (resultAproc == ServiceResult.OK && resultTest == ServiceResult.OK) {
						viewName = "redirect:/users/apply/" + rcrtNo + "/" + rprocOrder;
				}else {
					model.addAttribute("message", "서버 오류 발생! 잠시후 다시 시도해주세요.");
					viewName = "redirect:/users/apply/" + rcrtNo + "/" + (rprocOrder-1);
				}
			}			
			
		}
		return viewName;
	}
	

}
