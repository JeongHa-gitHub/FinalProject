package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.InterviewReviewVO;

@Mapper
public interface InterviewReviewDAO {
	
	public InterviewReviewVO selectReview(String intrevNo);
	
	public int selectTotalRecord(PaginationInfo<InterviewReviewVO> paging);
	
	public List<InterviewReviewVO> selectReviewList(PaginationInfo<InterviewReviewVO> paging);
}
