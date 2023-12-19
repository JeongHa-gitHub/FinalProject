package kr.or.ddit.common.service;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;

public interface MemberService {
	
	
	/**
	 * 
	 * 개인 회원가입
	 * @param membervo
	 * @return
	 */
	public ServiceResult createMember(MemberVO memberVo);
	
	/**
	 * 기업 회원가입
	 * @param inputData
	 * @return
	 */
	public ServiceResult createCompanyMember(MemberVO memberVo); 
	
	/**
	 * 아이디 중복 체크
	 * @param memId
	 * @return
	 */
	public ServiceResult retrieveMemId(@Param("memId")String memId);
	
	
	/**
	 * 비밀번호 찾기
	 * @param memberVO
	 * @return
	 */
	public ServiceResult selectPwFind(MemberVO memberVO);
	
	/**
	 * 비밀번호 랜덤 업데이트
	 * @param memberVO
	 * @return
	 */
	public ServiceResult modifyPw(MemberVO memberVO); 
	
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
