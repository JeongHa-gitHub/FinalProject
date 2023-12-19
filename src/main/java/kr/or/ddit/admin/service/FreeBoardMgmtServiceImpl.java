
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.stereotype.Service;
import kr.or.ddit.admin.dao.FreeBoardMgmtDAO;
import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.FrBoardVO;
import lombok.RequiredArgsConstructor;



@Service
@RequiredArgsConstructor
public class FreeBoardMgmtServiceImpl implements FreeBoardMgmtService{
   
   private final FreeBoardMgmtDAO freeBoardMgmtDAO;
   
   @Override
   public void retrieveFreeBoardList(PaginationInfo<FrBoardVO> paging) {
      int totalRecord = freeBoardMgmtDAO.selectTotalRecord(paging);
      paging.setTotalRecord(totalRecord);
      List<FrBoardVO> dataList = freeBoardMgmtDAO.selectFreeBoardList(paging);
      paging.setDataList(dataList);
   }

   @Override
   public FrBoardVO retrieveFreeBoard(String frbNo) {
      FrBoardVO freeBoardInfo = freeBoardMgmtDAO.selectFreeBoardInfo(frbNo);
      return freeBoardInfo;
   }

	@Override
	public ServiceResult removeBoard(FrBoardVO board) {
		int rowcnt = freeBoardMgmtDAO.deleteBoard(board.getFrbNo());
		ServiceResult result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;		
		return result;
	}
}

   