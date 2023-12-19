package kr.or.ddit.users.service;

import org.apache.ibatis.exceptions.PersistenceException;

import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.vo.QnAReplyVO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.QnAAttatchVO;
import kr.or.ddit.users.vo.QnAVO;

public interface QnAService {
	
	/**
	 * 글등록
	 * @param qnaVO
	 * @return
	 */
	public ServiceResult createQnA(QnAVO qnaVO);
	
	/**
	 * 상세조회
	 * @param qstnNo
	 * @return
	 */
	public QnAVO retrieveQnA(String qstnNo);
	
	/**
	 * 답변 조회
	 * @param qnstnNo
	 * @return
	 */
	public QnAReplyVO retrieveQnAReply(String qnstnNo);
	
	/**
	 * 다운로드를 위해 첨부파일 메타데이터 조회
	 * @param qstnattNo
	 * @return
	 */
//	public QnAAttatchVO retrieveAttatch(int qstnattNo);
	
	/**
	 * 게시글 목록 조회(검색 및 페이징 지원)
	 * @param paging
	 */
	public void retrieveQnAList(PaginationInfo<QnAVO> paging);
	
	/**
	 * 수정
	 * @param qnaVO
	 * @return
	 */
	public ServiceResult modifyQnA(QnAVO qnaVO);
	
	/**
	 * 삭제
	 * @param qnaVO
	 * @return
	 */
	public ServiceResult removeQnA(String qstnNo);
	
	
	/**
	 * 댓글 등록
	 * @param qnAReplyVO
	 */
	public int createPost(QnAReplyVO qnAReplyVO);
	
	public int updateRpy(QnAVO qnaVO);

	public int createQnaPost(QnAVO qnaVO);

	public int updateQnaPost(QnAVO qnaVO);

	public int deleteQnaPost(QnAVO qnaVO);
}
