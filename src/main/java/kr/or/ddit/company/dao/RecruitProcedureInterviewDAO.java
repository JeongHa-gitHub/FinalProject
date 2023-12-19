package kr.or.ddit.company.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.InterviewSchdVO;

@Mapper
public interface RecruitProcedureInterviewDAO {

	/**
	 * 면접일정 등록
	 */
	public int insertInterviewSchd(InterviewSchdVO interviewSchdVO);
	
	/**
	 * 면접알림 테이블 등록
	 */
	public int insertIntrMail(Map<String, String> paramMap);
	
	/**
	 * 면접일정 조회
	 */
	public InterviewSchdVO selectInterviewSchd(InterviewSchdVO interviewSchdVO);
	
	/**
	 * 면접일정 수정
	 */
	public int updateInterviewSchd(InterviewSchdVO interviewSchdVO);
	
	/**
	 * 면접일정 삭제
	 */
	public int deleteInterviewSchd(String intrNo);
	
}
