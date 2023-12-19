
package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.InterviewReviewVO;

@Mapper
public interface InterviewMgmtDAO {
	
	/**
	 * 글조회
	 * @param intrevNo
	 * @return
	 */
	public InterviewReviewVO selectInterview(@Param("intrevNo") String intrevNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<InterviewReviewVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<InterviewReviewVO> selectInterviewList(PaginationInfo<InterviewReviewVO> paging);
	
	/**
	 * 이전글 다음글
	 * @param intrevNo
	 * @return
	 */
	public InterviewReviewVO movePage(String intrevNo);

	
	/**
	 * 사업자등록번호 상세조회
	 * @param intrevNo
	 * @return
	 */
	public InterviewReviewVO selectInterviewInfo(@Param("intrevNo") String intrevNo);

	/**
	 * 승인 여부 저장
	 */
	public int updatePassStatus(InterviewReviewVO interviewReviewVO);
	
}
