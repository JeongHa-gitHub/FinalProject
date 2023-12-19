
package kr.or.ddit.admin.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.NoticeVO;

public interface NoticeMgmtService {
	
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
	
	/**
	 * 글 삭제
	 * @param users
	 */
	public ServiceResult removeNotice(NoticeVO users);
	
	/**
	 * 글 등록
	 * @param noticeVO
	 */
	public int createPost(NoticeVO noticeVO);
	
}
