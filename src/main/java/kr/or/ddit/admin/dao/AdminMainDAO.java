
package kr.or.ddit.admin.dao;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.users.vo.FrBoardVO;
import kr.or.ddit.users.vo.QnAVO;


@Mapper
public interface AdminMainDAO {
	/**
	 * 미승인 기업 개수 조회
	 */
	public int selectCompanyCount(String authId);
	
	/**
	 * 미승인 면접 개수 조회
	 */
	public int selectReviewCount(String authId);
	
	/**
	 * 자유개시판 조회
	 */
	public List<FrBoardVO> selectFreBoardList(String authId);
	
	/**
	 * qna개시판 조회
	 */
	public List<QnAVO> selectQnaBoardList(String authId);
	
}
