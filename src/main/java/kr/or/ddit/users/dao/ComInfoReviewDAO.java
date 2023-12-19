package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.InterviewReviewVO;
import kr.or.ddit.users.vo.PointPayVO;

@Mapper
public interface ComInfoReviewDAO {
	
	public int selectTotalRecord(PaginationInfo<InterviewReviewVO> paging);
	
	public List<InterviewReviewVO> selectIntrViewList(PaginationInfo<InterviewReviewVO> paging);
	
	public InterviewReviewVO selectIntrViewDetail(String intrevNo);
	
	public List<PointPayVO> retrieveValidTicketList(String usersId);

	public String retrieveMemberType(String usersId);


}
