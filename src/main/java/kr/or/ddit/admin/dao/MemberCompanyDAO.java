
package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Mapper
public interface MemberCompanyDAO {
	
	/**
	 * 글조회
	 * @param memId
	 * @return
	 */
	public MemberVO selectMember(@Param("memId") String memId);
	
	
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
	
	
	/**
	 * 상세조회
	 * @param companyId
	 * @return
	 */
	public ComInfoVO selectCompanyInfo(@Param("companyId") String companyId);
	
	/**
	 * 페이징
	 * @param paging
	 * @return
	 */
	public int countMembers(PaginationInfo<MemberVO> paging); 
	
}
