package kr.or.ddit.company.service;

import java.util.Map;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.InterviewSchdVO;

public interface RecruitProcedureInterviewService {

	/**
	 * 면접일정 등록
	 */
	public ServiceResult createInterviewSchd(InterviewSchdVO interviewSchdVO);

	/**
	 * 면접알림 테이블 등록
	 */
	public ServiceResult createIntrMail(Map<String, String> paramMap);
	
	/**
	 * 면접일정 조회
	 */
	public InterviewSchdVO retrieveInterviewSchd(InterviewSchdVO interviewSchdVO);
	
	/**
	 * 면접일정 수정
	 */
	public ServiceResult modifyInterviewSchd(InterviewSchdVO interviewSchdVO);
	
	/**
	 * 면접일정 삭제
	 */
	public ServiceResult removeInterviewSchd(String intrNo);

}
