package kr.or.ddit.users.service;

import java.util.List;

import kr.or.ddit.users.vo.CouponVO;
import kr.or.ddit.users.vo.PointPayVO;

public interface PointPaySerivce {

	/**
	 * 유저에 포인트 결제 내역을 저장
	 * @param pointpayVO
	 */
	public void savePointPay(PointPayVO pointpayVO);
	
	/**
	 * 비동기로 db에 이용권 구매 데이터 저장
	 * @param pointpayVO
	 */
	public void usePointPay(PointPayVO pointpayVO);

	/**
	 * 비동기로 db에 쿠폰 사용완료 데이터 저장
	 * @param pointpayVO
	 */
	public void useCoupon(CouponVO couponVO);
	
	/**
	 * db에 있는 사용자 포인트 내역 불러오기
	 * @param id
	 * @return
	 */
	public List<PointPayVO> selectMyPoint(PointPayVO pointpayVO);

	/**
	 * db에 있는 사용자 이용권 내역 불러오기
	 * @param id
	 * @return
	 */
	public List<PointPayVO> selectMyTicket(String id);

	/**
	 * 마이페이지에 있는 이용권 '갯수' 가져오기
	 * @param authId
	 * @return
	 */
	public int countMyTicketList(String authId);

	
	
	
	
	
	
	
	
	
	
	
	
}

