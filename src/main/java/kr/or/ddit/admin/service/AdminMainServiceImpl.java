
package kr.or.ddit.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.admin.dao.AdminMainDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.FrBoardVO;
import kr.or.ddit.users.vo.QnAVO;
import lombok.RequiredArgsConstructor;



@Service
@RequiredArgsConstructor
public class AdminMainServiceImpl implements AdminMainService{
	
	@Inject
	private AdminMainDAO dao;
	
	/* 미승인 기업 개수 조회*/
	@Override
	public int retrieveCompanyCount(String authId) {
		int companyCount = dao.selectCompanyCount(authId);
	    return companyCount;
	}
	
	/* 미승인 기업 개수 조회*/
	@Override
	public int retrieveReviewCount(String authId) {
		int reviewCount = dao.selectReviewCount(authId);
	    return reviewCount;
	}
	
	/* 자유게시판 정보 조회*/
	@Override
	public List<FrBoardVO> retrieveFrboardList(String authId) {
		return dao.selectFreBoardList(authId);
	}

	/* qna 정보 조회*/
	@Override
	public List<QnAVO> retrieveQnaboardList(String authId) {
		return dao.selectQnaBoardList(authId);
	}

}

	
