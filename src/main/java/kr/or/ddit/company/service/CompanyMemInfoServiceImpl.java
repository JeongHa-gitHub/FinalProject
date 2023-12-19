package kr.or.ddit.company.service;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.AuthenticateService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.dao.CompanyMemInfoDAO;
import lombok.RequiredArgsConstructor;

/**
 * @author 김태형
 * @since 2023.11.16
 * @version 1.0
 **/
@Service
@RequiredArgsConstructor
public class CompanyMemInfoServiceImpl implements CompanyMemInfoService {

	private final CompanyMemInfoDAO dao;
	private final AuthenticateService authService;
	
	@Override
	public MemberVO retrieveCompany(String memId) {
		MemberVO member = dao.selectCompany(memId);
		if(member == null)
			throw new UsernameNotFoundException(memId);
		return member;
	}

	@Override
	public ServiceResult removeCompany(MemberVO company) {
		ServiceResult result = authService.authenticate(company);
		if(result == ServiceResult.OK) {
			int rowcnt = dao.deleteCompany(company.getMemId());
		} else {
			result = ServiceResult.INVALIDPASSWORD;
		}
		return result;
	}
	
	@Override
    public ServiceResult modifyCompany(MemberVO company) {
        MemberVO inputData = new MemberVO();
        inputData.setMemId(company.getMemId());
        inputData.setMemPass(company.getMemPass());

        ServiceResult authenticated =authService.authenticate(inputData);
        ServiceResult result = null;
        if(authenticated==ServiceResult.OK) {
            int rowcnt = dao.updateCompany(company);
            result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
        }else {
            result = ServiceResult.INVALIDPASSWORD;
        }
        return result;
    }

	//기업마이페이지 수정
	@Override
	public int editPost(MemberVO memberVO) {
		/*
		--기업마이페이지 수정     
		UPDATE MEMBER
		SET    MEM_PASS='1234',MEM_TEL='010-3755-2525',MEM_MAIL='k11@google.com'
		WHERE  MEM_ID = 'kf001';
		*/
		int result = this.dao.editMemberPost(memberVO);
		
		/*
		--기업체 명 수정
		UPDATE COMPANY
		SET    COMPANY_NM = '이서하'
		WHERE  COMPANY_ID = 'kf001';
		 */
		result += this.dao.editCompanyPost(memberVO);
		
		return result;
	}

	@Override
	public int exitPost(String memId) {
		return this.dao.exitPost(memId);
	}


}
