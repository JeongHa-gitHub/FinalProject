package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.LikeCompanyDAO;
import kr.or.ddit.users.vo.LikeCompanyVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LikeCompanyServiceImpl implements LikeCompanyService{
	
	private final LikeCompanyDAO likeCompanyDAO;

	@Override
	public void retrieveLiekCompanyList(PaginationInfo<LikeCompanyVO> paging) {
		int totalRecord = likeCompanyDAO.selectTotalRecord(paging);
	      paging.setTotalRecord(totalRecord);
	      List<LikeCompanyVO> dataList = likeCompanyDAO.selectLikeCompanyList(paging);
	      paging.setDataList(dataList);
		
	}

	@Override
	public ServiceResult removeLikeCompany(LikeCompanyVO likeCompanyVO) {
		int cnt = likeCompanyDAO.deleteLikeCompany(likeCompanyVO);
		return cnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

}
