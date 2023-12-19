package kr.or.ddit.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import kr.or.ddit.admin.service.AdminMainService;
import kr.or.ddit.users.vo.FrBoardVO;
import kr.or.ddit.users.vo.QnAVO;

@Controller
public class AdminMainController {
	
	@Inject
	private AdminMainService service;
	
	@GetMapping("/indexAdmin")
	public String adminMainUI(
			@SessionAttribute(value = "authId", required = false) String authId
			, Model model
	) {
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("authId", authId);
		
		/*  기업 조회 관련 데이터 */
		int companyCount = service.retrieveCompanyCount(authId);	
		resultMap.put("companyCount", companyCount);
		
		/*  면접 조회 관련 데이터 */
		int reviewCount = service.retrieveReviewCount(authId);	
		resultMap.put("reviewCount", reviewCount);
		
		/*  자유게시판 조회 관련 데이터 */
		List<FrBoardVO> ƒrboardList = service.retrieveFrboardList(authId);
		resultMap.put("frboardList", ƒrboardList);
		
		/*  qna 조회 관련 데이터 */
		List<QnAVO> qnaboardList = service.retrieveQnaboardList(authId);
		resultMap.put("qnaboardList", qnaboardList);
		
		model.addAttribute("resultMap", resultMap);
		
		return "index/indexAdmin";
	}
}
