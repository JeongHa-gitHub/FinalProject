package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.NoticeDAO;
import kr.or.ddit.users.vo.NoticeVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService{
	private final NoticeDAO noticeDAO;
	
	@Override
	public NoticeVO retrieveNotice(String noticeNo) {
		NoticeVO notice = noticeDAO.selectNotice(noticeNo);
		if(notice==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 게시글이 없음.", noticeNo));
		
		noticeDAO.incrementLno(noticeNo);
		
		return notice;
	}
	
	@Override
	public void retrieveNoticeList(PaginationInfo<NoticeVO> paging) {
		int totalRecord = noticeDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<NoticeVO> dataList = noticeDAO.selectNoticeList(paging);
		paging.setDataList(dataList);
	}
}

	
