<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/kjh/companyMyPromotion.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>

<security:authorize access="isAuthenticated()"><!-- 로그인했니? -->
	<security:authentication property="principal.member" var="member"/><!-- memberVO정보를 member변수에 저장 -->
</security:authorize>

<div class="cmpnyMemInfo">
	<div id="sri_section" class="">
		<div id="content" class="basic">
			<div id="sri_gnb_wrap">
		 <ul class="gnb">
                    <li class="only"><a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_15"></use>
                            </svg> <span class="txt"></span>
                        </a></li>
                    <li class="only"><a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_15"></use>
                            </svg> <span class="txt">기업정보</span>
                        </a></li>
                    <li class="only"><a href="<%=request.getContextPath() %>/users/companyDetail/${member.company.companyId}" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg> <span class="txt">대표 기업정보</span>
                    <li class="only  selected"><a href="<%=request.getContextPath()%>/companyMyPromotionView" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'alarm', '')">
                            <svg>
                                <use xlink:href="#svg_my_19"></use>
                            </svg> <span class="txt">내 프로모션</span>
                        </a></li>
                </ul>
			</div>
			
			
			
<div class="kjh_wrap_content">
	<div class="wrap_content">
	
		<div id="divTitle" class="wrap_title">
			<h1 class="title_common">내 프로모션</h1>
		</div>
		
		<div class="promotion_select_btn">
			<button class="promotion_ImgAdvrt" id="promotion_select_btn_ImgAdvrt" onclick="ImgAdvrtSelect_onclick()">이미지 광고 신청 현황</button>
			<p class="promotion_select_btn_pTag"> / </p>
			<button class="promotion_CmpAdvrt" id="promotion_select_btn_CmpAdvrt" onclick="CmpAdvrtSelect_onclick()">기업 광고 현황</button>
		</div>
		
		<div id="promotion_ImgAdvrt">
		<div class="promotion_hold_border">
			<p class="promotion_hold_border_pTag">사용 중인 이미지 광고 : </p> 
			<p class="promotion_hold_border_input" id="holdImgAdvrt">
			
			</p>
           	<a class="promotion_hold_border_goImgAdvrtView" href="<%=request.getContextPath()%>/imageAdvrtView">이미지 광고 구입 하기</a>
		</div>
		
		<div class="wrap_board">
        <h1 class="promotion_hold_Title">구매 / 만료 내역</h1>
			<div class="tblType">
				<table>
					<thead>
						<tr>
							<th style="width: 130px;">번호</th>
							<th style="width: 115px;">등록위치</th>
							<th>제목</th>
							<th style="width: 130px;">구매일자</th>
							<th style="width: 150px;">심사결과</th>
						</tr>
					</thead>
					<tbody id="promotion_hold_ImgAdvrt_tbody">
					</tbody>
				</table>
			</div>
		</div>
		</div>
		
		<!-- ///////////////////////////////////////////////////////// -->
		
		<div id="promotion_cmpAdvrt">
		<div class="promotion_hold_border">
			<p class="promotion_hold_border_pTag">사용 중인 기업 광고 : </p> 
			<p class="promotion_hold_border_input" id="holdCmpAdvrt">
			
			</p>
           	<a class="promotion_hold_border_goImgAdvrtView" href="<%=request.getContextPath()%>/cmpAdvrtView">기업 광고 구입 하기</a>
		</div>
		
		<div class="wrap_board">
        <h1 class="promotion_hold_Title">구매 / 만료 내역</h1>
			<div class="tblType">
				<table>
					<thead>
						<tr>
							<th style="width: 130px;">번호</th>
							<th style="width: 115px;">유형</th>
							<th>내용</th>
							<th style="width: 130px;">시작일자</th>
							<th style="width: 150px;">만료일자</th>
						</tr>
					</thead>
					<tbody id="promotion_hold_cmpAdvrt_tbody">
					</tbody>
				</table>
			</div>
		</div>
		</div>
		
	</div>
</div>
		</div>	
	</div>		
</div>

		<!-- //////////////////////////////모달/////////////////////////// -->


<div id=myImgAdvrtDetail-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 상세</h3>
				<div class="TicketPay-body" id="step-Ticketinfo-01">
				
				</div>
		</div>
	</div>
</div>


<div id=myCmpAdvrtDetail-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 상세</h3>
				<div class="TicketPay-body" id="step-Ticketinfo-02">
				
				</div>
		</div>
	</div>
</div>

