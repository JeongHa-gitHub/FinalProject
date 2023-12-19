<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!-- 파비콘 -->
<link rel="icon" href="<%=request.getContextPath()%>/resources/images/favicon.png" type="image/x-icon">   

<style>
.rolletWrap {
	background: #fff4f4;
    border-radius: 15px;
    width: 50%;
    margin: 60px auto;
    padding-top: 70px;
    box-shadow: 0 2px 30px 0 rgba(0, 0, 0, 0.15);
}

.rollet-footer {
	border-top: 1px solid #ddd;
	text-align: end;
}

.rollet-footer button {
	color: #fff;
    background: #ff717e;
    border-radius: 5px;
    padding: 10px;
    width: 85px;
    margin: 15px;
    border-color: #ff808c;
    font-size: 15px;
    cursor: pointer;
    font-weight: 600;
}

.rollet-footer a {
	color : #fff;
}

.roulette-wrapper {
	position: relative;
	left: 0;
	right: 0;
	top: 38%;
	margin: 0 auto;
	width: 100%;
	max-width: 669px;
}

.resultLayer {
	position: absolute;
	width: 100%;
	height: 100%;
	display: none;
	z-index: 10;
	box-sizing: border-box;
	max-width: 456px;
	left: 0;
	right: 0;
	top: 10rem;
	margin: 0 auto;
}

.resultLayer #closeLayer {
	position: absolute;
    top: -2rem;
    right: -2rem;
    margin: 0 auto;
    width: 18.5%;
    box-sizing: border-box;
    background: none;
    border: none;
    cursor: pointer;
}

.roulette-wrapper #roulette-bg {
	position: relative;
	z-index: 2;
}

.roulette-wrapper #roulette-gift {
	position: absolute;
	z-index: 2;
	top: 40px;
	bottom: 0;
	left: 0;
	right: 0;
	margin: 0 auto;
	max-width: 600px;
	width: 100%;
}

.roulette-wrapper #roulette-niddle {
	position: absolute;
	z-index: 3;
	width: 6.2%;
	top: 0;
	left: 0;
	right: 0;
	margin: 0 auto;
}

.roulette-wrapper #roulette-startBtn {
	position: absolute;
	z-index: 3;
	width: 36.7%;
	top: 31.5%;
	left: 0;
	right: 0;
	margin: 0 auto;
	left: -9px;
}
</style>
<!-- 로그인 안했을 경우 -->	
<c:set var="user" value="${sessionScope.authId}" />
<input type="text" name="user" id="user" value="${user}" hidden />
<!-- 	<script>location.href="/FinalProject/login.do";</script> -->

<!-- 로그인 했을 경우 -->

<script type="text/javascript" src="/FinalProject/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="/FinalProject/resources/js/jQueryRotate.js"></script>
<script type="text/javascript" src="/FinalProject/resources/js/rollet.js"></script>
<div>
	<div class="rolletWrap">
		<div class="roulette-wrapper">
	
				<div class="resultLayer">
					<!--이벤트 종료되었을 경우-->
					<img id="resultImg" src="http://webimg.jestina.co.kr/UpData/jestina/event/201201_jWeek/roulette_product_end.png" alt="이벤트종료" style="width: 456px;">
	
					<button id="closeLayer">
						<img src="http://webimg.jestina.co.kr/UpData/jestina/event/201201_jWeek/popup_close__btn.png" alt="닫기">
					</button>
	
				</div>
	
				<img id="roulette-bg"
						src="<%=request.getContextPath()%>/resources/images/roulette_back2.png">
				<img id="roulette-gift"
						src="<%=request.getContextPath()%>/resources/images/roulette.png">
	
				<img id="roulette-niddle"
						src="http://webimg.jestina.co.kr/UpData/jestina/event/201201_jWeek/roulette_niddle.png">
	
				<button id="start-rotate">
					<img id="roulette-startBtn"
						src="http://webimg.jestina.co.kr/UpData/jestina/event/201201_jWeek/roulette_btn.png">
				</button>
				
			</div>
	
		<div class="rollet-footer">
	        <button type="button" class="btn btn-info" data-bs-dismiss="modal" id="coupIssue" style="color: #fff;">닫기</button>
	    </div>
	
	</div>
</div>


