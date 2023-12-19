package kr.or.ddit.admin.service;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import kr.or.ddit.admin.dao.PayMnmtDAO;
import kr.or.ddit.company.vo.CmpAdvrtPayVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PayMnmtServiceImpl implements PayMgmtService {

	@Inject 
	private final PayMnmtDAO payMnmtDAO;
	
	
	@Override
	@Transactional
	public List<ImgAdvrtPayVO> selectImgAdFormList() {
		List<ImgAdvrtPayVO> imgadFormList = payMnmtDAO.selectImgAdFormList();
		return imgadFormList;
	}

	@Override
	@Transactional
	public List<ImgAdvrtPayVO> disagreeImgAdFormList() {
		List<ImgAdvrtPayVO> imgadFormList = payMnmtDAO.disagreeImgAdFormList();
		return imgadFormList;
	}
	
	@Override
	@Transactional
	public List<ImgAdvrtPayVO> agreeImgAdFormList() {
		List<ImgAdvrtPayVO> imgadFormList = payMnmtDAO.agreeImgAdFormList();
		return imgadFormList;
	}
	
	@Override
	@Transactional
	public void disagreeImgForm(ImgAdvrtPayVO imgAdvrtPayVO) {
		int result = payMnmtDAO.disagreeImgForm(imgAdvrtPayVO);
	}
	
	@Override
	@Transactional
	public void agreeImgForm(ImgAdvrtPayVO imgAdvrtPayVO) {
		int result = payMnmtDAO.agreeImgForm(imgAdvrtPayVO);
	}

	@Override
	public void holdImgForm(ImgAdvrtPayVO imgAdvrtPayVO) {
		int result = payMnmtDAO.holdImgForm(imgAdvrtPayVO);
	}

	@Override
	public List<PointPayVO> selectPeriodTicketPay() {
		List<PointPayVO> TicketPayList = payMnmtDAO.selectPeriodTicketPay();
		return TicketPayList;
	}

	@Override
	public List<ImgAdvrtPayVO> selectImgAdPay() {
		List<ImgAdvrtPayVO> imgAdPayList = payMnmtDAO.selectImgAdPay();
		return imgAdPayList;
	}

	@Override
	public List<CmpAdvrtPayVO> selectcmpAdPay() {
		List<CmpAdvrtPayVO> cmpAdPayList = payMnmtDAO.selectcmpAdPay();
		return cmpAdPayList;
	}




}
