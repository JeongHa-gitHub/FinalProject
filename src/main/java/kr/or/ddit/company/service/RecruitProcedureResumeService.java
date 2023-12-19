package kr.or.ddit.company.service;

import java.util.Map;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.ResumeFormVO;
import kr.or.ddit.company.vo.ResumeScoreVO;
import kr.or.ddit.users.vo.ResumeAttatchVO;

public interface RecruitProcedureResumeService {

	/**
	 * 채점표 생성
	 */
	public ServiceResult createResumeScoreForm(ResumeFormVO resumeFormVO);

	/**
	 * 이력서 첨부파일 조회
	 */
	public ResumeAttatchVO retrieveResumeAttatch(String resattNo);
	
	/**
	 * 이력서 채점표 양식 조회
	 */
	public ResumeFormVO retrieveResumeForm(ResumeScoreVO resumeScoreVO);

	/**
	 * 이력서 점수정보 조회
	 */
	public ResumeScoreVO retrieveResumeScore(ResumeScoreVO resumeScoreVO);
	
	/**
	 * 이력서점수 등록
	 */
	public ServiceResult createResumeScore(ResumeScoreVO resumeScoreVO);
	
	/**
	 * 이력서점수 수정
	 */
	public ServiceResult modifyResumeScore(ResumeScoreVO resumeScoreVO);
	
	
}
