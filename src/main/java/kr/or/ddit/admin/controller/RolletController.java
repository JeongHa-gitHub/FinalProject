package kr.or.ddit.admin.controller;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import kr.or.ddit.admin.service.RolletService;
import kr.or.ddit.users.vo.CouponListVO;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Slf4j
@Controller
@RequestMapping("/rollet")
public class RolletController {
	
	@Autowired
	RolletService rolletService;
	
	/*
	요청URI : /FinalProject/rollet/couponInsert
	요청파라미터 : 로그인한아이디
	요청방식 : post
	*/
	@ResponseBody
	@PostMapping("/couponInsert")
	public String couponInsert(@RequestBody Map<String,String> map) {

		CouponListVO vo = new CouponListVO();
	
		vo.setCpnNo("CPN000001");
		vo.setUsersId(map.get("user"));
		vo.setClistComment("발급");
		
		int result = this.rolletService.couponInsert(vo);
		log.info("result : " + result);
		
		return "success";
	}
	
}
