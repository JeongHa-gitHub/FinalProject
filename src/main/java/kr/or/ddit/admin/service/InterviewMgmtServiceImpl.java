
package kr.or.ddit.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.admin.dao.InterviewMgmtDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.PointPayDAO;
import kr.or.ddit.users.vo.InterviewReviewVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class InterviewMgmtServiceImpl implements InterviewMgmtService{
	
	private final InterviewMgmtDAO interviewMgmtDAO;
	
	@Inject
	PointPayDAO pointPayDAO;
	
	@Override
	public void retrieveIntrvwList(PaginationInfo<InterviewReviewVO> paging) {
		int totalRecord = interviewMgmtDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<InterviewReviewVO> dataList = interviewMgmtDAO.selectInterviewList(paging);
		paging.setDataList(dataList);
	}

	@Override
	public InterviewReviewVO retrieveIntrvw(String intrevNo) {
		InterviewReviewVO intrevInfo = interviewMgmtDAO.selectInterviewInfo(intrevNo);
		return intrevInfo;
	}

	@Transactional
	@Override
	public ServiceResult modifyPassStatus(InterviewReviewVO interviewReviewVO) {
		
		boolean successFlag = true;
				
		if(interviewReviewVO.getIntervApproval()!=null) {
			int rowcnt = interviewMgmtDAO.updatePassStatus(interviewReviewVO);
			if(rowcnt > 0) {
				//포인트 지급
				/*
			 usersId:authId
			 pointCharge:1000
			 pointRecord:면접후기
			 pmtMethdno:null
				 */
				PointPayVO pointPayVO = new PointPayVO();
				pointPayVO.setUsersId(interviewReviewVO.getUsersId());
				pointPayVO.setPointCharge(1000);
				pointPayVO.setPointRecord("면접후기");
				pointPayVO.setPmtMethdno("");
				
				this.pointPayDAO.savePointPay(pointPayVO);
				
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
}

	
