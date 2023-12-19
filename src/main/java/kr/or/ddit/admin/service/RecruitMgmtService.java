
package kr.or.ddit.admin.service;

import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.paging.vo.PaginationInfo;

public interface RecruitMgmtService {
	
	/**
	 * 게시글 상세조회
	 * @param rcrtNo
	 * @return
	 */
	public RecruitVO retrieveRecruit(String rcrtNo);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveRecruitList(PaginationInfo<RecruitVO> paging);
	
}
