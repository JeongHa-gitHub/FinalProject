package kr.or.ddit.users.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.users.service.PointPaySerivce;
import kr.or.ddit.users.vo.CouponVO;
import kr.or.ddit.users.vo.PointPayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PointPayController {

	@Inject
	private PointPaySerivce pointPayService;
	
	//포인트 충전 페이지로 이동
	@GetMapping("/pointPayView")
	public String pointPayView(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		System.out.println(id);
		
		if(id == null) {
			// 로그인이 안되어있을 때
			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("url", request.getContextPath()+"/");
			return "alert";
			}
		
			// 로그인이 되어있을 때
			return "users/promotion/PointCharge";
	}
	
	//결제 모달창 띄우기
	@GetMapping("/periodTicketPayment")
	public String periodTicketPayment() {
		return "modal/PeriodTicketPayment";
	}
	
	
	// 비동기로 db에 데이터 저장
	@PostMapping("/savePointPay")
	@ResponseBody
	public String savePointPay(@RequestBody PointPayVO pointpayVO) {
		try {
			pointPayService.savePointPay(pointpayVO);
			return "success";
		} catch (Exception e) {
			return "fail";
		}
	}
	
	// 비동기로 db에 이용권 구매 데이터 저장
	@PostMapping("/usePointPay")
	@ResponseBody
	public String usePointPay(@RequestBody PointPayVO pointpayVO) {
		try {
			pointPayService.usePointPay(pointpayVO);
			return "success";
		} catch (Exception e) {
			return "fail";
		}
	}
	
	// 비동기로 db에 쿠폰 사용완료 데이터 저장
	@PostMapping("/useCoupon")
	@ResponseBody
	public String useCoupon(@RequestBody CouponVO couponVO) {
		System.out.println("===================================여기 useCoupon 컨트롤러옴");
		log.info("체킁체킁 ucpnNO 체킁{}", couponVO.getUcpnNo());
			pointPayService.useCoupon(couponVO);
			return "success";
	}
	
	// db에 있는 사용자 포인트 '페이지' 불러오기
	@GetMapping("/myPage_PointCouponTicketView")
	public String myPagePointView(HttpServletRequest request) {
		return "users/member/memberPoint";
	}
	
	// db에 있는 사용자 포인트 내역 불러오기
	@GetMapping("/selectMyPointList")
	@ResponseBody
	public List<PointPayVO> selectMyPoint(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		PointPayVO pointPayVO = new PointPayVO();
		pointPayVO.setUsersId(id);
		List<PointPayVO> myPointList = pointPayService.selectMyPoint(pointPayVO);
		log.info("체킁 {}",myPointList);
		return myPointList;
	}
	
	// db에 있는 사용자 이용권 내역 불러오기
	@GetMapping("/selectMyTicketList")
	@ResponseBody
	public List<PointPayVO> selectMyTicketList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("authId");
		
		List<PointPayVO> myTicketList = pointPayService.selectMyTicket(id);
		log.info("체킁 {}",myTicketList);
		return myTicketList;
	}
	
	// 마이페이지에 있는 이용권 리스트 '갯수' 가져오기
		@GetMapping("/countMyTicketList")
		@ResponseBody
		public Integer countMyTicketList(HttpSession session){
			
			String authId = String.valueOf(session.getAttribute("authId"));
			log.info("체킁{}", session.getAttribute("authId"));
					
			int myTicketCount = pointPayService.countMyTicketList(authId);
			return myTicketCount;
		}
	
}
