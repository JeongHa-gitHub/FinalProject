package kr.or.ddit.company.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.RecruitProcedureDAO;
import kr.or.ddit.company.vo.AProcedureOuterVO;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.company.vo.ResumeFormVO;
import kr.or.ddit.company.vo.ResumeScoreVO;
import kr.or.ddit.company.vo.TestResultVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.ResumeAttatchVO;

@Service
public class RecruitProcedureServiceImpl implements RecruitProcedureService{

	@Inject
	private RecruitProcedureDAO dao;
	
	/* 채용공고 목록 조회 */
	@Override
	public void retrieveRecruitList(PaginationInfo<Map<String, Object>> paging) {
		
		int totalRecord = dao.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		
		List<Map<String, Object>> dataList = dao.selectRecruitList(paging);
		
		paging.setDataList(dataList);
	}
	
	/* 채용절자 조회  */
	@Override
	public List<RProcedureVO> retrieveRecruitProcedure(String rcrtNo) {
		return dao.selectRecruitProcedure(rcrtNo);
	}
	
	/* 현재 채용절차 정보 조회 */
	@Override
	public RProcedureVO retrieveCurrentProcedureInfo(Map<String, Object> paramMap) {
		return dao.selectCurrentProcedureInfo(paramMap);

	}

	/* 지원자 목록 조회 */
	@Override
	public void retrieveApplicantList(PaginationInfo<AProcedureVO> paging) {
		int totalRecord = dao.selectApplicantTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		
		Map<String, Object> paramMap = paging.getVariousCondition();
		
		RProcedureVO currProcedureInfo = retrieveCurrentProcedureInfo(paramMap);
		
		String comCodeNm = currProcedureInfo.getRprocTypeno();
		
		List<AProcedureVO> dataList = null;
		// 어떤 데이터? ->// 지원-사용자아이디로 users 조인 -> 인적사항 조회
		// 지원절차 - 제출일, 점수 조회
		switch (comCodeNm) {
		case "RE01":
			// 서류 - 이름, 생년월일, 성별, 이력서제목, 제출일, 점수
			// 이력서제목 - 지원테이블 - 이력서 첨부파일번호 - 이력서첨부파일 테이블 조인 - 이력서 제목 가져오기
			dataList = dao.selectResumeApplicantList(paging);
			break;
		case "RE02": case "RE03":
			// 적성검사 - 이름, 생년월일, 성별, 검사결과지, 제출일, 점수
			// 검사결과지 -> 시험결과 테이블에서 지원번호, 채용공고번호, 채용공고순서로 셀렉트
			dataList = dao.selectTestApplicantList(paging);
			break;
		default:
			// 면접
			// 지원자목록 - 이름, 생년월일, 성별, 면접일정 등록여부
			// 면접일정 등록여부 -> 그 지원번호와 채용공고번호와 채용공고순서에 해당하는 레코드가 있으면 등록된것
			// 면접일정목록 - 이름, 생년월일, 성별, 면접일시, 메일, 알림 건수
			// 알림건수 -> 면접알림 테이블에 지원번호와 채용공고번호와 채용공고순서에 해당하는 레코드가 있으면 보낸것
			totalRecord = dao.selectIntrApplicantTotalRecord(paging);
			paging.setTotalRecord(totalRecord);
			dataList = dao.selectInterviewApplicantList(paging);
			
			break;
		}
		
		paging.setDataList(dataList);
	}

	/* 채점표 개수 조회 */
	@Override
	public int retrieveResumeScoreFormCount(Map<String, Object> paramMap) {
		return dao.selectResumeScoreFormCount(paramMap);
	}

	/* 합불여부 저장 */
	@Override
	public ServiceResult modifyPassStatus(AProcedureOuterVO outerVO) {
		
		boolean successFlag = true;
		
		if(outerVO.getAprocVO()!=null) {
			for(AProcedureVO aprocVO : outerVO.getAprocVO()) {
				if(aprocVO.getAplNo() != null) {
					int rowcnt = dao.updatePassStatus(aprocVO);
					if(rowcnt > 0) {
						successFlag &= true;
					}else {
						successFlag &= false;
					}
				}
			}
		}
		
		ServiceResult result = null;
		if(successFlag) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}
	
	/* 채용절차 마감 */
	@Override
	public ServiceResult modifyCloseStatus(AProcedureOuterVO outerVO, Map<String, Object> paramMap) {

		boolean successFlag = true;
		
		if(outerVO.getAprocVO()!=null) {
			for(AProcedureVO aprocVO : outerVO.getAprocVO()) {
				int rowcnt = dao.updatePassStatus(aprocVO);
				if(rowcnt > 0) {
					successFlag &= true;
				}else {
					successFlag &= false;
				}
			}
		}
		
		if(successFlag) {
			int rowcnt = dao.updateCloseStatus(paramMap);
			if(rowcnt > 0) {
				successFlag &= true;
			}else {
				successFlag &= false;
			}
		}
		
		ServiceResult result = null;
		if(successFlag) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

	/* 기업정보 조회 */
	@Override
	public CompanyVO retrieveCompanyInfo(String companyId) {
		return dao.selectCompanyInfo(companyId);
	}
	
	/* 메일 - 채용공고 정보 조회 */
	@Override
	public RecruitVO retrieveRecruitInfo(String rcrtNo) {
		return dao.selectRecruitInfo(rcrtNo);
	}

	/* 메일 - 채용절차 지원자 이메일 조회 */
	@Override
	public List<String> retrieveApplicantEmailList(AProcedureVO aprocVO) {
		return dao.selectApplicantEmailList(aprocVO);
	}

	/* 엑셀 - 지원자 목록 조회 */
	@Override
	public List<AProcedureVO> retrieveApplicantList(Map<String, Object> paramMap) {
		return dao.selectApplicantList(paramMap);
	}

}
