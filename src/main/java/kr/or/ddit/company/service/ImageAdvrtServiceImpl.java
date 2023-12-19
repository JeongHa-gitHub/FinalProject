package kr.or.ddit.company.service;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.dao.ImageAdvrtDAO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ImageAdvrtServiceImpl implements ImageAdvrtService {

	@Inject
	private final ImageAdvrtDAO imageAdvrtDAO;
	
	
	@Override
	public List<ImageAdvrtVO> selectImageAdvrtList() {
		List<ImageAdvrtVO> ImageAdvrtList = imageAdvrtDAO.selectImageAdvrtList();
		return ImageAdvrtList;
	}


	@Override
	public List<ImageAdvrtVO> selectBannerAdvrtList() {
		List<ImageAdvrtVO> BannerAdvrtList = imageAdvrtDAO.selectBannerAdvrtList();
		return BannerAdvrtList;
	}


	@Override
	@Transactional
	public CompanyVO selectCmpPass(String authId) {
		CompanyVO cmpPass = imageAdvrtDAO.selectCmpPass(authId);
		return cmpPass;
	}


	@Override
	@Transactional
	public void sendImgAdPay(ImgAdvrtPayVO imgAdvrtFormVO) {
		imageAdvrtDAO.sendImgAdPay(imgAdvrtFormVO);
	}
	
	@Override
	@Transactional
	public List<ImgAdvrtPayVO> selectImgAdvrtIndex() {
		List<ImgAdvrtPayVO> ImageAdvrtIndex = imageAdvrtDAO.selectImgAdvrtIndex();
		return ImageAdvrtIndex;
	}

	@Override
	public List<ImgAdvrtPayVO> selectBannerAdvrtIndex() {
		List<ImgAdvrtPayVO> BannerAdvrtIndex = imageAdvrtDAO.selectBannerAdvrtIndex();
		return BannerAdvrtIndex;
	}


	@Override
	public List<ImgAdvrtPayVO> selectMyImgAdvrList(String id) {
		List<ImgAdvrtPayVO> myImgAdvrList = imageAdvrtDAO.selectMyImgAdvrList(id);
		return myImgAdvrList;
	}


	@Override
	public List<ImgAdvrtPayVO> validImgAdvrtList(String id) {
		List<ImgAdvrtPayVO> myImgAdvrList = imageAdvrtDAO.validImgAdvrtList(id);
		return myImgAdvrList;
	}


	@Override
	public MemberVO retrieveCompany(String memId) {
		MemberVO member = imageAdvrtDAO.selectCompany(memId);
		if(member == null)
			throw new UsernameNotFoundException(memId);
		return member;
	}

}
