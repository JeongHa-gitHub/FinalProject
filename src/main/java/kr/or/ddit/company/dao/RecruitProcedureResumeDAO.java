package kr.or.ddit.company.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.ResumeFormVO;
import kr.or.ddit.company.vo.ResumeScoreVO;
import kr.or.ddit.users.vo.ResumeAttatchVO;

@Mapper
public interface RecruitProcedureResumeDAO {

	/**
	 * 채점표 생성
	 */
	public int insertResumeScoreForm(ResumeFormVO resumeFormVO);

	/**
	 * 이력서 첨부파일 조회
	 */
	public ResumeAttatchVO selectResumeAttatch(String resattNo);
	
	/**
	 * 이력서 채점표 양식 조회
	 */
	public ResumeFormVO selectResumeForm(ResumeScoreVO resumeScoreVO);
	
	/**
	 * 이력서 점수정보 조회
	 */
	public ResumeScoreVO selectResumeScore(ResumeScoreVO resumeScoreVO);
	
	/**
	 * 이력서점수 등록
	 */
	public int insertResumeScore(ResumeScoreVO resumeScoreVO);
	
	/**
	 * 이력서점수 수정
	 */
	public int updateResumeScore(ResumeScoreVO resumeScoreVO);
	
}
