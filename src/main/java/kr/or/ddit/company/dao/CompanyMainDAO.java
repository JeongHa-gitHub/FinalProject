package kr.or.ddit.company.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.users.vo.NoticeVO;

@Mapper
public interface CompanyMainDAO {
	/**
	 * 진행중 채용공고 개수 조회
	 */
	public int selectClosedRecruitProcedureCount(String authId);
	
	/**
	 * 마감된 채용공고 개수 조회
	 */
	public int selectUnclosedRecruitProcedureCount(String authId);

	/**
	 * 진행중 채용공고 제목 조회
	 */
	public List<RecruitVO> selectClosedRecruitProcedureList(String authId);

	/**
	 * 마감된 채용공고 제목 조회
	 */
	public List<RecruitVO> selectUnclosedRecruitProcedureList(String authId);
	
	/**
	 * 공지사항 제목 조회
	 */
	public List<NoticeVO> selectNoticeList(String authId);
	
	/**
	 * 기업정보 조회
	 */
	public List<CompanyVO> selectCompanyList(String authId);

	/**
	 * 진행중인 이미지 광고 개수 조회
	 */
	public int retrievecountValidImgAdvrtList(String authId);

	/**
	 * 진행중인 기업 광고 개수 조회
	 */
	public int retrievecountValidCmpAdvrtList(String authId);
}
