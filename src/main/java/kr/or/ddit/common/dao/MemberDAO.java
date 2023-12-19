package kr.or.ddit.common.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.vo.UsersVO;

/**
 * @author 김소원
 * @since 2023. 11. 9.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre> 
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     김소원       최초작성
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 * </pre>
 * 
 * 
 */
@Mapper
public interface MemberDAO { 
	
	/**
	 * 아이디 패스워드를 기반으로 사용자 조회
	 * @param inputData 
	 * @return
	 */
	public MemberVO selectUsersForAuth (MemberVO inputData);
	
	/**
	 * 개인 회원가입
	 * @param inputData
	 * @return
	 */
	public int createMember (MemberVO inputData);
	
	/**
	 * 기업 회원가입
	 * @param inputData
	 * @return
	 */
	public int createCompanyMember(MemberVO inputData); 
	
	/**
	 * 아이디 중복 체크
	 * @param memId
	 * @return
	 */
	public int selectMemId(@Param("memId")String memId);
	
	
	/**
	 * 비밀번호 찾기
	 * @param memberVO
	 * @return
	 */
	public int selectPwFind(MemberVO memberVO);
	
	
	/**
	 * 비밀번호 랜덤 업데이트
	 * @param memberVO
	 * @return
	 */
	public int modifyPw(MemberVO memberVO);
	
	/**
	 * 개인 회원 아이디 찾기
	 * @param usersVo
	 * @return
	 */
	public MemberVO selectIdFind(MemberVO memberVO);
	
	/**
	 * 기업 회원 아이디 찾기
	 * @param memberVO
	 * @return
	 */
	public MemberVO companySelectIdFid(MemberVO memberVO);
	
	
	
	
}
