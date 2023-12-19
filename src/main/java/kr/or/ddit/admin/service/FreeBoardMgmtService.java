package kr.or.ddit.admin.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.FrBoardVO;

public interface FreeBoardMgmtService {
   
   /**
    * 사업자등록번호 상세조회
    * @param frbNo
    * @return
    */
   public FrBoardVO retrieveFreeBoard(String frbNo);
   
   /**
    * 리스트 조회
    * @param paging
    */
   public void retrieveFreeBoardList(PaginationInfo<FrBoardVO> paging);

   /**
	 * 글 삭제
	 * @param 
	 */
   public ServiceResult removeBoard(FrBoardVO board);

   
}