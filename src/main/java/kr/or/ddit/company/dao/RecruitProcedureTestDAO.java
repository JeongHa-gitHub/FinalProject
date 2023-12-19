package kr.or.ddit.company.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;

@Mapper
public interface RecruitProcedureTestDAO {

	/**
	 * 시험결과 조회
	 */
	public List<TestVO> selectTestResult(TestResultVO testResultVO);
	
	/**
	 * 시험점수 조회
	 */
	public List<TestResultVO> selectTestScore(TestResultVO testResultVO);
	
	/**
	 * 기술시험점수 등록
	 */
	public int updateTechScore(TestResultVO testResultVO);
	
	/**
	 * 지원절차 테이블 점수 등록
	 */
	public int updateAprocScore(Map<String, Object> paramMap);
}
