<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="<%=request.getContextPath()%>/resources/js/app/users/chat/regionChoiceUI.js"></script>
<script>
let authId = "<%=session.getAttribute("authId")%>";
let chatName = "<%=session.getAttribute("chatName")%>";
</script>
<div class="regionChoiceMessage">
	<span class="message">지역을 선택하세요</span>
</div>
<div class="regionChoice-area">
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
</div>