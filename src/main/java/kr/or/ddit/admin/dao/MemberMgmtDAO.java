
package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Mapper
public interface MemberMgmtDAO {
	
	/**
	 * 글조회
	 * @param memId
	 * @return
	 */
	public MemberVO selectMember(@Param("memId") String memId);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<MemberVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<MemberVO> selectMemberList(PaginationInfo<MemberVO> paging);
	
	/**
	 * 이전글 다음글
	 * @param memId
	 * @return
	 */
	public MemberVO movePage(String memId);
	
	/**
	 * 탈퇴 처리
	 * @param memId
	 * @return
	 */
	public int deleteMember(String memId);
	
}
