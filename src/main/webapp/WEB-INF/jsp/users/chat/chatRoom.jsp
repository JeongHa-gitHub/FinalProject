<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="<%=request.getContextPath()%>/resources/js/app/users/chat/regionChoiceUI.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/app/users/chat/chat.js"></script>

<script>
let messageList = '${messageList}';
let authId = "<%=session.getAttribute("authId")%>";
let chatName = '<%=session.getAttribute("chatName")%>';
console.log("변환:",messageList);
</script>
<div class="chatRoom-content">
	<div class="menu-area">
		<button type="button" id="regionChoiceBtn" class="btnSizeXL">지역선택</button>
		<button type="button" id="disconnectionBtn" class="btnSizeL colorRed disconnectionBtn">나가기</button>
	</div>
	<div class="chat-area" style="display:block;" data-tab-idx="1">
		<div class="chat-message" data-region="${region}">
			<!-- 메세지 출력되는 곳 -->
		</div>
		<div class="myMessage">
			<input type="text" name="message" class="inpTypo" placeholder="내용을 입력해주세요."
				onkeydown="keydown();"/>
			<button class="btnSizeM colorBlue" id="sendMessage">보내기</button>
		</div>
	</div>
	
	<div class="chat-area" style="display:none;" data-tab-idx="2">
		<div class="regionDetail">
			<button type="button" class="btnSizeXL regionBtn" id="seoul"	>서울</button>
			<button type="button" class="btnSizeXL regionBtn" id="gyeonggi"	>경기</button>
			<button type="button" class="btnSizeXL regionBtn" id="incheon"	>인천</button>
			<button type="button" class="btnSizeXL regionBtn" id="busan"	>부산</button>
			<button type="button" class="btnSizeXL regionBtn" id="daegu"	>대구</button>
			<button type="button" class="btnSizeXL regionBtn" id="gyeongju"	>경주</button>
			<button type="button" class="btnSizeXL regionBtn" id="daejeon"	>대전</button>
			<button type="button" class="btnSizeXL regionBtn" id="ulsan"	>울산</button>
			<button type="button" class="btnSizeXL regionBtn" id="sejong"	>세종</button>
			<button type="button" class="btnSizeXL regionBtn" id="gangwon"	>강원</button>
			<button type="button" class="btnSizeXL regionBtn" id="gyeongnam">경남</button>
			<button type="button" class="btnSizeXL regionBtn" id="gyeongbuk">경북</button>
			<button type="button" class="btnSizeXL regionBtn" id="jeonnam"	>전남</button>
			<button type="button" class="btnSizeXL regionBtn" id="jeonbuk"	>전북</button>
			<button type="button" class="btnSizeXL regionBtn" id="chungnam"	>충남</button>
			<button type="button" class="btnSizeXL regionBtn" id="chungbuk"	>충북</button>
			<button type="button" class="btnSizeXL regionBtn" id="jeju"		>제주</button>
		</div>
		<div>
			<button type="button" id="chatReturnBtn" class="btnSizeL chatReturnBtn">돌아가기</button>
		</div>
	</div>
</div>
