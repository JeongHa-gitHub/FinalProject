package kr.or.ddit.admin.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.admin.service.PromotionMgmtService;
import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.users.vo.TicketMnmtVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class PromotionMgmtController {
	
	@Inject
	private PromotionMgmtService promotionMgmtService;
	
	//프로모션 관리 페이지로 이동
	@GetMapping("/promotionMgmtView")
	public String promotionMgmtView(HttpServletRequest request) {
	
		return "admin/promotion/promotionMgmt";
	}
	
	
	// 비동기로 db에 데이터 업데이트
	@PostMapping("/updateUserPromotion")
	@ResponseBody
	public String updateUserPromotion(@RequestBody TicketMnmtVO ticketMnmtVO) {
		log.info("체킁 {}",ticketMnmtVO );
		promotionMgmtService.updateUserPromotion(ticketMnmtVO);
		return "success";
	}
	
	// 비동기로 db에 데이터 삭제
	@PostMapping("/deleteUserPromotion")
	@ResponseBody
	public String deleteUserPromotion(@RequestBody TicketMnmtVO ticketMnmtVO) {
		log.info("체킁 {}",ticketMnmtVO );
		promotionMgmtService.deleteUserPromotion(ticketMnmtVO);
		return "success";
	}
	
	// 비동기로 db에 데이터 등록
	@PostMapping("/insertUserPromotion")
	@ResponseBody
	public String insertUserPromotion(@RequestBody TicketMnmtVO ticketMnmtVO) {
		log.info("체킁 {}",ticketMnmtVO );
		promotionMgmtService.insertUserPromotion(ticketMnmtVO);
		return "success";
	}
	
	// 비동기로 db에 있는 광고 목록 가져오기
	@GetMapping("/selectAdList")
	@ResponseBody
	public List<ImageAdvrtVO> selectAdList() {
		List<ImageAdvrtVO> adList = promotionMgmtService.selectAdList();
		log.info("체킁 {}",adList);
		return adList;
	}
	
	
	
	
}
