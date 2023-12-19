
package kr.or.ddit.admin.service;

import java.util.List;

import kr.or.ddit.users.vo.FrBoardVO;
import kr.or.ddit.users.vo.QnAVO;

public interface AdminMainService {
	/**
	 * 미승인 기업 개수 조회
	 */
	public int retrieveCompanyCount(String authId);

	/**
	 * 미승인 면접 개수 조회
	 */
	public int retrieveReviewCount(String authId);
	
	/**
	 * 자유개시판 조회
	 */
	public List<FrBoardVO> retrieveFrboardList(String authId);
	
	/**
	 * qna개시판 조회
	 */
	public List<QnAVO> retrieveQnaboardList(String authId);


	
}
