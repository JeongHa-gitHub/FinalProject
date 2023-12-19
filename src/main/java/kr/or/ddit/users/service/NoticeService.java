
package kr.or.ddit.users.service;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.NoticeVO;

public interface NoticeService {
	
	/**
	 * 게시글 상세조회
	 * @param noticeNo
	 * @return
	 */
	public NoticeVO retrieveNotice(String noticeNo);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveNoticeList(PaginationInfo<NoticeVO> paging);
	
}