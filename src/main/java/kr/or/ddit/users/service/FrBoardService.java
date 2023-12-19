package kr.or.ddit.users.service;

import java.util.List;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.CommentVO;
import kr.or.ddit.users.vo.FrBoardVO;

public interface FrBoardService {
	
	/**
	 * 글등록
	 * @param frBoardVO
	 */
//	public void createFrboard(FrBoardVO frBoardVO);
	
	/**
	 * 상세조회
	 * @param frbNo
	 * @return
	 */
	public FrBoardVO retrieveFrBoard(String frbNo);
	
	/**
	 * 첨부파일 조회
	 * @param frbAttNo
	 * @return
	 */
//	public FrBoardAttatchVO retrieveAttatch(int frbAttNo);
	
	/**
	 * 게시글 리스트 조회
	 * @param paging
	 */
	public void retrieveFrBoardList(PaginationInfo<FrBoardVO> paging);

	//자유게시판 등록
	public int createPost(FrBoardVO frBoardVO);

	//자유게시판 상세
	public FrBoardVO detail(FrBoardVO frBoardVO);


	/**
	 * 게시글 수정
	 * @param frbBoardvo
	 */
//	public void modifyFrBoard(FrBoardVO frbBoardvo);

	/**
	 * 개시글 삭제
	 * @param inputData
	 */
//	public void removeFrBoard(FrBoardVO inputData);
	public ServiceResult deletePost(FrBoardVO frBoardVO);

	public MemberVO getMemberVO(String usersId);

	public int increaseFrbLno(FrBoardVO frBoardVO);

	public int frbRepPost(FrBoardVO frBoardVO);

	public int comment(CommentVO commentVO);

	public List<CommentVO> commentList(FrBoardVO frBoardVO);
	//댓글 신고
	public int coNoPost(CommentVO commentVO);
}
