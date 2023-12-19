package kr.or.ddit.users.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersMainController {

	@GetMapping("/index")
	public String usersMainUI() {
		return "index/index";
	}
}
