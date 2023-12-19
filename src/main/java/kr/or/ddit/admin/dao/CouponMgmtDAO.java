
package kr.or.ddit.admin.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.CouponVO;

@Mapper
public interface CouponMgmtDAO {
	
	/**
	 * 글조회
	 * @param cpnNo
	 * @return
	 */
	public CouponVO selectCoupon(@Param("cpnNo") String cpnNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<CouponVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<CouponVO> selectCouponList(PaginationInfo<CouponVO> paging);
	
	/**
	 * 이전글 다음글
	 * @param cpnNo
	 * @return
	 */
	public CouponVO movePage(String cpnNo);
	
}
