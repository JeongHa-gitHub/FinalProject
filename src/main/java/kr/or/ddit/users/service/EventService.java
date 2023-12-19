package kr.or.ddit.users.service;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.EventAttatchVO;
import kr.or.ddit.users.vo.EventVO;

public interface EventService {

	/**
	 * 게시글 상세조회
	 * @param evntNo
	 * @return
	 */
	public EventVO retrieveEvent(String evntNo);
	
	public EventAttatchVO retrieveAttatch(int evntattNo);

	public void retrieveEventList(PaginationInfo<EventVO> paging);
}
