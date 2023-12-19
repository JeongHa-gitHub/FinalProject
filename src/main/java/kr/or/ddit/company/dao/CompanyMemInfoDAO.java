package kr.or.ddit.company.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.vo.MemberVO;

/**
 * @author 김태형
 * @since 2023.11.16
 * @version 1.0
 **/
@Mapper
public interface CompanyMemInfoDAO {
	public MemberVO selectCompany(@Param("memId") String memId);
	
	public int deleteCompany(String memId);
	
	public int updateCompany(MemberVO member);

	//기업마이페이지 수정 
	public int editMemberPost(MemberVO memberVO);
	//기업체 명 수정
	public int editCompanyPost(MemberVO memberVO);

	//기업회원 탈퇴
	public int exitPost(String memId);
	
	
}
