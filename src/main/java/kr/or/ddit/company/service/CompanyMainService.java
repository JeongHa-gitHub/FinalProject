package kr.or.ddit.company.service;

import java.util.List;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.users.vo.NoticeVO;

public interface CompanyMainService {
	/**
	 * 진행중 채용공고 개수 조회
	 */
	public int retrieveClosedRecruitProcedureCount(String authId);
	
	/**
	 * 마감된 채용공고 개수 조회
	 */
	public int retrieveUnclosedRecruitProcedureCount(String authId);

	/**
	 * 진행중 채용공고 제목 조회
	 */
	public List<RecruitVO> retrieveClosedRecruitProcedureList(String authId);

	/**
	 * 마감된 채용공고 제목 조회
	 */
	public List<RecruitVO> retrieveUnclosedRecruitProcedureList(String authId);
	
	/**
	 * 공지사항 제목 조회
	 */
	public List<NoticeVO> retrieveNoticeList(String authId);
	
	/**
	 * 기업정보 조회
	 */
	public List<CompanyVO> retrieveCompanyList(String authId);
	
	/**
	 * 진행중인 이미지 광고 개수 조회
	 */
	public int retrievecountValidImgAdvrtList(String authId);

	/**
	 * 진행중인 기업 광고 개수 조회
	 */
	public int retrievecountValidCmpAdvrtList(String authId);
}
