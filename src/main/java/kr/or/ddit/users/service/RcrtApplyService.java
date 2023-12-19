package kr.or.ddit.users.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;

public interface RcrtApplyService {
	
	/**
	 * 채용절차 조회
	 */
	
	public List<RProcedureVO> retrieveRecruitProcedure(String rcrtNo);
	
	/**
	 * 현재 채용절차 정보 조회
	 */
	public RProcedureVO retrieveCurrentProcedureInfo(Map<String, Object> paramMap);
	
	/**
	 * 지원 공고 조회
	 */
	public List<ApplyVO> retrieveApplicant(Map<String, Object> paramMap);
	
	/**
	 * 다음 채용절차 확인 조회
	 */
	public RProcedureVO retrieveNextProcedure(Map<String, Object> paramMap);
	
	/**
	 * 지원 하기(서류 또는 면접일시 바로 제출)
	 */
	public ServiceResult createRecruitProcedure(AProcedureVO aproc);
	
	/**
	 * 적성검사일 경우 시험 제출
	 */
	public ServiceResult createAptRecruitProcedure(TestResultOuterVO testOuter);
	
	/**
	 * 기술시험일 경우 시험 제출
	 * @param testOuter
	 * @return
	 */
	public ServiceResult createTechRecruitProcedure(TestResultOuterVO testOuter);
	
	
	/**
	 * 시험지 조회 
	 */
	public List<TestVO> retrieveTest(String testNo);
}
