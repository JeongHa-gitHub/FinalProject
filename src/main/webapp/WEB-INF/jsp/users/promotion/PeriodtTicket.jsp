<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/kjh/PeriodTicket.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/jquery.smartWizard.min.js">
	
</script>
<link
	href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/smart_wizard.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/smart_wizard_theme_dots.min.css"
	rel="stylesheet" type="text/css" />

<!--이미지 광고 리스트 불러오기-->
<div class="periodTicket">
<input type="hidden" value="<%=(String)session.getAttribute("authId")%>" id="authId"/>
	<section class="page-talent-pool-product">
		<div class="page-top-head">
			<h4 class="page-top-head__title">나에게 맞는 기간제 이용권을 선택해 보세요.</h4>
			<p class="page-top-head__desc">더 많은 기업 후기에 대해 알아볼 수 있는 기회!</p>
		</div>
		<div class="talentpool-product" role="region" aria-label="인재풀 상품 안내"
			id="ticketBody">
				<!-- 이 사이에 리스트가 들어감 -->
		</div>
	</section>
</div>
<!--이미지 광고 리스트 불러오기 완료-->


<!--결제 확인 Modal 시작 -->
<div id="tModal" class="modal fade">

	<div class="modal-dialog">
		<div class="modal-content">

			<div class="PeriodTicketPayment-body">
				<div class="modal-body modalBody">
					<div class="payCheck">
						<div class="payCheck-info01">
						<strong class="talentpool-product-card__info" id="infoPage01"></strong>
						<strong class="talentpool-product-card__info" id="infoPage02"></strong>
						<strong class="talentpool-product-card__info"> 일 권을</strong>
						</div>
						<strong class="talentpool-product-card__info">구매하시겠습니까?</strong>
						<p type="text" id="infoPage03" hidden></p> <!-- 여기에 이용권 번호가 들어있음 -->
					</div>
				</div>
			</div>

			<div class="PeriodTicketPayment-footer">
				<div class="modal-footer">

					<a href="#" id="memDltBtn" class="btn btn-light btn-icon-split" data-bs-dismiss="modal"> 
						<span class="text">취소</span>
					</a> 
					<a href="#" id="memBuyBtn" class="btn btn-danger btn-icon-split" onclick="buyCheck_onclick()" data-bs-toggle="modal" data-bs-target="#pModal"> 
						<span class="text">구매</span>
					</a>
				</div>
			</div>

		</div>
	</div>
</div>
<!--결제 확인 Modal 끝 -->

<!--결제 상세 Modal 시작 -->
<div id="pModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="payPocess">
				<div class="payProcess_container">
					<div class="progress-container">
						<div class="progress" id="progress"></div>
						<div class="progress-step">
							<div class="circle active">1</div>
							<span class="step-info">상품 설명</span>
						</div>
						<div class="progress-step">
							<div class="circle">2</div>
							<span class="step-info">2차 인증</span>
						</div>
						<div class="progress-step">
							<div class="circle">3</div>
							<span class="step-info">구매완료</span>
						</div>
					</div>
					
					<!-- 1번 내용 -->
					<div class="displayCont" data-idx="1">
						<h2>결제 금액</h2>
						<div class="step-Ticketinfo-01" id="step-Ticketinfo-01">
						
						</div>
						
					</div>
						
						
						
					<!-- 2번 내용 -->
					<div class="displayCont" data-idx="2" style="display: none">
						<h2>비밀번호 인증</h2>
						<div class="passCertification">
						<p class="pc-information">구매 인증에 필요한 기능입니다.</p>
						<p class="pc-information">사용자님의 비밀번호를 인증해 주세요.</p>
						</div>
						
						<span class="pc-text-warn" id="pc-text-warn" style="display:none">비밀번호가 일치하지 않습니다.</span>	
						<div class="passCertification-text">
						<form>
						<input type='password' class="pc-text" placeholder="비밀번호를 입력해주세요." id="inputPass" autocomplete="off">
						</form>
						<a class="btn btn-info btn-icon-split" id="passCertification" onclick="passCertification_onclick()">
                            <span class="pc-text-btn" id="pc-text-btn">인증하기</span>
                        </a>
						</div>
					</div>
					
					
					
					
					<!-- 3번 내용 -->
					<div class="displayCont" data-idx="3" style="display: none">
						<h2>구매 완료</h2>
						<div class="ticketPatComplete">
						<span class="ticketPatComplete-span">구매한 이용권은 '마이페이지'의 </span>
						<span class="ticketPatComplete-span">'포인트/쿠폰/이용권'에서 확인하실 수 있습니다.</span>
						</div>
					</div>

					<div class="process-btn" id="currpage">
						<button class="btnPrev" id="prev">취소</button>
						<button class="btnNext" id="next">다음</button>
					</div>
					<div class="process-btn" style="display: none" id="lastpage">
						<button class="btnPrev" id="payClose">닫기</button>
						<a class="btnNext" href="<%=request.getContextPath() %>/myPage_PointCouponTicketView">이용권 확인하러 가기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--결제 상세 Modal 끝 -->
