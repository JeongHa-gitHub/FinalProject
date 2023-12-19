package kr.or.ddit.users.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.LikeCompanyVO;

public interface LikeCompanyService {

	public void retrieveLiekCompanyList(PaginationInfo<LikeCompanyVO> paging);
	
	public ServiceResult removeLikeCompany(LikeCompanyVO likeCompanyVO);
	
}
