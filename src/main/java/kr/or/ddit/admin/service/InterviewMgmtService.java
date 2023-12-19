
package kr.or.ddit.admin.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.InterviewReviewVO;

public interface InterviewMgmtService {
	
	/**
	 * 인터뷰후기 상세조회
	 * @param intrevNo
	 * @return
	 */
	public InterviewReviewVO retrieveIntrvw(String intrevNo);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveIntrvwList(PaginationInfo<InterviewReviewVO> paging);
	
	/**
	 * 승인여부 저장
	 */
	public ServiceResult modifyPassStatus(InterviewReviewVO interviewReviewVO);

	
}
