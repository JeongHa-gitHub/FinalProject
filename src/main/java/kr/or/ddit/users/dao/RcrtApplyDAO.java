package kr.or.ddit.users.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;

@Mapper
public interface RcrtApplyDAO {
	
	/**
	 * 채용절차 조회
	 * @param usersId
	 * @return
	 */
	public List<RProcedureVO> selectRecruitProcedure(String rcrtNo);
	
	/**
	 * 현재 채용절차 정보 조회
	 * @param paramMap
	 * @return
	 */
	public RProcedureVO selectCurrentProcedureInfo(Map<String, Object> paramMap);
	
	/**
	 * 내가 지원한 공고 중 서류 결과 확인 조회
	 * @param paramMap
	 * @return
	 */
	public List<ApplyVO> selectResumeApplicant(Map<String, Object> paramMap);
	
	/**
	 * 내가 지원한 공고 중 적성, 기술검사 확인 조회
	 * @param paramMap
	 * @return
	 */
	public List<ApplyVO> selectTestApplicant(Map<String, Object> paramMap);
	
	/**
	 * 내가 지원한 공고 중 면접 확인 조회
	 * @param paramMap
	 * @return
	 */
	public List<ApplyVO> selectInterviewApplicant(Map<String, Object> paramMap);
	
	/**
	 * 내가 지원할 다음 절차 조회
	 * @param paramMap
	 * @return
	 */
	public RProcedureVO selectNextProcedure(Map<String, Object> paramMap);
	
	/**
	 * 내가 지원한 공고 중 다음 절차 지원하기
	 * @param apply
	 * @return
	 */
	public int insertRecruitProcedure(AProcedureVO aproc);
	
	/**
	 * 내가 지원한 공고 중 다음 절차가 적성검사일 때 insert 수행 
	 * @param apply
	 * @return
	 */
	public int insertTestRecruitProcedure(TestResultVO testOuter);
	
	
	/**
	 * 시험문제 조회
	 * @param testNo
	 * @return
	 */
	public List<TestVO> selectTest(String testNo);
	
	/**
	 * 정답과 지원자 답 비교 조회
	 * @param testOuter
	 * @return
	 */
	public TestResultVO selectAptResultScore(TestResultVO testOuter);
	
	
	/**
	 * 비교 조회한 결과 점수 update
	 * @param aprocScr
	 * @return
	 */
	public int aptScoreUpdate(AProcedureVO aproc);
	
	

}
