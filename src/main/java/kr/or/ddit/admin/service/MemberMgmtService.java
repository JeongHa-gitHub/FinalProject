
package kr.or.ddit.admin.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.vo.PaginationInfo;

public interface MemberMgmtService {
	
	/**
	 * 게시글 상세조회
	 * @param memId
	 * @return
	 */
	public MemberVO retrieveMember(String memId);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveMemberList(PaginationInfo<MemberVO> paging);
	
	/**
	 * 회원 탈퇴
	 * @param 
	 */
	public ServiceResult removeMember(MemberVO users);
	
}
