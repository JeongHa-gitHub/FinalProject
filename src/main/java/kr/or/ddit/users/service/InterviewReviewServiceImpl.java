package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.InterviewReviewDAO;
import kr.or.ddit.users.vo.InterviewReviewVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InterviewReviewServiceImpl implements InterviewReviewService{
	private final InterviewReviewDAO dao;

	@Override
	public InterviewReviewVO retrieveReview(String intrevNo) {
		return dao.selectReview(intrevNo);
	}

	@Override
	public void retrieveReviewList(PaginationInfo<InterviewReviewVO> paging) {
		int totalRecord = dao.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<InterviewReviewVO> dataList = dao.selectReviewList(paging);
		paging.setDataList(dataList);
		
	}
	
	

}
