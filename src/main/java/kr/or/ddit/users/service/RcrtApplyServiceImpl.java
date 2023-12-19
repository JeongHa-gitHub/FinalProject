package kr.or.ddit.users.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.binding.MapperMethod.ParamMap;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.TestItemVO;
import kr.or.ddit.company.vo.TestQstnVO;
import kr.or.ddit.company.vo.TestResultOuterVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.users.dao.RcrtApplyDAO;

@Service
public class RcrtApplyServiceImpl implements RcrtApplyService {
	
	@Inject
	private RcrtApplyDAO dao;

	/**
	 * 채용절차 조회
	 */
	@Override
	public List<RProcedureVO> retrieveRecruitProcedure(String rcrtNo) {
		
		return dao.selectRecruitProcedure(rcrtNo);
	}

	/**
	 * 채용절차 목록 조회
	 */
	@Override
	public RProcedureVO retrieveCurrentProcedureInfo(Map<String, Object> paramMap) {
		
		return dao.selectCurrentProcedureInfo(paramMap);
	}

	/**
	 * 현재 채용절차 상세조회
	 */
	@Override
	public List<ApplyVO> retrieveApplicant(Map<String, Object> paramMap) {
		
		RProcedureVO currProcedureInfo = retrieveCurrentProcedureInfo(paramMap);
		
		String comCodeNm = currProcedureInfo.getRprocTypeno();
		
		List<ApplyVO> dataList = null;
		
		switch (comCodeNm) {
		case "RE01":
				dataList = dao.selectResumeApplicant(paramMap);
			break;
		case "RE02": case "RE03":
			dataList = dao.selectTestApplicant(paramMap);
		break;
		default:
				dataList = dao.selectInterviewApplicant(paramMap);
			break;
		}
		System.out.println(dataList);
		return dataList;
	}

	/**
	 * 다음 채용절차 조회
	 */
	@Override
	public RProcedureVO retrieveNextProcedure(Map<String, Object> paramMap) {
		return dao.selectNextProcedure(paramMap);
	}

	@Override
	public ServiceResult createRecruitProcedure(AProcedureVO aproc) {
		int cnt = dao.insertRecruitProcedure(aproc);
		ServiceResult result = null;
		if(cnt>0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAIL;
		}
		return result;
	}
	
	/**
	 * 시험지 조회
	 */
	@Override
	public List<TestVO> retrieveTest(String testNo) {
		return dao.selectTest(testNo);
	}

	/**
	 * 적성검사 제출
	 */
	@Override
	public ServiceResult createAptRecruitProcedure(TestResultOuterVO testOuter) {
		boolean successFlag = true;
		
		int totalScore = 0;
		AProcedureVO aproc = new AProcedureVO();
		
		for (TestResultVO testResult : testOuter.getTestResultVO()) {
		    int cnt = dao.insertTestRecruitProcedure(testResult);		    
	    
		    if (cnt > 0) {
		        // dao.insertTestRecruitProcedure가 성공한 경우에만 dao.selectAptResultScore를 수행
		        TestResultVO aptTestResult = dao.selectAptResultScore(testResult);

		        
		        String qstnAnswer = aptTestResult.getQstnAnswer();
		        String rsltSelect = aptTestResult.getRsltSelect();
		        
		        if(qstnAnswer.equals(rsltSelect)) {
		        	totalScore += 10;
		        }
		        
		        successFlag &= true;
		    } else {
		        successFlag &= false;
		    }
		    
		    aproc.setAplNo(testResult.getAplNo());
		    aproc.setRprocOrder(testResult.getRprocOrder());
		}
		
		aproc.setAprocScr(totalScore);
		
		
		dao.aptScoreUpdate(aproc);
		
		ServiceResult result = successFlag ? ServiceResult.OK : ServiceResult.FAIL;
		return result;
	}


	/**
	 * 기술시험 제출
	 */
	@Override
	public ServiceResult createTechRecruitProcedure(TestResultOuterVO testOuter) {
		boolean successFlag = true;
			
		
		for(TestResultVO testResult : testOuter.getTestResultVO()) {
			int cnt = dao.insertTestRecruitProcedure(testResult);
			
			if(cnt > 0) {
				successFlag &= true;
			}else {
				successFlag &= false;
			}
		}
					
		ServiceResult result = null;
		if(successFlag) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

}
