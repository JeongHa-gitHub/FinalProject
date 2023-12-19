
package kr.or.ddit.admin.service;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.CouponVO;

public interface CouponMgmtService {
	
	/**
	 * 게시글 상세조회
	 * @param cpnNo
	 * @return
	 */
	public CouponVO retrieveCoupon(String cpnNo);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveCouponList(PaginationInfo<CouponVO> paging);
	
}
