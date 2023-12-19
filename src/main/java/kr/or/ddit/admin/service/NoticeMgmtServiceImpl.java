
package kr.or.ddit.admin.service;

import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.dao.NoticeMgmtDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.NoticeVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class NoticeMgmtServiceImpl implements NoticeMgmtService{


	@PostConstruct
	public void init() throws IOException {
		log.info("NoticeMgmtServiceImpl에 왔다");
	}
	
	
	private final NoticeMgmtDAO noticeMgmtDAO;
	
	@Override
	public NoticeVO retrieveNotice(String noticeNo) {
		NoticeVO notice = noticeMgmtDAO.selectNotice(noticeNo);
		if(notice==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 게시글이 없음.", noticeNo));
		
		noticeMgmtDAO.incrementLno(noticeNo);
		
		return notice;
	}

	@Override
	public void retrieveNoticeList(PaginationInfo<NoticeVO> paging) {
		int totalRecord = noticeMgmtDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<NoticeVO> dataList = noticeMgmtDAO.selectNoticeList(paging);
		paging.setDataList(dataList);
	}
	
	@Override
	public ServiceResult removeNotice(NoticeVO users) {
		int rowcnt = noticeMgmtDAO.deleteNotice(users.getNoticeNo());
		ServiceResult result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;		
		return result;
	}

	@Override
	public int createPost(NoticeVO noticeVO) {
		int result = noticeMgmtDAO.createPost(noticeVO);
		return result;
		
	}

}

	
