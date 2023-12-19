
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.dao.CouponMgmtDAO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.CouponVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CouponMgmtServiceImpl implements CouponMgmtService{
	
	private final CouponMgmtDAO couponMgmtDAO;
	
	@Override
	public CouponVO retrieveCoupon(String cpnNo) {
		CouponVO coupon = couponMgmtDAO.selectCoupon(cpnNo);
		if(coupon==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 게시글이 없음.", cpnNo));
		
		return coupon;
	}
	
	@Override
	public void retrieveCouponList(PaginationInfo<CouponVO> paging) {
		int totalRecord = couponMgmtDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<CouponVO> dataList = couponMgmtDAO.selectCouponList(paging);
		paging.setDataList(dataList);
	}

}

	


