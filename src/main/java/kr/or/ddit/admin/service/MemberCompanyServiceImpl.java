
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.dao.MemberCompanyDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberCompanyServiceImpl implements MemberCompanyService{
	
	private final MemberCompanyDAO memberCompanyDAO;
	
	@Override
	public ComInfoVO retrieveMember(String companyId) {
		ComInfoVO comInfo = memberCompanyDAO.selectCompanyInfo(companyId);
		return comInfo;
	}
	
	@Override
	public void retrieveMemberList(PaginationInfo<MemberVO> paging) {
		List<MemberVO> dataList = memberCompanyDAO.selectMemberList(paging);
		paging.setDataList(dataList);
	}
	
	@Override
	public ServiceResult removeMember(MemberVO users) {
		int rowcnt = memberCompanyDAO.deleteMember(users.getMemId());
		ServiceResult result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;		
		return result;
	}

	@Override
	public int countMembers(PaginationInfo<MemberVO> paging) {
		return memberCompanyDAO.countMembers(paging);
	}

}

	

