package kr.or.ddit.users.service;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import kr.or.ddit.users.dao.PointPayDAO;
import kr.or.ddit.users.vo.CouponVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PointPayServiceImpl implements PointPaySerivce{
	
	
	@Inject
	private final PointPayDAO pointPayDAO;
	
	@Override
	@Transactional
	public void savePointPay(PointPayVO pointpayVO) {
		int result = pointPayDAO.savePointPay(pointpayVO);
	}

	@Override
	@Transactional
	public void usePointPay(PointPayVO pointpayVO) {
		int result = pointPayDAO.usePointPay(pointpayVO);		
	}

	@Override
	@Transactional
	public void useCoupon(CouponVO couponVO) {
		int result = pointPayDAO.useCoupon(couponVO);	
	}
	
	@Override
	@Transactional
	public List<PointPayVO> selectMyPoint(PointPayVO pointpayVO) {
		List<PointPayVO> myPointList = pointPayDAO.selectMyPoint(pointpayVO);
		return myPointList;
	}

	@Override
	public List<PointPayVO> selectMyTicket(String id) {
		List<PointPayVO> myTicketList = pointPayDAO.selectMyTicket(id);
		return myTicketList;
	}

	@Override
	public int countMyTicketList(String authId) {
		int myTicketCount = pointPayDAO.countMyTicketList(authId);
		return myTicketCount;
	}

}
