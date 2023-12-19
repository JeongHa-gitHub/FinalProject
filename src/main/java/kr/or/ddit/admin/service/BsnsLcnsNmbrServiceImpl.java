
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.stereotype.Service;
import kr.or.ddit.admin.dao.BsnsLcnsNmbrDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import lombok.RequiredArgsConstructor;



@Service
@RequiredArgsConstructor
public class BsnsLcnsNmbrServiceImpl implements BsnsLcnsNmbrService{
	
	private final BsnsLcnsNmbrDAO bsnsLcnsNmbrDAO;
	
	@Override
	public void retrieveCompanyList(PaginationInfo<CompanyVO> paging) {
		int totalRecord = bsnsLcnsNmbrDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<CompanyVO> dataList = bsnsLcnsNmbrDAO.selectCompanyList(paging);
		paging.setDataList(dataList);
	}

	@Override
	public CompanyVO retrieveBsns(String companyId) {
		CompanyVO bsnsInfo = bsnsLcnsNmbrDAO.selectBsnsInfo(companyId);
		return bsnsInfo;
	}

	@Override
	public ServiceResult modifyPassStatus(CompanyVO companyVO) {
		boolean successFlag = true;
				
		if(companyVO.getCompanyPermission()!=null) {
			int rowcnt = bsnsLcnsNmbrDAO.updatePassStatus(companyVO);
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
}

	
