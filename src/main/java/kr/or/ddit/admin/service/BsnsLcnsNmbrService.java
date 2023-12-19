
package kr.or.ddit.admin.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.vo.PaginationInfo;

public interface BsnsLcnsNmbrService {
	
	/**
	 * 사업자등록번호 상세조회
	 * @param companyId
	 * @return
	 */
	public CompanyVO retrieveBsns(String companyId);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveCompanyList(PaginationInfo<CompanyVO> paging);
	
	/**
	 * 승인여부 저장
	 */
	public ServiceResult modifyPassStatus(CompanyVO companyVO);

	
}
