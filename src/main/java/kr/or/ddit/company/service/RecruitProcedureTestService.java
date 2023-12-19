package kr.or.ddit.company.service;

import java.util.List;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;

public interface RecruitProcedureTestService {

	/**
	 * 시험결과 조회
	 */
	public List<TestVO> retrieveTestResult(TestResultVO testResultVO);
	
	/**
	 * 시험점수 조회
	 */
	public List<TestResultVO> retrieveTestScore(TestResultVO testResultVO);
	
	/**
	 * 기술시험점수 등록
	 */
	public ServiceResult modifyTechScore(TestResultOuterVO outerVO);
}
