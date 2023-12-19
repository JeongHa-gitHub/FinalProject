package kr.or.ddit.users.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.vo.UsersVO;

@Mapper
public interface UsersInfoDAO {
	
	/**
	 * 개인회원 마이페이지 - 정보 조회
	 * @param memId
	 * @return
	 */
	public MemberVO selectUsers(@Param("memId") String memId);
	
	/**
	 * member - 수정
	 * @param member
	 * @return
	 */
	public int editMemberPost(MemberVO member);
	
	/**
	 * users - 수정
	 * @param member
	 * @return
	 */
	public int editUsersPost(MemberVO member);
	
	/**
	 * 개인회원 마이페이지 - 탈퇴 처리
	 * @param memId
	 * @return
	 */
	public int exitPost(String memId);
	
	

}
