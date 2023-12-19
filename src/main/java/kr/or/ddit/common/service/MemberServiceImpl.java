package kr.or.ddit.common.service;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.dao.MemberDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.dao.CompanyDAO;
import kr.or.ddit.users.dao.UsersDAO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MemberServiceImpl implements MemberService{
	
	private final MemberDAO dao;
	
	private final UsersDAO usersdao;
	
	private final CompanyDAO companydao;
    

	//개인 회원가입
	@Override
	public ServiceResult createMember(MemberVO memberVo) {
		ServiceResult result = null;
		
			int cnt = dao.createMember(memberVo);
			if(cnt > 0) {
				
				memberVo.getUsers().setUsersId(memberVo.getMemId()); 
				int userscnt = usersdao.createUsers(memberVo.getUsers());  // users 테이블 
				
				//회원가입시 1000포인트 지급 부분 (포인트테이블 insert)
				PointPayVO pointVO = new PointPayVO();
				pointVO.setUsersId(memberVo.getMemId());
				
//				pointVO.setPmtMethdno("P01");
				pointVO.setPointHold(0);
				pointVO.setPointCharge(1000);
				pointVO.setPointUse(0);
				pointVO.setPointRemain(1000);
				pointVO.setPointRecord("회원가입");
				
				memberVo.getUsers().setPoint(pointVO);
				
				int pointcnt = usersdao.createPoint(memberVo.getUsers().getPoint()); //포인트 테이블
				
				result = (userscnt > 0 && pointcnt > 0) ? ServiceResult.OK : ServiceResult.FAIL; 
			}else {
				result = ServiceResult.FAIL;
			}
		return result;
	}

	//기업 회원가입
	@Override
	public ServiceResult createCompanyMember(MemberVO memberVo) {
		
		ServiceResult result = null;
		int cnt =dao.createCompanyMember(memberVo);
		
		if(cnt>0) {
			memberVo.getCompany().setCompanyId(memberVo.getMemId());
			
			int companycnt = companydao.createCompany(memberVo.getCompany());  // company 테이블
			result = companycnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
		}else {
			result =ServiceResult.FAIL;
		}
		return result;
	}

	//아이디 중복 체크
	@Override
	public ServiceResult retrieveMemId(String memId) {
		
		ServiceResult result = null;
		int cnt = dao.selectMemId(memId);
		
		if(cnt>0) {
			result = ServiceResult.FAIL;
		}else {
			result =ServiceResult.OK;
		}
		return result;
	}

	//비밀번호 찾기
	@Override
	public ServiceResult selectPwFind(MemberVO memberVO) {
	
		ServiceResult result = null;
		int cnt = dao.selectPwFind(memberVO);
		
		if(cnt>0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

	
	//비밀번호 랜덤 업데이트
	@Override
	public ServiceResult modifyPw(MemberVO memberVO) {
		ServiceResult result = null;
		
		
		int cnt = dao.modifyPw(memberVO);
		
		if(cnt>0) {
			
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}
	
	//개인 회원 아이디 찾기
		@Override
		public MemberVO selectIdFind(MemberVO memberVO) {
			return dao.selectIdFind(memberVO);
		}
		
		//기업 회원 아이디 찾기
		public MemberVO companySelectIdFid(MemberVO memberVO) {
			return dao.companySelectIdFid(memberVO);
		}

}
