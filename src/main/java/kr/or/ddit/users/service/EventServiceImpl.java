package kr.or.ddit.users.service;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import kr.or.ddit.BoardNotFoundException;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.dao.EventAttatchDAO;
import kr.or.ddit.users.dao.EventDAO;
import kr.or.ddit.users.vo.EventAttatchVO;
import kr.or.ddit.users.vo.EventVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class EventServiceImpl implements EventService {
	
	private final EventDAO eventDAO;
	private final EventAttatchDAO eventAttDAO;
	
	@Override
	public EventVO retrieveEvent(String evntNo) {
		EventVO event = eventDAO.selectEvent(evntNo);
		if(event==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 게시글이 없음.", evntNo));
		
		eventDAO.evntLno(evntNo);
		
		return event;
	}

	@Override
	public EventAttatchVO retrieveAttatch(int evntattNo) {
		EventAttatchVO atch = eventAttDAO.selectAttatch(evntattNo);
		if(atch==null)
			throw new BoardNotFoundException(HttpStatus.NOT_FOUND, String.format("%d 해당 파일이 없음.", evntattNo));
		return null;
	}

	@Override
	public void retrieveEventList(PaginationInfo<EventVO> paging) {
		int totalRecord = eventDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<EventVO> dataList = eventDAO.selectEventList(paging);
		paging.setDataList(dataList);

	}

}
