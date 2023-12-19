package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.CommentVO;
import kr.or.ddit.users.vo.FrBoardVO;

@Mapper
public interface FrBoardDAO {
	
	/**
	 * 글 등록
	 * @param frBoardVO
	 * @return
	 */
	public int insertFrBoard(FrBoardVO frBoardVO);
	
	/**
	 * 글 상세보기
	 * @param frbNo
	 * @return
	 */
	public FrBoardVO selectFrBoard(@Param("frbNo") String frbNo);
	
	/**
	 * 조회수 증가
	 * @param frbNo
	 * @return
	 */
	public int incrementHit(String frbNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<FrBoardVO> paging); 
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<FrBoardVO> selectFrBoardList(PaginationInfo<FrBoardVO> paging);
	
	/**
	 * 게시글 수정
	 * @param frBoardVO
	 * @return
	 */
	public int updateFrBoard(FrBoardVO frBoardVO);
	
	/**
	 * 게시글 삭제
	 * @param frbNo
	 * @return
	 */
	public int deleteFrBoard(FrBoardVO frBoardVO);

	//자유게시판 등록
	public int createPost(FrBoardVO frBoardVO);

	//자유게시판 상세
	public FrBoardVO detail(FrBoardVO frBoardVO);

	//로그인한 아이디로 memberVO를 가져옴
	public MemberVO getMemberVO(String usersId);

	//조회수 1 증가
	public int increaseFrbLno(FrBoardVO frBoardVO);

	//신고
	public int frbRepPost(FrBoardVO frBoardVO);

	public int comment(CommentVO commentVO);
	//댓글목록
	public List<CommentVO> commentList(FrBoardVO frBoardVO);
	//댓글 신고
	public int coNoPost(CommentVO commentVO);

}
