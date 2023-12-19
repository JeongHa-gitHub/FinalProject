package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.ApplyDAO;
import kr.or.ddit.users.vo.ResumeAttatchVO;
import kr.or.ddit.users.vo.ResumeVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ApplyServiceImpl implements ApplyService{
	
	private final ApplyDAO applyDAO;

	//주연
	@Override
	public void retrieveApplyList(PaginationInfo<ApplyVO> paging) {
		int totalRecord = applyDAO.selectTotalRecord(paging);
	    paging.setTotalRecord(totalRecord);
	    List<ApplyVO> dataList = applyDAO.selectApplyList(paging);
	    paging.setDataList(dataList);
	}
	
	
	//소원
	
	//지원 버튼 누르면 1차 지원
		@Override
		//@Transactional  
		public ServiceResult createApply(ApplyVO applyvo) {
			ServiceResult result = null;
			int cnt =applyDAO.createApply(applyvo); //지원 insert
			 if(cnt>0) {
				 AProcedureVO aprocedureVO= applyvo.getAprocedure();
				 aprocedureVO.setAplNo(applyvo.getAplNo());
				 int aprocedure = applyDAO.creatAprocedure(aprocedureVO); //지원과정 1차로  insert
				 result = aprocedure > 0 ? ServiceResult.OK : ServiceResult.FAIL;
				 
			 }else{
				 result = ServiceResult.FAIL;
			 }
			return result;
		}

		//이미지 저장
		@Override
		public ServiceResult createResumeAttatch(ResumeAttatchVO attatch) {
			ServiceResult result = null;
			int rowcnt = applyDAO.createResumeAttatch(attatch);
			if(rowcnt>0) {
				result=ServiceResult.OK;
			}else {
				result = ServiceResult.FAIL;
			}
		     return result;
		}

		//입사 지원시 자신의 이력서 리스트
		@Override
		public List<ResumeVO> retrieveResumeList(String usersId) {
			
			return applyDAO.resumeList(usersId);
		}

		// 채용공고 중복 지원 막기
		@Override
		public ServiceResult selectCheckApply(ApplyVO applyVO) {
			
			ServiceResult result = null;
			int cnt = applyDAO.selectCheckApply(applyVO);
			
			if(cnt>0) {
				//이미 지원함
				result = ServiceResult.FAIL;
			}else {
				result = ServiceResult.OK;
			}
			return result;
		}

}
