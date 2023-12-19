package kr.or.ddit.users.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.LikeCompanyVO;
import kr.or.ddit.users.vo.ScrapVO;

public interface ScrapService {
	
	public void retrieveScrapList(PaginationInfo<ScrapVO> paging);
	
	public ServiceResult removeScrap(ScrapVO scrapVO);
	
	

}
