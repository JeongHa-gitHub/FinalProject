package kr.or.ddit.admin.service;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import kr.or.ddit.admin.dao.PromotionMnmtDAO;
import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.users.vo.TicketMnmtVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PromotionMgmtServiceImpl implements PromotionMgmtService{

	@Inject
	private final PromotionMnmtDAO promotionMnmtDAO;
	
	
	
	@Override
	@Transactional
	public void updateUserPromotion(TicketMnmtVO ticketMnmtVO) {
		int result = promotionMnmtDAO.updateUserPromotion(ticketMnmtVO);
	}


	@Override
	@Transactional
	public void deleteUserPromotion(TicketMnmtVO ticketMnmtVO) {
		int result = promotionMnmtDAO.deleteUserPromotion(ticketMnmtVO);
	}


	@Override
	@Transactional
	public void insertUserPromotion(TicketMnmtVO ticketMnmtVO) {
		int result = promotionMnmtDAO.insertUserPromotion(ticketMnmtVO);
	}


	@Override
	@Transactional
	public List<ImageAdvrtVO> selectAdList() {
		List<ImageAdvrtVO> adList = promotionMnmtDAO.selectAdList();
		return adList;
	}

}
