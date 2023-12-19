
package kr.or.ddit.admin.service;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.EventVO;

public interface EventMgmtService {
	
	/**
	 * 게시글 상세조회
	 * @param evntNo
	 * @return
	 */
	public EventVO retrieveEvent(String evntNo);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveEventList(PaginationInfo<EventVO> paging);
	
}
