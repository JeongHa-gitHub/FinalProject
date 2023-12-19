package kr.or.ddit.users.chat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.EvictingQueue;

import kr.or.ddit.users.vo.ChatVO;
import kr.or.ddit.users.vo.RegionVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ChatHandler extends TextWebSocketHandler{	

	public static List<RegionVO> chatRoom = new ArrayList<>();
	
	ObjectMapper mapper = null;
	
	// chatRoom에 지역 세팅
	static {
		String[] regions = {
				"seoul"	
				, "gyeonggi"	
				, "incheon"	
				, "busan"	
				, "daegu"	
				, "gyeongju"	
				, "daejeon"	
				, "ulsan"	
				, "sejong"	
				, "gangwon"	
				, "gyeongnam"
				, "gyeongbuk"
				, "jeonnam"	
				, "jeonbuk"	
				, "chungnam"	
				, "chungbuk"	
				, "jeju"		
			};
		
		// 지역 갯수만큼 regionVO 만들어서 chatRoom에 넣어주기
		for(String region : regions) {
			RegionVO regionVO = new RegionVO();
			regionVO.setRegion(region);
			
			// 빈 memberList 생성
			regionVO.setMemberList(new ArrayList<>());
			
			// 빈 Queue 생성
			EvictingQueue<ChatVO> chatMessage = EvictingQueue.create(50);
			regionVO.setChatMessage(chatMessage);
			
			chatRoom.add(regionVO);
			
			
		}
		
	}
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
				
		// 세션에 저장된 지역 가져오기 위해
		Map<String, Object> sessionMap = session.getAttributes();
		// 들어온 사람의 지역과 같은 지역 chatRoom에 참여자 저장, 입장메세지 저장
		for(RegionVO regionVO : chatRoom) {
			String chatRoomRegion = regionVO.getRegion();
			String userRegion = String.valueOf(sessionMap.get("region"));
			if(chatRoomRegion.equals(userRegion)) {
				// 참여자를 일치하는 지역 chatRoom의 memberList에 넣기
				regionVO.getMemberList().add(session);	
//				regionVO.getChatMessage().add(data);
			}
		}
	}

	
	
	// 클라이언트 소켓과 통신
	@Override // 클라이언트가 서버에 보냈을 때 실행
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		// 메세지 보낸사람의 지역 가져오기
		Map<String, Object> sessionMap = session.getAttributes();
		String userRegion = String.valueOf(sessionMap.get("region"));
		
		mapper = new ObjectMapper();
		ChatVO data = mapper.readValue(message.getPayload(), ChatVO.class);
		String jsonStr = mapper.writeValueAsString(data);
		
		log.info("chatRoom : {}",chatRoom);
		
		for(RegionVO regionVO : chatRoom) {
			/* 그 지역의 참여자들에게 메세지 보내기 */
			// 채팅방의 지역 가져오기
			String chatRoomRegion =regionVO.getRegion();
			// 지역 채팅방 안의 참여자 리스트에서 한명한명의 참여자 세션 가져오기
			
			for(WebSocketSession webSocketSession : regionVO.getMemberList()) {
				
				if(!webSocketSession.isOpen()) continue;
				
				
				// 한명의 참여자의 지역과 보낸사람의 지역이 같다면
				if(userRegion.equals(chatRoomRegion)) {
					webSocketSession.sendMessage(new TextMessage(jsonStr));
				}
			}
			
			
			/* 메세지를 그 지역의 regionVO의 chatMessage에 저장하기 */
			if(chatRoomRegion.equals(userRegion)) {
				regionVO.getChatMessage().add(data);
			}
			
		}
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// 세션에 저장된 지역 가져오기 위해
		Map<String, Object> sessionMap = session.getAttributes();
				
		// 나간 사람의 지역과 같은 지역 chatRoom에서 사용자 지우기
		for(RegionVO regionVO : chatRoom) {
			String chatRoomRegion = regionVO.getRegion();
			String userRegion = String.valueOf(sessionMap.get("region"));
			if(chatRoomRegion.equals(userRegion)) {
				regionVO.getMemberList().remove(session);
			}
		}
		
		// 퇴장메세지 세팅
		
		String chatName = String.valueOf(sessionMap.get("chatName"));
		ChatVO data = new ChatVO();
		data.setSender("server");
		data.setMessage(chatName + "님이 퇴장하셨습니다.");

		mapper = new ObjectMapper();
		byte[] dataByte = mapper.writeValueAsBytes(data);
		
		TextMessage message = new TextMessage(dataByte);

		// 메세지 보내는 메소드 호출
		handleTextMessage(session,message);
		
		// 들어온 사람의 지역과 같은 지역 chatRoom에 참여자 저장, 퇴장메세지 저장
		for(RegionVO regionVO : chatRoom) {
			String chatRoomRegion = regionVO.getRegion();
			String userRegion = String.valueOf(sessionMap.get("region"));
			
			if(chatRoomRegion.equals(userRegion)) {
				// 참여자를 일치하는 지역 chatRoom의 memberList에 넣기
				regionVO.getMemberList().remove(session);					
				
			}
		}
		
	}
}
