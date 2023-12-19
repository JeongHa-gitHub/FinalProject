package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;


import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.ComInfoReviewDAO;
import kr.or.ddit.users.vo.InterviewReviewVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ComInfoReviewServiceImpl implements ComInfoReviewService {
	
	private final ComInfoReviewDAO reviewDAO;
	
	@Override
	public void retrieveIntrReviewList(PaginationInfo<InterviewReviewVO> paging) {
		int totalRecord = reviewDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<InterviewReviewVO> dataList = reviewDAO.selectIntrViewList(paging);
		paging.setDataList(dataList);

	}

	@Override
	public InterviewReviewVO retrieveIntrReviewDetail(String intrevNo) {
		return reviewDAO.selectIntrViewDetail(intrevNo);
	}
	
	@Override
	public List<PointPayVO> retrieveValidTicketList(String usersId) {
		return reviewDAO.retrieveValidTicketList(usersId);
	}

	@Override
	public String retrieveMemberType(String usersId) {
		return reviewDAO.retrieveMemberType(usersId);
	}

}
