
package kr.or.ddit.admin.service;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.admin.dao.EventMgmtDAO;
import kr.or.ddit.admin.dao.QuestionMgmtDAO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.EventVO;
import kr.or.ddit.users.vo.QnAVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class EventMgmtServiceImpl implements EventMgmtService{
	
	private final EventMgmtDAO eventMgmtDAO;
	
	@Override
	public EventVO retrieveEvent(String evntNo) {
		EventVO event = eventMgmtDAO.selectEvent(evntNo);
		if(event==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 게시글이 없음.", evntNo));
		
		return event;
	}
	
	@Override
	public void retrieveEventList(PaginationInfo<EventVO> paging) {
		int totalRecord = eventMgmtDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<EventVO> dataList = eventMgmtDAO.selectEventList(paging);
		paging.setDataList(dataList);
	}

}

	

