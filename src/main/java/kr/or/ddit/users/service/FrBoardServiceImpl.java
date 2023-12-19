package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.common.controller.UploadController;
import kr.or.ddit.common.dao.AttachDao;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.FrBoardAttatchDAO;
import kr.or.ddit.users.dao.FrBoardDAO;
import kr.or.ddit.users.vo.CommentVO;
import kr.or.ddit.users.vo.FrBoardAttatchVO;
import kr.or.ddit.users.vo.FrBoardVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class FrBoardServiceImpl implements FrBoardService {
	@Autowired
	UploadController uploadController;
	
	private final FrBoardDAO frbDAO;
//	private final FrBoardAttatchDAO attatchDAO;
	
//	@Override
//	public void createFrboard(FrBoardVO frBoardVO) {
//		// TODO Auto-generated method stub
//		
//	}
	@Override
	public FrBoardVO retrieveFrBoard(String frbNo) {
		 FrBoardVO frBoardVO = frbDAO.selectFrBoard(frbNo);
	      if(frBoardVO==null)
	         throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 게시글이 없음.", frbNo));
	      
	      frbDAO.incrementHit(frbNo);
	      
	      return frBoardVO;
	}
//	@Override
//	public FrBoardAttatchVO retrieveAttatch(int frbAttNo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	@Override
	public void retrieveFrBoardList(PaginationInfo<FrBoardVO> paging) {
		 int totalRecord = frbDAO.selectTotalRecord(paging);
	      paging.setTotalRecord(totalRecord);
	      List<FrBoardVO> dataList = frbDAO.selectFrBoardList(paging);
	      paging.setDataList(dataList);
	      
		
	}
	//자유게시판 등록
	@Override
	public int createPost(FrBoardVO frBoardVO) {
		int result = this.frbDAO.createPost(frBoardVO);
		
		//파일업로드
		MultipartFile[] uploadFile = frBoardVO.getUploadFile();
		uploadController.uploadAjaxAction(uploadFile,frBoardVO.getFrbNo());
		
		return result;
	}
	
	//자유게시판 상세
	@Override
	public FrBoardVO detail(FrBoardVO frBoardVO) {
		return this.frbDAO.detail(frBoardVO);
	}
	
	@Override
	public ServiceResult deletePost(FrBoardVO frBoardVO) {
		int cnt = frbDAO.deleteFrBoard(frBoardVO);
		return cnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}
	
	@Override
	public MemberVO getMemberVO(String usersId) {
		return this.frbDAO.getMemberVO(usersId);
	}
	@Override
	public int increaseFrbLno(FrBoardVO frBoardVO) {
		return this.frbDAO.increaseFrbLno(frBoardVO);
	}
	@Override
	public int frbRepPost(FrBoardVO frBoardVO) {
		return this.frbDAO.frbRepPost(frBoardVO);
	}
	@Override
	public int comment(CommentVO commentVO) {
		return this.frbDAO.comment(commentVO);
	}
	@Override
	public List<CommentVO> commentList(FrBoardVO frBoardVO) {
		return this.frbDAO.commentList(frBoardVO);
	}
	//댓글 신고
	@Override
	public int coNoPost(CommentVO commentVO) {
		return this.frbDAO.coNoPost(commentVO);
	}
	
	//자유게시판 글 삭제
	
//	@Override
//	public void modifyFrBoard(FrBoardVO frbBoardvo) {
//		// TODO Auto-generated method stub
//		
//	}
//	@Override
//	public void removeFrBoard(FrBoardVO inputData) {
//		// TODO Auto-generated method stub
//		
//	}
	
	
	
}
