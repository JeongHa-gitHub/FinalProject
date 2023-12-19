package kr.or.ddit.users.chat;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResizableByteArrayOutputStream;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.users.vo.RegionVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/chat")
public class ChatController {
	
	@GetMapping("/chatRegion")
	public String chatRegionUI() {
		return "users/chat/region";
	}
	
	@GetMapping("/chatRoom/{region}")
	public String chatRoomUI(
			@PathVariable String region
			, @RequestParam String name
			, HttpSession session
			, Model model
	) throws Exception {
		session.setAttribute("region", region);
		
		String authId = String.valueOf(session.getAttribute("authId"));

		if(authId.equals("null")) {
			session.setAttribute("chatName", name);
		}else {
			session.setAttribute("chatName", authId);
		}
		
		List<RegionVO>  esList= new   ArrayList<RegionVO>();
		
		RegionVO newRegionVO= null;
		for(RegionVO r : ChatHandler.chatRoom) {
			newRegionVO = new RegionVO();
			newRegionVO.setRegion(r.getRegion());
			newRegionVO.setChatMessage(r.getChatMessage());
			esList.add(newRegionVO);
		}
		
		ObjectMapper esMapper =    new ObjectMapper();

		String  messageList = esMapper.writeValueAsString(esList);
		
		model.addAttribute("messageList",messageList);
		
		return "users/chat/chatRoom";
	}
}
