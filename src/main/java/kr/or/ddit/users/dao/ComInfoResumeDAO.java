package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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

@Mapper
public interface ComInfoResumeDAO {

	/**
	 * 검색 조건에 맞는 이력서 목록 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<ResumeVO> paging); 
	
	/**
	 * 합격자 이력서 조회
	 * @param paging
	 * @return
	 */
	public List<ResumeVO> selectResumeViewList(PaginationInfo<ResumeVO> paging);
	
	/**
	 * 이력서 상세조회
	 * @param resumeNo
	 * @return
	 */
	public ResumeVO selectResumeInfo(@Param("resumeNo") String resumeNo);
	
	/**
	 * 학력 조회
	 * @param resumeNo
	 * @return
	 */
	public List<EducationVO> selectEduInfo(String resumeNo);
	
	/**
	 * 자격증 조회
	 * @param resumeNo
	 * @return
	 */
	public List<CertificateVO> selectCerInfo(String resumeNo);
	
	/**
	 * 자기소개서 조회
	 * @param resumeNo
	 * @return
	 */
	public List<CoverLetterVO> selectCovInfo(String resumeNo);
	
	/**
	 * 어학 조회
	 * @param resumeNo
	 * @return
	 */
	public List<LanguageVO> selectLagInfo(String resumeNo);
	
	/**
	 * 대외활동 조회
	 * @param resumeNo
	 * @return
	 */
	public List<IntrnActvtVO> selectInaInfo(String resumeNo); 
	
	/**
	 * 해외연수 조회
	 * @param resumeNo
	 * @return
	 */
	public List<OverseasStudyVO> selectOstInfo(String resumeNo);
	
	/**
	 * 경력 조회
	 * @param resumeNo
	 * @return
	 */
	public List<CareerVO> selectCarInfo(String resumeNo);
	
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
