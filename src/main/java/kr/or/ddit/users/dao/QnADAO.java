package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.admin.vo.QnAReplyVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.QnAVO;

@Mapper
public interface QnADAO {

	/**
	 * QnA 글등록
	 * @param qnaVO
	 * @return
	 */
	public int insertQnA(QnAVO qnaVO);
	
	/**
	 * QnA 글조회
	 * @param qstnNo
	 * @return
	 */
	public QnAVO selectQnA(@Param("qstnNo") String qstnNo);
	
	/**
	 * 답변 조회
	 * @param qstnNo
	 * @return
	 */
	public QnAReplyVO selectQnAReply(String qstnNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<QnAVO> paging); 
	
	/**
	 * 검색 조건에 맞는 게시글목록 조회
	 * @param paging
	 * @return
	 */
	public List<QnAVO> selectQnAList(PaginationInfo<QnAVO> paging);
	
	/**
	 * 게시글 수정과 삭제에서 사용될 인증
	 * @param inputData
	 * @return 인증에 성공했을 경우, 해당 게시글 반환, 실패한 경우, null 반환
	 */
	public int updateQnA(QnAVO qnaVO);
	
	public int deleteQnA(String qstntNo);
	
	/**
	 * 댓글 등록
	 * @param qnAReplyVO
	 * @return
	 */
	public int createPost(QnAReplyVO qnAReplyVO);
	
	public int updateRpy(QnAVO qnaVO);

	public int createQnaPost(QnAVO qnaVO);
	//1:1문의 수정
	public int updateQnaPost(QnAVO qnaVO);
	//1:1문의 삭제
	public int deleteQnaPost(QnAVO qnaVO);
}

