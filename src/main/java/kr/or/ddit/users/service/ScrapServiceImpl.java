package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.ScrapDAO;
import kr.or.ddit.users.vo.ScrapVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ScrapServiceImpl implements ScrapService{

	private final ScrapDAO scrapDAO;

	@Override
	public void retrieveScrapList(PaginationInfo<ScrapVO> paging) {
		int totalRecord = scrapDAO.selectTotalRecord(paging);
	      paging.setTotalRecord(totalRecord);
	      List<ScrapVO> dataList = scrapDAO.selectScrapList(paging);
	      paging.setDataList(dataList);
	}

	@Override
	public ServiceResult removeScrap(ScrapVO scrapVO) {
		int cnt = scrapDAO.deleteScrap(scrapVO);
		return cnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

}
