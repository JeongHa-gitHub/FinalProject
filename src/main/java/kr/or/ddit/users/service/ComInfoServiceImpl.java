package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.ComInfoAttatchDAO;
import kr.or.ddit.users.dao.ComInfoDAO;
import kr.or.ddit.users.vo.LikeCompanyVO;
import lombok.RequiredArgsConstructor;

/**
 * @author 이기웅
 * @since 2023.11.09
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     이기웅       최초작성
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 * </pre>
 *
 */
@Service
@RequiredArgsConstructor
public class ComInfoServiceImpl implements ComInfoService {
	
	private final ComInfoDAO cominfoDAO;
	private final ComInfoAttatchDAO attatchDAO;

	@Override
	public void retrieveCominfoList(PaginationInfo<ComInfoVO> paging) {
		int totalRecord = cominfoDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<ComInfoVO> dataList = cominfoDAO.selectCominfoList(paging);
		paging.setDataList(dataList);
		

	}

	@Override
	public ComInfoVO retrieveCominfo(String companyId) {
		// TODO Auto-generated method stub
		cominfoDAO.incrementHit(companyId);
		return cominfoDAO.selectCominfo(companyId);
	}

	@Override
	public ServiceResult createCominfo(ComInfoVO cominfo) {
		int cnt = cominfoDAO.insertCominfo(cominfo);
		ServiceResult result = null;
		if(cnt>0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

	@Override
	public ServiceResult checkLikeCom(LikeCompanyVO likeCom) {
		int cnt = cominfoDAO.checkLikeCom(likeCom);
		ServiceResult result = null;
		if(cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

	@Override
	public ServiceResult createLikeCom(LikeCompanyVO likeCom) {
		int cnt = cominfoDAO.inserLikeCom(likeCom);
		ServiceResult result = null;
		if(cnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

	@Override
	public ServiceResult deleteLikeCom(LikeCompanyVO likeCom) {
		int cnt = cominfoDAO.deleteLikeCom(likeCom);
		return cnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public MemberVO retrieveMember(String usersId) {
		return cominfoDAO.selectMember(usersId);
	}

}
