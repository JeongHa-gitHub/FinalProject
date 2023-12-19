package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.vo.CouponListVO;
import kr.or.ddit.users.vo.CouponVO;
import kr.or.ddit.users.vo.TicketMnmtVO;
@Mapper
public interface TicketMnmtDAO {

	/**
	 * 비동기로 db에 있는 이용권 목록 list띄우기
	 * @param ticketMnmtVO
	 */
	public List<TicketMnmtVO> selectTicketList();

	/**
	 * 비동기로 db에 있는 이용권 상세 내용 가져오기
	 * @return
	 */
	public TicketMnmtVO selectTicketDetail(String ticketNo);
	
	/**
	 * 비동기로 사용자에 따른 db에 있는 쿠폰 목록 가져오기
	 * @param authId
	 * @return
	 */
	public List<CouponVO> selectCouponDetail(String authId);
	
	/**
	 * 비동기로 사용자에 따른 db에 있는 비밀 번호 가져오기
	 * @param authId
	 * @return
	 */
	public MemberVO selectUserPass(String memId);

	/**
	 * 마이페이지에 있는 쿠폰 리스트 가져오기
	 * @param authId
	 * @return
	 */
	public List<CouponListVO> selectMyCouponList(String authId);
	
	/**
	 * 마이페이지에 있는 쿠폰 리스트 '갯수' 가져오기
	 * @param authId
	 * @return
	 */
	public int countMyCouponList(String authId);


}



