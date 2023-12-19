
package kr.or.ddit.admin.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.QnAVO;

@Mapper
public interface QuestionMgmtDAO {
	
	/**
	 * 글조회
	 * @param qstnNo
	 * @return
	 */
	public QnAVO selectQuestion(@Param("qstnNo") String qstnNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<QnAVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<QnAVO> selectQuestionList(PaginationInfo<QnAVO> paging);
	
	/**
	 * 이전글 다음글
	 * @param qstnNo
	 * @return
	 */
	public QnAVO movePage(String qstnNo);
	
}
