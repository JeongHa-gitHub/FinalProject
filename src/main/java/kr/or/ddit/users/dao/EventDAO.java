package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.EventVO;
import kr.or.ddit.users.vo.NoticeVO;

@Mapper
public interface EventDAO {

	/**
	 * 글조회
	 * @param evntNo
	 * @return
	 */
	public EventVO selectEvent(@Param("evntNo") String evntNo);
	
	/**
	 * 조회수 증가
	 * @param evntLno
	 * @return
	 */
	public int evntLno(String evntLno);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<EventVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<EventVO> selectEventList(PaginationInfo<EventVO> paging);
	
}
