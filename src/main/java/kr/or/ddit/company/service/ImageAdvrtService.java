package kr.or.ddit.company.service;

import java.util.List;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;

public interface ImageAdvrtService {
	
	/**
	 * 비동기로 db에 있는 이미지 광고 목록 가져오기
	 * @return
	 */
	public List<ImageAdvrtVO> selectImageAdvrtList();

	/**
	 * 비동기로 db에 있는 배너 광고 목록 가져오기
	 * @return
	 */
	public List<ImageAdvrtVO> selectBannerAdvrtList();

	/**
	 * 비동기로 사업자 등록번호 가져오기
	 * @return
	 */
	public CompanyVO selectCmpPass(String authId);
	
	/**
	 * 이미지광고 신청 양식 form db로 저장하기
	 * @param imgAdvrtFormVO
	 * @return
	 */
	public void sendImgAdPay(ImgAdvrtPayVO imgAdvrtFormVO);

	/**
	 * 오늘 날짜에 해당되는 이미지 광고 가져오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> selectImgAdvrtIndex();
	
	/**
	 * 오늘 날짜에 해당되는 배너 광고 가져오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> selectBannerAdvrtIndex();

	/**
	 * 기업 마이페이지의 이미지 광고 목록 가져오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> selectMyImgAdvrList(String id);

	/**
	 * 사용중인 이미지 광고 불러오기
	 * @param id
	 * @return
	 */
	public List<ImgAdvrtPayVO> validImgAdvrtList(String id);

	public MemberVO retrieveCompany(String memId);
}
