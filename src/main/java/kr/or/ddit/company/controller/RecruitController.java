package kr.or.ddit.company.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.common.dao.CodeDAO;
import kr.or.ddit.common.dao.JobCodeDAO;
import kr.or.ddit.common.dao.RegCodeDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.CodeVO;
import kr.or.ddit.common.vo.JobCodeVO;
import kr.or.ddit.common.vo.RegCodeVO;
import kr.or.ddit.company.service.RecruitService;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.ScrapVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * C : /board/boardInsert.do GET(POST) /board/new get은 양식 제공, post 등록 
 * R :/board/boardList.do?page=2, /board/boardView.do?what=23 GET: /board?page=2, /board/23 
 * U : /board/boardUpdate.do GET: /board/23/edit, PUT /board/23 get은 양식 제공, PUT 수정 등록 
 * D : /board/boardDelete.do DELETE /board/23
 * 
 * 
 */
@Slf4j
@Controller
@SessionAttributes("targetRecruit")  // 리다이렉션해도 중간에 데이터가 사라지지 않음
public class RecruitController {

	@Inject
	private RecruitService reService;
	
	@Inject
	private CodeDAO codedao;
	
	@Inject
	private RegCodeDAO regdao;
	
	@Inject
	private JobCodeDAO jobDao;
	
	
//-----------------------------공통코드---------------------------------
	
	// 지역 상위 코드
	@ModelAttribute("TregCodeList")
	public List<RegCodeVO> TregCodeList(@RequestParam(value = "code", required = false) String code) {
		return regdao.selectCode();
	}

	// 지역 하위 코드
	@ModelAttribute("regCodeList")
	public List<RegCodeVO> regCodeList(@RequestParam(value = "code", required = false) String code) {
		return regdao.selectOneCode(null);
	}
	
	// 직업 상위 코드
	@ModelAttribute("tjobCodeList")
	public List<JobCodeVO>TjobCodeList(@RequestParam(value = "code", required = false) String code){
		return jobDao.selectTcode();
	}
	
	// 직업 하위 코드
	@ModelAttribute("jobCodeList")
	public List<JobCodeVO>jobCodeList(@RequestParam(value = "code", required = false)String code){
		return jobDao.selectCode(code);
	}

	// 전형절차 공통 코드
	@ModelAttribute("reCodeList")
	public List<CodeVO> reCodeList() {
		String code = "RE";
		return codedao.selectCode(code);
	}

	// 급여 공통 코드
	@ModelAttribute("salCodeList")
	public List<CodeVO> salCodeList() {
		String code = "PY";
		return codedao.selectCode(code);
	}

	// 지원자 학력 공통 코드
	@ModelAttribute("eduCodeList")
	public List<CodeVO> eduCodeList() {
		String code = "E";
		return codedao.selectCode(code);
	}
	
//---------------------------------------------------------------------------
	
	@ModelAttribute("recruit")  
	public RecruitVO recruit() {
		return new RecruitVO();
	}
	
	@ModelAttribute("procedure")  
	public RProcedureVO procedure() {
		return new RProcedureVO();
	}
	
//---------------------------------채용공고 스크랩---------------------------------------
	
	//채용공고 스크랩 클릭시 스크랩 등록, 삭제
	@ResponseBody
	@PostMapping("/recruit/{reNo}/scrap")
	public String scrapRecruit(
			@PathVariable String reNo,
			@SessionAttribute("authId")String usersId
			,@ModelAttribute("scrap")ScrapVO scrap
			) {
		
		String msg = "NG";
		
		scrap.setUsersId(usersId);
		scrap.setRcrtNo(reNo);
		
		ServiceResult scrapResult = reService.scrapCheck(scrap);
		log.info("스크랩:{}",scrapResult);
		
		if(scrapResult == ServiceResult.OK) {
			reService.removeScrap(scrap);
			
			msg = "NG";
		}else {
			reService.scrapRecruit(scrap);
			msg ="OK";
		}
		return msg;
	}
	
	//채용공고 스크랩 체크
	@ResponseBody
	@GetMapping("/recruit/{reNo}/scrapcheck")
	public String scrapRecruitCheck(
			@PathVariable String reNo
			,@SessionAttribute("authId")String usersId
			,@ModelAttribute("scrap")ScrapVO scrap
			) {
		String msg = "NG";
		
		scrap.setUsersId(usersId);
		scrap.setRcrtNo(reNo);
		ServiceResult result = reService.scrapCheck(scrap);
		
		if(result == ServiceResult.OK) {
			msg = "OK";
		}
		return msg;
	}
	
//----------------------------------채용공고 상세보기----------------------------------------	
	//view  상세보기
	@GetMapping("/recruit/{reNo}")
	public String recruitViewUI(
			@PathVariable String reNo
			, Model model
			//,Locale locale
			
			) {
		RecruitVO recruit = reService.retrieveRecruit(reNo);
		List<RProcedureVO>procedureList = reService.procedureList(reNo);  //채용절차
		
		log.info("recruit->", recruit);
		log.info("procedureList->", procedureList);
		
		model.addAttribute("procedureList", procedureList);
		model.addAttribute("recruit", recruit);
		return "users/recruit/recruitDetail";
	}
	
//--------------------------------채용공고 리스트----------------------------------------------	

	// 지역 list UI
	@RequestMapping("/recruit/region")
	public String regionListUI() {

		return "users/recruit/recruitRegionList";
	}

	// 지역 list + 페이징 data처리
	@RequestMapping("/recruit/region/regionData")
	public String regionListData(@RequestParam Map<String, Object> variousCondition,
			@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage, Model model) {
//		log.info("regionListData->variousCondition : " + variousCondition);
		PaginationInfo<RecruitVO> paging = new PaginationInfo<RecruitVO>(10, 5);
		paging.setCurrentPage(currentPage);
		paging.setVariousCondition(variousCondition); // 검색 상세 조건
//		log.info("regionListData->paging : " + paging);
		reService.retrieveRecruitList(paging);

		paging.setRenderer(new BootstrapPaginationRenderer());

		model.addAttribute("paging", paging);

		return "jsonView";

	}
	// 직업 list UI
	@RequestMapping("/recruit/job")
	public String JobListUI() {
		return "users/recruit/recruitJobList";
	}
	
	// 직업 list + 페이징 data처리
	@RequestMapping("/recruit/job/jobData")
	public String jobListData(@RequestParam Map<String, Object> variousCondition,
			@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage, Model model) {

		PaginationInfo<RecruitVO> paging = new PaginationInfo<RecruitVO>(10, 5);
		paging.setCurrentPage(currentPage);
		paging.setVariousCondition(variousCondition); // 검색 상세 조건

		reService.selectJobRecruitList(paging);

		paging.setRenderer(new BootstrapPaginationRenderer());

		model.addAttribute("paging", paging);

		return "jsonView";
	}
	
	//top100 list UI
	@GetMapping("/recruit/Top100")
	public String Top100ListUI() {
		return "users/recruit/recruitTop100List";
	}
	
	//top100 list data
	@ResponseBody
	@GetMapping("/recruit/Top100/Top100Data")
	public List<RecruitVO> Top100ListData() {
		
	   List<RecruitVO> list = reService.retrieveTop100List();
	   log.info("체크list", list);
		
	   return list;
	}
	
//--------------------------------채용공고 등록-------------------------------------------	
	
	//테스트 시험지
	@ResponseBody
	@GetMapping("recruit/test")
	public List<TestVO> selectTest(
			@SessionAttribute("authId")String companyId
			,Model model){
		List<TestVO>list =reService.selectTest(companyId);
		model.addAttribute("testList", list);
		return list;
		
	}
	
	// 채용공고 insert UI
	@RequestMapping(value = "/recruit/form" , method = RequestMethod.GET )
	public String recruitFormUI(Model model) {
	    return "company/recruit/recruitForm";
	}

	// 채용공고 insert
	@PostMapping("/recruit/new")
	public String recruitInsert(
			@Validated(InsertGroup.class) @ModelAttribute("recruit") RecruitVO recruitVo
			,BindingResult errors
			,@SessionAttribute("authId")String companyId
			,SessionStatus sessionStatus
			,RedirectAttributes redirectAttributes
			, Model model) {
//		log.info("RecruitInsert->recruitVo : " + recruitVo);
		boolean valid = !errors.hasErrors();
		
		String viewName = null;
		
		if (valid) {
			recruitVo.setCompanyId(companyId);  // 기업 아이디
			
			ServiceResult result = reService.createRecruit(recruitVo);
			
			switch (result) {
			case OK:
				// 어디로 보내야할까? ????????
				viewName = "company/recruit/recruitList";
				
				break;

			default:
				// FAIL
				redirectAttributes.addFlashAttribute("message","다시 시도하세요");
				viewName = "company/recruit/recruitForm";
				break;
			}
		}else {
			log.info("결과",recruitVo);
			
			redirectAttributes.addFlashAttribute("message","검증 오류 다시 시도하세요.");
			viewName = "company/recruit/recruitForm";
		}

		return viewName;
	}
	
//-------------------------------채용공고 수정--------------------------------------------	
	
	//채용공고 update form 수정
	@GetMapping("/recruit/{reNo}/editForm")
	public String recruitUpdateForm(@PathVariable String reNo, Model model) {
		
		RecruitVO recruit = reService.retrieveRecruit(reNo);
		
		model.addAttribute("recruit",recruit);
		
		return "company/recruit/recruitUpdateForm";
	}
	
	// 채용공고 update 수정
	@PostMapping("/recruit/{reNo}/edit")
	public String recruitUpdate(
			@Validated(UpdateGroup.class) @ModelAttribute("recruit") RecruitVO recruitVo
			,@SessionAttribute("authId")String companyId
			,BindingResult errors
			,@PathVariable("reNo")String reNo
			, Model model
			) {
		
		boolean valid = !errors.hasErrors();
		String viewName = null;
		
		if(valid) {
			recruitVo.setCompanyId(companyId);  // 기업 아이디
			ServiceResult result = reService.modifyRecruit(recruitVo);
			System.out.println();
			switch (result) {
			case OK:
//				 채용절차 안의 채용공고 리스트로 돌아가기????
				viewName = "company/recruit/recruitList";
				break;

			default:
				//수정 실패시 수정 폼으로 돌아가기
				viewName = "company/recruit/recruitUpdateForm";
				break;
			}
		}else {
			//검증 실패시 
			viewName = "company/recruit/recruitUpdateForm";
		}
		return viewName;
	}
//-------------------------------채용공고 삭제--------------------------------------------	
	
//채용공고 삭제(update)
	@ResponseBody
	@PostMapping("/recruit/{reNo}/del")
	public String DelRecruit(@PathVariable("reNo")String reNo) {
		String viewName = null;
		ServiceResult result= reService.modifyDelRecruit(reNo);
		String msg = "NG";
		if(result == ServiceResult.OK) {
			msg = "OK";
		}
		return msg;
	}
}
