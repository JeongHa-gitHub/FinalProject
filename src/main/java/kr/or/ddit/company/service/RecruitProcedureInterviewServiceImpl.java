package kr.or.ddit.company.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.RecruitProcedureDAO;
import kr.or.ddit.company.dao.RecruitProcedureInterviewDAO;
import kr.or.ddit.company.vo.InterviewSchdVO;

@Service
public class RecruitProcedureInterviewServiceImpl implements RecruitProcedureInterviewService{

	@Inject
	private RecruitProcedureInterviewDAO dao;
	
	/* 면접일정 등록 */
	@Override
	public ServiceResult createInterviewSchd(InterviewSchdVO interviewSchdVO) {
		int rowcnt = dao.insertInterviewSchd(interviewSchdVO);
		
		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}
	
	/* 면접알림 테이블 등록 */
	@Override
	public ServiceResult createIntrMail(Map<String, String> paramMap) {
		int rowcnt = dao.insertIntrMail(paramMap);
		
		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}
	
	/* 면접일정 조회 */
	@Override
	public InterviewSchdVO retrieveInterviewSchd(InterviewSchdVO interviewSchdVO) {
		return dao.selectInterviewSchd(interviewSchdVO);
	}
	
	/* 면접일정 수정 */
	@Override
	public ServiceResult modifyInterviewSchd(InterviewSchdVO interviewSchdVO) {
		int rowcnt = dao.updateInterviewSchd(interviewSchdVO);
		
		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

	/* 면접일정 삭제 */
	@Override
	public ServiceResult removeInterviewSchd(String intrNo) {
		int rowcnt = dao.deleteInterviewSchd(intrNo);
		
		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}


}
