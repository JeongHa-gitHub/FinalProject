package kr.or.ddit.company.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.RecruitProcedureDAO;
import kr.or.ddit.company.dao.RecruitProcedureResumeDAO;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.ResumeFormVO;
import kr.or.ddit.company.vo.ResumeScoreVO;
import kr.or.ddit.users.vo.ResumeAttatchVO;

@Service
public class RecruitProcedureResumeServiceImpl implements RecruitProcedureResumeService{

	@Inject
	private RecruitProcedureResumeDAO dao;
	
	/* 채점표 생성 */
	@Override
	public ServiceResult createResumeScoreForm(ResumeFormVO resumeFormVO) {
		int rowcnt = dao.insertResumeScoreForm(resumeFormVO);
		
		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}
	
	/* 이력서 첨부파일 조회 */
	@Override
	public ResumeAttatchVO retrieveResumeAttatch(String resattNo) {
		return dao.selectResumeAttatch(resattNo);
	}
	
	/* 이력서 채점표 양식 조회 */
	@Override
	public ResumeFormVO retrieveResumeForm(ResumeScoreVO resumeScoreVO) {
		return dao.selectResumeForm(resumeScoreVO);
	}

	/* 이력서 점수정보 조회 */
	@Override
	public ResumeScoreVO retrieveResumeScore(ResumeScoreVO resumeScoreVO) {
		return dao.selectResumeScore(resumeScoreVO);
	}

	/* 이력서점수 등록 */
	@Override
	public ServiceResult createResumeScore(ResumeScoreVO resumeScoreVO) {
		int rowcnt = dao.insertResumeScore(resumeScoreVO);
		
		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

	/* 이력서점수 수정 */
	@Override
	public ServiceResult modifyResumeScore(ResumeScoreVO resumeScoreVO) {
		int rowcnt = dao.updateResumeScore(resumeScoreVO);

		ServiceResult result = null;
		if(rowcnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

}
