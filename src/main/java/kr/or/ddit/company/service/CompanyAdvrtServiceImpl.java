package kr.or.ddit.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.company.dao.CompanyAdvrtDAO;
import kr.or.ddit.company.vo.CmpAdvrtPayVO;
import kr.or.ddit.company.vo.CompanyAdvrtVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CompanyAdvrtServiceImpl implements CompanyAdvrtService {
	
	@Inject
	private final  CompanyAdvrtDAO companyAdvrtDAO;
	
	@Override
	public List<CompanyAdvrtVO> selectCmpAdvrtList() {
		List<CompanyAdvrtVO> cmpAdvrtList = companyAdvrtDAO.selectCmpAdvrtList();
		return cmpAdvrtList;
	}

	@Override
	public void sendCmpAdPay(CmpAdvrtPayVO cmpAdvrtPayVO) {
		int result = companyAdvrtDAO.sendCmpAdPay(cmpAdvrtPayVO);
	}

	@Override
	public List<CmpAdvrtPayVO> validCmpAdvrtList(String id) {
		List<CmpAdvrtPayVO> myCmpAdvrList = companyAdvrtDAO.validCmpAdvrtList(id);
		return myCmpAdvrList;
	}

	@Override
	public List<CmpAdvrtPayVO> retriveMyCmpAdvrtList(String id) {
		List<CmpAdvrtPayVO> myCmpAdvrList = companyAdvrtDAO.retriveMyCmpAdvrtList(id);		
		return myCmpAdvrList;
	}

	@Override
	public List<CmpAdvrtPayVO> selectCmpAdvrtIndex() {
		List<CmpAdvrtPayVO> CmpAdvrtIndex = companyAdvrtDAO.selectCmpAdvrtIndex();
		return CmpAdvrtIndex;
	}

}
