package kr.or.ddit.company.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureOuterVO;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.company.vo.ResumeFormVO;
import kr.or.ddit.company.vo.ResumeScoreVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.ResumeAttatchVO;

public interface RecruitProcedureService {
	/**
	 * 채용공고 목록 조회
	 */
	public void retrieveRecruitList(PaginationInfo<Map<String, Object>> paging);
	
	/**
	 * 채용절차 조회
	 */
	public List<RProcedureVO> retrieveRecruitProcedure(String rcrtNo);
	
	/**
	 * 현재 채용절차 정보 조회
	 */
	public RProcedureVO retrieveCurrentProcedureInfo(Map<String, Object> paramMap);
	
	/**
	 * 서류전형의 지원자 목록 조회
	 */
	public void retrieveApplicantList(PaginationInfo<AProcedureVO> paging);

	/**
	 * 채점표 갯수 조회
	 */
	public int retrieveResumeScoreFormCount(Map<String, Object> paramMap);
	
	/**
	 * 합불여부 저장
	 */
	public ServiceResult modifyPassStatus(AProcedureOuterVO outerVO);
	
	/**
	 * 마감여부 저장
	 */
	public ServiceResult modifyCloseStatus(AProcedureOuterVO outerVO, Map<String, Object> paramMap);
	
	/**
	 * 기업정보 조회
	 */
	public CompanyVO retrieveCompanyInfo(String companyId);

	/**
	 * 메일 - 채용공고 정보 조회
	 */
	public RecruitVO retrieveRecruitInfo(String rcrtNo);
	
	/**
	 * 메일 - 채용절차 지원자 이메일 조회
	 */
	public List<String> retrieveApplicantEmailList(AProcedureVO aprocVO);
	

	/**
	 * 엑셀 - 지원자 목록 조회
	 */
	public List<AProcedureVO> retrieveApplicantList(Map<String, Object> paramMap);
}
