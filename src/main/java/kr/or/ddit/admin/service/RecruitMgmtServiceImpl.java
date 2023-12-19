
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.dao.RecruitMgmtDAO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecruitMgmtServiceImpl implements RecruitMgmtService{
	
	private final RecruitMgmtDAO recruitMgmtDAO;
	
	@Override
	public RecruitVO retrieveRecruit(String rcrtNo) {
		RecruitVO recruit = recruitMgmtDAO.selectRecruitInfo(rcrtNo);
		return recruit;
	}
	
	@Override
	public void retrieveRecruitList(PaginationInfo<RecruitVO> paging) {
		int totalRecord = recruitMgmtDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<RecruitVO> dataList = recruitMgmtDAO.selectRecruitList(paging);
		paging.setDataList(dataList);
	}

}

	

