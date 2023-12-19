
package kr.or.ddit.admin.service;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.QnAVO;

public interface QuestionMgmtService {
	
	/**
	 * 게시글 상세조회
	 * @param qstnNo
	 * @return
	 */
	public QnAVO retrieveQuestion(String qstnNo);
	
	/**
	 * 리스트 조회
	 * @param paging
	 */
	public void retrieveQuestionList(PaginationInfo<QnAVO> paging);
	
}
