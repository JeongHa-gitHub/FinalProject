package kr.or.ddit.users.service;

import java.util.List;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.CareerVO;
import kr.or.ddit.users.vo.CertificateVO;
import kr.or.ddit.users.vo.CoverLetterVO;
import kr.or.ddit.users.vo.EducationVO;
import kr.or.ddit.users.vo.IntrnActvtVO;
import kr.or.ddit.users.vo.LanguageVO;
import kr.or.ddit.users.vo.OverseasStudyVO;
import kr.or.ddit.users.vo.PointPayVO;
import kr.or.ddit.users.vo.ResumeVO;

public interface ComInfoResumeService {
	
	/**
	 * 이력서 리스트 조회
	 * @param paging
	 */
	public void retrieveResumeList(PaginationInfo<ResumeVO> paging);
	
	/**
	 * 이력서 상세 조회
	 * @param resumeNo
	 * @return
	 */
	public ResumeVO retrieveResume(String resumeNo);
	
	/**
	 * 학력 조회
	 * @param resumeNo
	 * @return
	 */
	public List<EducationVO> retrieveEduInfo(String resumeNo);
	
	/**
	 * 자격증 조회
	 * @param resumeNo
	 * @return
	 */
	public List<CertificateVO> retrieveCerInfo(String resumeNo);
	
	/**
	 * 자기소개서 조회
	 * @param resumeNo
	 * @return
	 */
	public List<CoverLetterVO> retrieveCovList(String resumeNo);
	
	/**
	 * 어학 조회
	 * @param resumeNo
	 * @return
	 */
	public List<LanguageVO> retrieveLagList(String resumeNo);
	
	/**
	 * 대외활동 조회
	 * @param resumeNo
	 * @return
	 */
	public List<IntrnActvtVO> retrieveInaList(String resumeNo);
	
	/**
	 * 해외연수 조회
	 * @param resumeNo
	 * @return
	 */
	public List<OverseasStudyVO> retrieveOstList(String resumeNo);
	
	/**
	 * 경력 사항 조회
	 * @param resumeNo
	 * @return
	 */
	public List<CareerVO> retrieveCarList(String resumeNo);

	/**
	 * 사용자에 해당하는 유효한 이용권 검색하기
	 * @param usersId
	 * @return
	 */
	public List<PointPayVO> retrieveValidTicketList(String usersId);

	/**
	 * 사용자가 기업인지, 사용자인지 구분하기
	 * @param usersId
	 * @return
	 */
	public String retrieveMemberType(String usersId);

}
