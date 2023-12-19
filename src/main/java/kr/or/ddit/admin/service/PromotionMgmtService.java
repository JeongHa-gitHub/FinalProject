package kr.or.ddit.admin.service;

import java.util.List;

import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.users.vo.TicketMnmtVO;

public interface PromotionMgmtService {

	/**
	 * 비동기로 db에 데이터 업데이트
	 * @param ticketMnmtVO
	 */
	public void updateUserPromotion(TicketMnmtVO ticketMnmtVO);

	/**
	 * 비동기로 db에 데이터 삭제
	 * @param ticketMnmtVO
	 */
	public void deleteUserPromotion(TicketMnmtVO ticketMnmtVO);
	
	/**
	 * 비동기로 db에 데이터 등록
	 * @param ticketMnmtVO
	 */
	public void insertUserPromotion(TicketMnmtVO ticketMnmtVO);
	
	/**
	 * 비동기로 db에 있는 광고 목록 가져오기
	 * @param ticketMnmtVO
	 */
	public List<ImageAdvrtVO> selectAdList();

}

