package kr.or.ddit.users.service;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.dao.TicketMnmtDAO;
import kr.or.ddit.users.vo.CouponListVO;
import kr.or.ddit.users.vo.CouponVO;
import kr.or.ddit.users.vo.TicketMnmtVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class TicketMnmtServiceImpl implements TicketMnmtService{
	
	
	@Inject
	private final TicketMnmtDAO ticketMnmtDAO;
	
	
	
	@Override
	@Transactional
	public List<TicketMnmtVO> selectTicketList() {
		List<TicketMnmtVO> ticketList = ticketMnmtDAO.selectTicketList();
		return ticketList;
	}



	@Override
	@Transactional
	public TicketMnmtVO selectTicketDetail(String ticketNo) {
		TicketMnmtVO TicketDetail = ticketMnmtDAO.selectTicketDetail(ticketNo);
		return TicketDetail;
	}



	@Override
	@Transactional
	public List<CouponVO> selectCouponDetail(String authId) {
		List<CouponVO> couponList = ticketMnmtDAO.selectCouponDetail(authId);
		return couponList;
	}



	@Override
	@Transactional
	public MemberVO selectUserPass(String memId) {
		MemberVO userPass = ticketMnmtDAO.selectUserPass(memId);
		return userPass;
	}



	@Override
	@Transactional
	public List<CouponListVO> selectMyCouponList(String authId) {
		List<CouponListVO> myCouponList = ticketMnmtDAO.selectMyCouponList(authId);
		return myCouponList;
	}



	@Override
	public int countMyCouponList(String authId) {
		int myCouponCount = ticketMnmtDAO.countMyCouponList(authId);
		return myCouponCount;
	}

}
