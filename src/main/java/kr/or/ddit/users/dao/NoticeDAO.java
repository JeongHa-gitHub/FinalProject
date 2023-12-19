package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.NoticeVO;

@Mapper
public interface NoticeDAO {
	
	/**
	 * 글 상세조회
	 * @param noticeNo
	 * @return
	 */
	public NoticeVO selectNotice(@Param("noticeNo") String noticeNo);
	
	/**
	 * 조회수 증가
	 * @param noticeNo
	 * @return
	 */
	public int incrementLno(String noticeNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<NoticeVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<NoticeVO> selectNoticeList(PaginationInfo<NoticeVO> paging);
	
	
	
	
	
}
