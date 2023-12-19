package kr.or.ddit.users.service;


import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.LikeCompanyVO;


/**
 * @author 이기웅
 * @since 2023.11.09
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     이기웅       최초작성
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 * </pre>
 *
 */
public interface ComInfoService {
	
	/**
	 * 기업정보 목록 조회(검색 및 페이징)
	 * @param paging
	 */
	public void retrieveCominfoList(PaginationInfo<ComInfoVO> paging);
	
	/**
	 * 기업정보 상세 조회
	 * @param companyId
	 * @return
	 */
	public ComInfoVO retrieveCominfo(String companyId);
	
	/**
	 * 기업정보 등록
	 * @param cominfo
	 * @return
	 */
	public ServiceResult createCominfo(ComInfoVO cominfo);
	
	/**
	 * 관심기업 체크
	 * @param likeCom
	 * @return
	 */
	public ServiceResult checkLikeCom(LikeCompanyVO likeCom);
	
	/**
	 * 관심기업 등록
	 * @param likeCom
	 * @return
	 */
	public ServiceResult createLikeCom(LikeCompanyVO likeCom);
	
	/**
	 * 관심기업 삭제
	 * @param likeCom
	 * @return
	 */
	public ServiceResult deleteLikeCom(LikeCompanyVO likeCom);
	
	public MemberVO retrieveMember(String usersId);
	

}
