package kr.or.ddit.company.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.RecruitProcedureDAO;
import kr.or.ddit.company.dao.RecruitProcedureTestDAO;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;

@Service
public class RecruitProcedureTestServiceImpl implements RecruitProcedureTestService{

	@Inject
	private RecruitProcedureTestDAO dao;
	
	/* 시험결과 조회 */
	@Override
	public List<TestVO> retrieveTestResult(TestResultVO testResultVO) {
		return dao.selectTestResult(testResultVO);
	}

	/* 시험점수 조회 */
	@Override
	public List<TestResultVO> retrieveTestScore(TestResultVO testResultVO) {
		return dao.selectTestScore(testResultVO);
	}

	/* 기술시험점수 등록 */
	@Override
	public ServiceResult modifyTechScore(TestResultOuterVO outerVO) {
		boolean successFlag = true;
		
		int totalScore = 0;
		for(TestResultVO result : outerVO.getTestResultVO()) {
			int rowcnt =  dao.updateTechScore(result);
			if(rowcnt > 0) {
				successFlag &= true;
			}else {
				successFlag &= false;
			}
			
			totalScore += result.getTechScore();
		}
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("testResultVO", outerVO.getTestResultVO().get(0));
		paramMap.put("totalScore", totalScore);
		
		int totalScoreCnt = dao.updateAprocScore(paramMap);
		if(totalScoreCnt > 0) {
			successFlag &= true;
		}else {
			successFlag &= false;
		}
		
		
		ServiceResult result = null;
		
		if(successFlag) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}


}
