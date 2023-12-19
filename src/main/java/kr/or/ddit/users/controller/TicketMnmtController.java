package kr.or.ddit.users.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.service.TicketMnmtService;
import kr.or.ddit.users.vo.CouponListVO;
import kr.or.ddit.users.vo.CouponVO;
import kr.or.ddit.users.vo.TicketMnmtVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TicketMnmtController {

	@Inject
	private TicketMnmtService ticketMnmtService;

	// 기간제 이용권 페이지로 이동
		@GetMapping("/periodTicketView")
		public String periodTicketView(HttpServletRequest request) {
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("authId");

			if (id == null) {
				// 로그인이 안되어있을 때
				request.setAttribute("msg", "로그인이 필요합니다.");
				request.setAttribute("url", request.getContextPath() + "/");
				return "alert";
			}

			// 로그인이 되어있을 때
			return "users/promotion/PeriodtTicket";
		}
	
	// 비동기로 db에 있는 이용권 목록 가져오기
	@GetMapping("/selectTicketList")
	@ResponseBody
	public List<TicketMnmtVO> selectTicketList() {
			List<TicketMnmtVO> ticketList = ticketMnmtService.selectTicketList();
			// JSON 형식으로 응답 -- @ResponseBody를 붙여야한다.
			return ticketList;
	}
	
	
	// 비동기로 db에 있는 이용권 상세 내용 가져오기
	@GetMapping("/selectTicketDetail/{ticketNo}")
	public String selectTicketDetail(Model model,  @PathVariable String ticketNo) {
		TicketMnmtVO TicketDetail = ticketMnmtService.selectTicketDetail(ticketNo);
		
		model.addAttribute("ticketName", TicketDetail.getTicketName()); //상품명
		model.addAttribute("ticketPrice", TicketDetail.getTicketPrice()); //상품가격
		model.addAttribute("ticketPeriod", TicketDetail.getTicketPeriod()); //상품가격
		
		return "jsonView";
	}
	
	
	// 비동기로 사용자에 따른 db에 있는 쿠폰 목록 가져오기
	@GetMapping("/selectCouponDetail/{authId}")
	@ResponseBody
	public List<CouponVO> selectCouponDetail(@PathVariable String authId){
		List<CouponVO> couponList = ticketMnmtService.selectCouponDetail(authId);
		return couponList;
	}
	
	// 비동기로 사용자 비밀번호 가져오기
	@PostMapping("/selectUserPass")
	public String selectUserPass(Model model, @RequestParam("id") String authId) {
		MemberVO userPass = ticketMnmtService.selectUserPass(authId);
		model.addAttribute("userPass", userPass.getMemPass());
		return "jsonView";
	}
	
	// 마이페이지에 있는 쿠폰 리스트 '갯수' 가져오기
	@GetMapping("/countMyCouponList")
	@ResponseBody
	public Integer countMyCouponList(HttpSession session){
		
		String authId = String.valueOf(session.getAttribute("authId"));
		log.info("체킁{}", session.getAttribute("authId"));
				
		int myCouponCount = ticketMnmtService.countMyCouponList(authId);
		return myCouponCount;
	}
	
	// 마이페이지에 있는 쿠폰 리스트 가져오기
	@GetMapping("/selectMyCouponList/{authId}")
	@ResponseBody
	public List<CouponListVO> selectMyCouponList(@PathVariable String authId){
		List<CouponListVO> myCouponList = ticketMnmtService.selectMyCouponList(authId);
		return myCouponList;
	}
	
	
}
