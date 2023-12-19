
package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.NoticeVO;

@Mapper
public interface NoticeMgmtDAO {
	
	/**
	 * 글조회
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
	
	/**
	 * 이전글 다음글
	 * @param noticeNo
	 * @return
	 */
	public NoticeVO movePage(String noticeNo);

	/**
	 * 삭제 처리
	 * @param noticeNo
	 * @return
	 */
	public int deleteNotice(String noticeNo);
	
	/**
	 * 등록
	 * @param noticeVO
	 * @return
	 */
	public int createPost(NoticeVO noticeVO);
	
}
