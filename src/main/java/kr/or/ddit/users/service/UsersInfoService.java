package kr.or.ddit.users.service;

import java.io.IOException;

import kr.or.ddit.common.vo.MemberVO;

public interface UsersInfoService {
	
	public MemberVO retrieveUsers(String memId);
	
	public int editPost(MemberVO memberVO) throws IOException;
	
	public int exitPost(String memId);
	

}
