
package kr.or.ddit.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.admin.service.EventMgmtService;
import kr.or.ddit.users.vo.EventVO;


@Controller
@RequestMapping("/eventMgmt")
public class eventMgmtController {
	@Inject
	private EventMgmtService service;
	
	@GetMapping
	public String eventList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<EventVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveEventList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/event/eventMgmt";
	}
	
	@GetMapping("detail/{evntNo}")
	public String eventDetail(
			@PathVariable String evntNo
			, Model model
		) {
		    EventVO event= service.retrieveEvent(evntNo);
			model.addAttribute("event", event);
			
			return "admin/event/eventMgmtDetail";
	}
//	
}
