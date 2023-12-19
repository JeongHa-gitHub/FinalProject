package kr.or.ddit.users.service;

import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.paging.vo.PaginationInfo;

public interface InterviewService {
	
	/**
	 * 면접일정 리스트 조회
	 * @param paging
	 */
	public void retrieveInterviewSchdList(PaginationInfo<InterviewSchdVO> paging);

}
