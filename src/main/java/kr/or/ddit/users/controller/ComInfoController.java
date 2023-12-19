package kr.or.ddit.users.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.controller.RecruitController;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.company.vo.IndustryVO;
import kr.or.ddit.paging.BootstrapPaginationRenderer;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.paging.vo.SearchVO;
import kr.or.ddit.users.dao.CominfoOthersDAO;
import kr.or.ddit.users.service.ComInfoService;
import kr.or.ddit.users.vo.LikeCompanyVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 이기웅
 * @since 2023.11.09
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * 
 *      <pre>
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     이기웅       최초작성
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 *      </pre>
 *
 */
@Slf4j
@Controller
@RequestMapping("/users")
public class ComInfoController {

	@Inject
	private ComInfoService service;

	@Inject
	private CominfoOthersDAO othersDAO;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource rootFolder;

	@ModelAttribute("industry")
	public List<IndustryVO> industry() {
		return othersDAO.selectIndustry();
	}

	@ModelAttribute("industryList")
	public List<IndustryVO> industryList() {
		return othersDAO.selectIndustryList(null);
	}

	@ModelAttribute("industryListDet")
	public List<IndustryVO> industryListDetail() {
		return othersDAO.selectIndustryListDet(null);
	}

	@ModelAttribute("cominfo")
	public ComInfoVO cominfoVO() {
		return new ComInfoVO();
	}

	@GetMapping("companyList")
	public String uiController() {
		return "users/cominfo/companyList";
	}

	// 검색
	@GetMapping("companyListData")
	public String cominfoList(Model model, @SessionAttribute("authId") String usersId,
			@ModelAttribute("simpleCondition") SearchVO simpleCondition,
			@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage) {

		System.out.println("아이디" + usersId);

		MemberVO member = service.retrieveMember(usersId);

		member.setMemId(usersId);

		PaginationInfo<ComInfoVO> paging = new PaginationInfo<ComInfoVO>();
		paging.setSimpleCondition(simpleCondition); // 키워드 검색 조건
		paging.setCurrentPage(currentPage);

		service.retrieveCominfoList(paging);

		paging.setRenderer(new BootstrapPaginationRenderer());
		model.addAttribute("paging", paging);
		model.addAttribute("member", member);

		return "jsonView";
	}

	/* 기업정보 상세 */
	@GetMapping("companyDetail/{companyId}")
	public String companyDetail(@PathVariable("companyId") String companyId, Model model) {

		/* String companyId = "lg001"; */
		ComInfoVO cominfo = service.retrieveCominfo(companyId);
		model.addAttribute("cominfo", cominfo);

		return "users/cominfo/companyDetail";
	}

	/* 기업정보 등록 */
	@GetMapping("companyInsert")
	public String companyForm() {
		return "users/cominfo/companyForm";
	}

	@PostMapping("companyInsert")
	public String companyInsert(@Validated(InsertGroup.class) @ModelAttribute("cominfo") ComInfoVO cominfo,
			@SessionAttribute("authId") String usersId, BindingResult errors, Model model) throws IOException {
		
		log.info("파일확인{}", cominfo);
		MultipartFile upload = cominfo.getCominfoImage();
		
		
		
//		String saveFolder = "/recruit/cominfo/";
		String saveName = null;
		if(!upload.isEmpty()) {
			saveName = "company"+UUID.randomUUID().toString()+".png";
//			File saveFile = new File(saveFolder, saveName);
			
			File saveFolder = new File(rootFolder.getFile()+"/cominfo");
			
			if(!saveFolder.exists()){
				saveFolder.mkdirs();
			}
			File saveFile = new File(saveFolder,saveName);
			upload.transferTo(saveFile);	// 업로드 완료
			
			log.info("경로확인 " + saveFolder + "/" + saveName );
			cominfo.setCominfoFile(saveName);
			
			log.info("파일확인{}",upload);
			log.info("파일확인{}",upload.getOriginalFilename());
			log.info("파일확인{}",upload.getSize());
		}

		

		cominfo.setCompanyId(usersId);
		boolean valid = !errors.hasErrors();
		System.out.println(cominfo);
		String viewName = null;
		if (valid) {
			ServiceResult result = service.createCominfo(cominfo);
			switch (result) {
			case OK:
				viewName = "redirect:/users/companyDetail/" + cominfo.getCompanyId();
				break;
			default:
				model.addAttribute("message", "서버 오류 발생! 잠시후 다시 시도해주세요.");
				viewName = "users/cominfo/companyForm";
				break;
			}
		} else {
			viewName = "users/cominfo/companyForm";
		}

		return viewName;
	}

//	관심기업 등록 삭제
	@ResponseBody
	@PostMapping("/companyList/editLikeCom/{companyId}")
	public String editLikeCom(@PathVariable String companyId, @SessionAttribute("authId") String usersId,
			@ModelAttribute("likeCom") LikeCompanyVO likeCom) {
		String result = "null";

		likeCom.setCompanyId(companyId);
		likeCom.setUsersId(usersId);

		ServiceResult likeComResult = service.checkLikeCom(likeCom);
		log.info("관심기업 : {}", likeComResult);

		if (likeComResult == ServiceResult.OK) {
			service.deleteLikeCom(likeCom);
			result = "NG";
		} else {
			service.createLikeCom(likeCom);
			result = "OK";
		}
		return result;
	}

	@ResponseBody
	@GetMapping("/companyList/checkLikeCom/{companyId}")
	public String checkLikeCom(@PathVariable String companyId, @SessionAttribute("authId") String usersId,
			@ModelAttribute("likeCom") LikeCompanyVO likeCom) {
		String result = "null";

		likeCom.setCompanyId(companyId);
		likeCom.setUsersId(usersId);
		ServiceResult likeComResult = service.checkLikeCom(likeCom);

		if (likeComResult == ServiceResult.OK) {
			result = "OK";
		}
		return result;
	}

}
