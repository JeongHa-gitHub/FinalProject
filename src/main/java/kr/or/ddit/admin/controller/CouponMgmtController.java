
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
import kr.or.ddit.admin.service.CouponMgmtService;
import kr.or.ddit.users.vo.CouponVO;


@Controller
@RequestMapping("/couponMgmt")
public class CouponMgmtController {
	@Inject
	private CouponMgmtService service;
	
	@GetMapping
	public String couponList(
			Model model
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, @RequestParam(value="page", required = false, defaultValue = "1") int currentPage
		){
		PaginationInfo<CouponVO> paging = new PaginationInfo<>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveCouponList(paging);
		
		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		
		return "admin/coupon/couponMgmt";
	}
	
	@GetMapping("detail/{cpnNo}")
	public String couponDetail(
			@PathVariable String cpnNo
			, Model model
		) {
		    CouponVO coupon= service.retrieveCoupon(cpnNo);
			model.addAttribute("coupon", coupon);
			
			return "admin/coupon/couponMgmtDetail";
	}
//	
}
