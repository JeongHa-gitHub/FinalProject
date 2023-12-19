package kr.or.ddit.users.service;

import java.util.List;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.InterviewReviewVO;
import kr.or.ddit.users.vo.PointPayVO;

public interface ComInfoReviewService {

	public void retrieveIntrReviewList(PaginationInfo<InterviewReviewVO> paging);
	
	public InterviewReviewVO retrieveIntrReviewDetail(String intrevNo);
	
	public List<PointPayVO> retrieveValidTicketList(String usersId);

	public String retrieveMemberType(String usersId);
}
