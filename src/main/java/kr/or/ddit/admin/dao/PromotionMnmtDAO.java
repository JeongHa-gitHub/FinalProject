package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.users.vo.TicketMnmtVO;

@Mapper
public interface PromotionMnmtDAO {

	/**
	 * 비동기로 db에 데이터 업데이트
	 * @param pointpayVO
	 */
	public int updateUserPromotion(TicketMnmtVO ticketMnmtVO);

	
	/**
	 * 비동기로 db에 데이터 삭제
	 * @param pointpayVO
	 */
	public int deleteUserPromotion(TicketMnmtVO ticketMnmtVO);

	/**
	 * 비동기로 db에 데이터 등록
	 * @param pointpayVO
	 */
	public int insertUserPromotion(TicketMnmtVO ticketMnmtVO);

	/**
	 * 비동기로 db에 있는 광고 목록 가져오기
	 * @param pointpayVO
	 */
	public List<ImageAdvrtVO> selectAdList();

}
