package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.InterviewDAO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InterviewServiceImpl implements InterviewService{
	
	private final InterviewDAO dao;

	@Override
	public void retrieveInterviewSchdList(PaginationInfo<InterviewSchdVO> paging) {
		int totalRecord =dao.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<InterviewSchdVO> dataList = dao.selectInterviewSchdList(paging);
		paging.setDataList(dataList);
	}

}
