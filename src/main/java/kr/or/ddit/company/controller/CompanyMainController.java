package kr.or.ddit.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.ddit.company.service.CompanyMainService;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.users.vo.NoticeVO;

@Controller
public class CompanyMainController {
	
	@Inject
	private CompanyMainService service;
	
	@GetMapping("/indexCompany")
	public String companyMainUI(
		@SessionAttribute(value = "authId", required = false) String authId
		, Model model
	) {
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("authId", authId);
		
		/* 채용공고 조회 관련 데이터 */
		int closedRecruitProcedureCount = service.retrieveClosedRecruitProcedureCount(authId);
		int unClosedRecruitProcedureCount = service.retrieveUnclosedRecruitProcedureCount(authId);
		List<RecruitVO> closedRecruitProcedureList = service.retrieveClosedRecruitProcedureList(authId);
		List<RecruitVO> unclosedRecruitProcedureList = service.retrieveUnclosedRecruitProcedureList(authId);
		
		resultMap.put("closedRecruitProcedureCount", closedRecruitProcedureCount);
		resultMap.put("unClosedRecruitProcedureCount", unClosedRecruitProcedureCount);
		resultMap.put("closedRecruitProcedureList", closedRecruitProcedureList);
		resultMap.put("unclosedRecruitProcedureList", unclosedRecruitProcedureList);
		
		/* 공지사항 조회 관련 데이터 */
		List<NoticeVO> noticeList = service.retrieveNoticeList(authId);
		resultMap.put("noticeList", noticeList);
		
		/* 기업정보 조회 관련 데이터 */
		List<CompanyVO> companyList = service.retrieveCompanyList(authId);
		resultMap.put("companyList", companyList);
		
		/* 진행중인 이미지 광고 개수 조회 */
		int countValidImgAdvrtList = service.retrievecountValidImgAdvrtList(authId);
		resultMap.put("countValidImgAdvrtList",countValidImgAdvrtList);
		
		/* 진행중인 배너 광고 개수 조회 */
		int countValidCmpAdvrtList = service.retrievecountValidCmpAdvrtList(authId);
		resultMap.put("countValidCmpAdvrtList",countValidCmpAdvrtList);
		
		model.addAttribute("resultMap", resultMap);
		
		return "index/indexCompany";
	}
	
}
