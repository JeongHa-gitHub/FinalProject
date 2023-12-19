
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.dao.MemberMgmtDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.AuthenticateService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class MemberMgmtServiceImpl implements MemberMgmtService{
	
	private final MemberMgmtDAO memberMgmtDAO;
	private final AuthenticateService authService;
	
	@Override
	public MemberVO retrieveMember(String memId) {
		MemberVO member = memberMgmtDAO.selectMember(memId);
		if(member==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 회원이 없음.", memId));
		
		return member;
	}
	
	@Override
	public void retrieveMemberList(PaginationInfo<MemberVO> paging) {
		int totalRecord = memberMgmtDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<MemberVO> dataList = memberMgmtDAO.selectMemberList(paging);
		paging.setDataList(dataList);
	}
	
	@Override
	public ServiceResult removeMember(MemberVO users) {
		int rowcnt = memberMgmtDAO.deleteMember(users.getMemId());
		ServiceResult result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;		
		return result;
	}

}

	

