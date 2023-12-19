package kr.or.ddit.company.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;

/**
 * @author 김태형
 * @since 2023.11.16
 * @version 1.0
 **/
public interface CompanyMemInfoService {

	public MemberVO retrieveCompany(String memId);
	
	public ServiceResult removeCompany(MemberVO company);
	
	public ServiceResult modifyCompany(MemberVO users);

	//기업마이페이지 수정
	public int editPost(MemberVO memberVO);

	//기업회원탈퇴
	public int exitPost(String memId);
}
