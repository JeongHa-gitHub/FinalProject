package kr.or.ddit.company.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.AuthenticateService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.service.TestService;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.validate.grouphint.InsertGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;

@Controller
@RequestMapping("/company")
//@SessionAttributes(names = "testVO")
public class TestController {
	@Inject
	private TestService service;
	
	@Inject
	private AuthenticateService authService;
	
	@ModelAttribute("testVO")
	public TestVO testVO(){
		return new TestVO();
	}
	
	/* 시험지 조회 */
	@GetMapping("testListUI")
	public String testListUI() {
		return "company/test/testList";
	}
	
	@GetMapping("test")
	@ResponseBody
	public PaginationInfo<TestVO> testListRetrieve(
			@SessionAttribute(value="authId", required = false) String companyId
			, @ModelAttribute TestVO detailCondition
			, @RequestParam("sDate") String sDate
			, @RequestParam("eDate") String eDate
			, @RequestParam(value = "page", defaultValue = "1") int currentPage
			) {
		PaginationInfo<TestVO> paging = new PaginationInfo<>();
		paging.setCurrentPage(1);
		
		// 시큐리티를 안쓰기 때문에.. 있을 수 없는 기업아이디 세팅
		if(companyId==null) {
			companyId = UUID.randomUUID().toString();
		}
				
		detailCondition.setCompanyId(companyId);
		
		paging.setDetailCondition(detailCondition);
		paging.setCurrentPage(currentPage);
		
		Map<String, Object> variousCondition = new HashMap<>();
		variousCondition.put("sDate", sDate);
		variousCondition.put("eDate", eDate);
		
		paging.setVariousCondition(variousCondition);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		
		service.retrieveTestList(paging);
		
		return paging;
	}
	
	
	
	@GetMapping("test/{testType}/{testNo}")
	public String testRetrieve(
		@PathVariable String testNo
		, @PathVariable String testType
		, Model model
	) {
		TestVO testVO = service.retrieveTestDetail(testNo);
		model.addAttribute(testVO);
		if(testType.equals("T01")) {			
			return "company/test/aptitudeTestView";
		}else{
			return "company/test/technicalTestView";
		}
	}
	
	
	
	/* 새 시험지 생성 */
	@GetMapping("test/{testType}/new")
	public String testForm(@PathVariable String testType) {
		if(testType.equals("T01")) {			
			return "company/test/aptitudeTestForm";
		}else{
			return "company/test/technicalTestForm";
		}
	}
	
	@PostMapping("test/new")
	public String testInsert(
			@SessionAttribute(value="authId", required = false) String companyId
			, @Validated(InsertGroup.class) @ModelAttribute TestVO testVO
			, BindingResult errors
			, RedirectAttributes redirectAttributes
			, SessionStatus sessionStatus
	) {
		boolean valid = !errors.hasErrors();
		
		String viewName = null;
		if(valid) {
			testVO.setCompanyId(companyId);
			ServiceResult result = service.createTest(testVO);
			switch (result) {
			case OK:
				sessionStatus.setComplete();
				viewName = String.format("redirect:/company/test/%s/%s", testVO.getTestType(), testVO.getTestNo());				
				break;
			default:
				String attrName = BindingResult.MODEL_KEY_PREFIX+"testVO";
				redirectAttributes.addFlashAttribute(attrName, errors);
				redirectAttributes.addFlashAttribute("testVO", testVO);
//				 클래스 이름 위에 @SessionAttributes 어노테이션 없으면 이거라도 있어야함 -- session 통해 모델이 공유되도록
				redirectAttributes.addFlashAttribute("message","등록 실패");
				viewName = String.format("redirect:/company/test/%s/new", testVO.getTestType());
				break;
			}
		}else {
			String attrName = BindingResult.MODEL_KEY_PREFIX+"testVO";
			redirectAttributes.addFlashAttribute(attrName, errors);
			redirectAttributes.addFlashAttribute("testVO", testVO);
//			 클래스 이름 위에 @SessionAttributes 어노테이션 없으면 이거라도 있어야함 -- session 통해 모델이 공유되도록
			viewName = String.format("redirect:/company/test/%s/new", testVO.getTestType());
		}
		return viewName;
	}
	
	
	/* 시험지 삭제 */
	@DeleteMapping("test/{testNo}")
	public String testDelete(
			@SessionAttribute(value="authId", required = false) String companyId
			, @ModelAttribute TestVO testVO
			, @ModelAttribute MemberVO inputData
			, RedirectAttributes redirectAttributes
	) {
		inputData.setMemId(companyId);	
		ServiceResult authResult = authService.authenticate(inputData);
		
		String viewName = null;
		if(authResult==ServiceResult.OK) {
			ServiceResult result = service.removeTest(testVO);
			switch (result) {
			case OK:
				redirectAttributes.addFlashAttribute("message", "삭제 성공");
				viewName = "redirect:/company/testListUI";
				break;
			default:
				redirectAttributes.addFlashAttribute("message", "삭제 실패");
				viewName = String.format("redirect:/company/test/%s/{testNo}", testVO.getTestType());
				break;
			}
		}else {
			redirectAttributes.addFlashAttribute("message", "비밀번호 오류");
			viewName = String.format("redirect:/company/test/%s/{testNo}", testVO.getTestType());
		}
		
		
		
		return viewName;
	}
	
	
	
	/* 시험지 수정 */
	@GetMapping("test/{testType}/{testNo}/edit")
	public String testEdit(
			@PathVariable String testType
			, @PathVariable String testNo
			, Model model
	) {
		if(!model.containsAttribute("targetTest")) {
			TestVO targetTest = service.retrieveTestDetail(testNo);
			model.addAttribute("targetTest", targetTest);
		}
		if(testType.equals("T01")) {			
			return "company/test/aptitudeTestEdit";
		}else{
			return "company/test/technicalTestEdit";
		}
	}
	
	@PutMapping("test/{testType}/{testNo}/edit")
	public String testUpate(
			@SessionAttribute(value="authId", required = false) String companyId
			, @PathVariable String testNo
			, @Validated(UpdateGroup.class) @ModelAttribute("targetTest") TestVO targetTest
			, BindingResult errors
			, RedirectAttributes redirectAttributes
			, SessionStatus sessionStatus
	) {
		boolean valid = !errors.hasErrors();
		
		String viewName = null;
		if(valid) {
			targetTest.setCompanyId(companyId);	
			ServiceResult result = service.modifyTest(targetTest);
			switch (result) {
			case OK:
				sessionStatus.setComplete();
				viewName = String.format("redirect:/company/test/%s/%s", targetTest.getTestType(), targetTest.getTestNo());				
				break;
			default:
				String attrName = BindingResult.MODEL_KEY_PREFIX+"targetTest";
				redirectAttributes.addFlashAttribute(attrName, errors);
				redirectAttributes.addFlashAttribute("targetTest", targetTest);
//				 클래스 이름 위에 @SessionAttributes 어노테이션 없으면 이거라도 있어야함 -- session 통해 모델이 공유되도록
				redirectAttributes.addFlashAttribute("message","수정 실패");
				viewName = String.format("redirect:/company/test/%s/%s/edit", targetTest.getTestType(), targetTest.getTestNo());
				break;
			}
		}else {
			String attrName = BindingResult.MODEL_KEY_PREFIX+"targetTest";
			redirectAttributes.addFlashAttribute(attrName, errors);
			redirectAttributes.addFlashAttribute("targetTest", targetTest);
//			 클래스 이름 위에 @SessionAttributes 어노테이션 없으면 이거라도 있어야함 -- session 통해 모델이 공유되도록
			viewName = String.format("redirect:/company/test/%s/%s/edit", targetTest.getTestType(), targetTest.getTestNo());
		}
		return viewName;
	}
	
	
}
