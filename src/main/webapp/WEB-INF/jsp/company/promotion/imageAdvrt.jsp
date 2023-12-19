<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/kjh/ImageAdvrt.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>



<!-- 캘린더 임포트  -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


<title>이미지 광고</title>
<div class="imgAdvrtWrap">
	<div id="content" class="main-content__inner">
	    <section>
	        <div class="page-top-head">
	            <h2 class="page-top-head__title">기업에 맞는 이미지 광고를 선택해 보세요.</h2>
	            <p class="page-top-head__desc">메인 페이지에서 사용자의 이목을 끌 수 있는 기회!</p>
	        </div>
	        <div class="prod-content">
	            <div class="prod-preview">
	                <div role="tablist" class="tab__list prod-preview__tab">
	                <button type="button" role="tab" class="tab__btn" id="slide_btn" aria-selected=true onclick="Slide_onclick()">슬라이드 광고</button>
	                <button type="button" role="tab" class="tab__btn" id="banner_btn" aria-selected="false" onclick="Banner_onclick()">배너 광고</button>
	                </div>
	                <div class="prod-preview__container prod-preview__container--medium" id="slide_img_div" >
	                	<img class="_transition" src="<%=request.getContextPath() %>/resources/upload/ImgAdForm/imgAdvrt_Image.png" id="slide_img" alt="" style="transform: translateY(0px);">
	                </div>
	                 <div class="prod-preview__container prod-preview__container--medium" id="banner_img_div" style="display:none">
	                	<img class="_transition" src="<%=request.getContextPath() %>/resources/upload/ImgAdForm/BannerAdvrt_Image.png" id="banner_img" alt="" style="transform: translateY(0px);" style="display:none">
	                 </div>
	            </div>
	            <div class="prod-list" id="ImageAdvrtBody">
						
						<!-- 이 사이에 이미지 광고 리스트가 들어간다 -->

	                
	            </div>
	          </div>
	        <div> 
	            <div class="box-product-info">
	                <div class="box__title"><strong class="title">상품 구매 혜택</strong></div>
	                <div class="box__benefit">
	                    <div class="box__benefit__item"><strong>첫 구매 페이백</strong>
	                        <p> 채용광고 첫 구매 시<br> 결제금액 100% S-Point로 적립 </p>
	                    </div>
	                    <!---->
	                    <div class="box__benefit__item"><strong>광고 구매당일 무료</strong>
	                        <p> 채용광고를 구매한 당일은<br> 무료로 광고가 적용됩니다 </p>
	                    </div>
	                    <div class="box__benefit__item"><strong>광고 주말 1일 무료</strong>
	                        <p> 채용광고를 주말 포함하여<br> 구매할 경우 1일 추가제공 </p>
	                    </div>
	                </div>
	            </div>
	            <div class="box-product-notice"><strong class="title">유의사항</strong>
	                <ul class="notice__list">
	                    <li>[주의] 유료 상품을 이용 중이신 경우, 공고를 조기 마감하더라도 남은 기간에 대한 차액은 환불되지 않습니다.</li>
	                    <li>검색 키워드, 검색 플러스 상품은 공고와 연관된 키워드를 대상으로만 구매할 수 있습니다.</li>
	                    <li>헤드헌팅, 인재파견 기업이 랭크업, 강조효과 상품을 구매하는 경우, '헤드헌팅 채용정보', '인재파견 채용정보'에서만 노출됩니다 (모바일 상품의 경우, 일부 페이지에서 노출 제한이 있을 수 있습니다.) </li>
	                    <li>기업로고가 등록되어 있지 않을 경우 로고 영역에 기본 아이콘이 적용됩니다.</li>
	                    <li>첫 구매 페이백: 채용광고 상품 구매 시 제공되며, 사업자번호 기준 최초 1회 결제에 한해 적용됩니다.</li>
	                    <li>S-Point 적립: 인적성검사, 공고 즉시등록, 채용 홈페이지 상품은 포인트 적립 대상에서 제외됩니다.</li>
	                    <li>광고 구매 당일 무료: 광고 시작일을 익일 이후로 예약 구매하는 경우 혜택이 제공되지 않습니다.</li>
	                    <li>광고 주말 1일 무료 혜택: 무료 구매 시에는 제공되지 않으며, 기간 추가 제공 혜택과 중복 제공되지 않습니다. 주말이 두 번 이상 포함되더라도 혜택은 최대 1일만 제공됩니다.</li>
	                    <li>상품 혜택: 채용광고 추가 상품 무료 제공 혜택은 유료 구매 시에만 제공됩니다.</li>
	                </ul>
	            </div>
	            <div class="box-product-notice"><strong class="title">이용문의</strong>
	                <ul class="notice__list">
	                    <li> 문의 방법: 02-2025-4733 / FAX) 02-6937-0039 (대표), 02-6937-0035 (세금계산서) / help@saramin.co.kr </li>
	                    <li>상담가능시간: 평일 09:00~19:00 / 토, 일, 공휴일 휴무</li>
	                    <li> 결제수단: 신용카드 / 휴대폰 / 실시간 계좌이체 / 가상계좌 / 네이버페이 / 카카오페이 / 토스페이 / 페이코 / S-포인트 </li>
	                </ul>
	            </div>
	        </div>
	    </section>
	</div>
</div>

<!--결제 확인 Modal 시작 -->
<div id="ImgAdvrtPayModal" class="modal fade">
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
						<p type="text" id="infoPage03" hidden></p> <!-- 여기에 광고 번호가 들어있음 -->
						<p type="text" id="infoPage04" hidden></p> <!-- 여기에 광고 가격이 들어있음 -->
						<p type="text" id="infoPage05" hidden></p> <!-- 여기에 startDate가 들어있음 -->
						<p type="text" id="infoPage06" hidden></p> <!-- 여기에 endDate가 들어있음 -->
					</div>
				</div>
			</div>

			<div class="PeriodTicketPayment-footer">
				<div class="modal-footer">

					<a href="#" id="memDltBtn" class="btn btn-light btn-icon-split" data-bs-dismiss="modal"> 
						<span class="text">취소</span>
					</a> 
					<a href="#" id="memBuyBtn" class="btn btn-danger btn-icon-split" onclick="ImgAdvrtPayModal_onclick()" data-bs-toggle="modal" data-bs-target="#ImgAdvrtPayModal_process"> 
						<span class="text">구매</span>
					</a>
				</div>
			</div>

		</div>
	</div>
</div>
<!--결제 확인 Modal 끝 -->

<!--결제 상세 Modal 시작 -->
<div id="ImgAdvrtPayModal_process" class="modal fade">
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
							<span class="step-info">양식 작성</span>
						</div>
						<div class="progress-step">
							<div class="circle">4</div>
							<span class="step-info">결제 수단</span>
						</div>
						<div class="progress-step">
							<div class="circle">5</div>
							<span class="step-info">구매완료</span>
						</div>
					</div>
					
					
					<!-- 1번 내용 -->
					<div class="displayCont" data-idx="1">
						<h2>결제 금액</h2>
						<input type="hidden" value="<%=(String)session.getAttribute("authId")%>" id="authId"/>
						<div class="step-Ticketinfo-01" id="step-Ticketinfo-01">
						</div>
						<div class="process-btn" id="currpage">
							<button class="btnPrev prev">취소</button>
							<button class="btnNext next">다음</button>
						</div>
					</div>
						
						
						
					<!-- 2번 내용 -->
					<div class="displayCont" data-idx="2" style="display: none">
						<h2>사업자 인증</h2>
						<div class="passCertification">
						<p class="pc-information">불법 사용 방지를 위해</p>
						<p class="pc-information">사업자 인증을 진행 합니다.</p>
						<p class="pc-information">인증에 문제가 있을 경우,</p>
						<p class="pc-information">NICE 평가정보 고객센터로 문의 주시기 바랍니다.</p>
						</div>
						
						<span class="pc-text-warn" id="pc-text-warn" style="display:none">사업자 등록 번호가 일치하지 않습니다.</span>	
						<div class="passCertification-text">
						<input type='password' class="pc-text" placeholder="사업자 등록 번호를 입력해주세요." id="inputPass" autocomplete="off">
						<a class="btn btn-info btn-icon-split" id="passCertification" onclick="passCertification_onclick()">
                            <span class="pc-text-btn" id="pc-text-btn">인증하기</span>
                        </a>
						</div>
						<div class="process-btn" id="currpage">
							<button class="btnPrev prev">취소</button>
							<button class="btnNext next">다음</button>
						</div>
					</div>
					
					
					
					<!-- 3번 내용 -->
					<div class="displayCont" data-idx="3" style="display: none">
					    <h2>양식 작성</h2>
					    <div class="wirtePerticipateForm">
					        <div class="ticketInfo-01">
					            <p class="ticketInfo-Title">제목 : </p>
					            <input class="ticketInfo-Title-inputtitle" id="formTitle" type="text" placeholder="제목을 입력해주세요." size="50" maxlength="50" />
					        </div>
					        <div class="ticketInfo-01-01">
					            <p class="ticketInfo-Title-contidion">(최대 50자 내외)</p>
					        </div>
					        <div class="ticketInfo-01">
					            <p class="ticketInfo-Title">내용 : </p>
								<textarea class="ticketInfo-Title-inputcontent" id="formContent" rows="10" style="resize:none;" placeholder="광고에 대한 설명을 간단히 적어주세요. &#13;&#10;&#13;&#10;예) 본 광고는 00 기업의 채용 광고 입니다." maxlength="300"></textarea>
					        </div>
					        <div class="ticketInfo-01-01">
					            <p class="ticketInfo-Title-contidion">(최대 300자 내외)</p>
					        </div>
					        <div class="ticketInfo-01">
					            <p class="ticketInfo-Title">첨부파일(1장) : </p>
					        <input type="file" id="ImgAd" name="uploadFile" accept="image/png, image/jpeg" />
					        </div>
						  	<div class="process-btn" style="display: none" id="middlepage">
								<button class="btnPrev prev">취소</button>
								<button class="btnNext next">양식 제출하기</button>
							</div>
					    </div>
					</div>


					<!-- 4번 내용 -->
						<div class="displayCont" data-idx="4" style="display: none">
					    <h2>결제 수단</h2>
					    <div class="wirtePerticipateForm">
						    <div class="passCertification">
								<p class="pc-information">고객님의 결제 수단을 선택해주세요.</p>
							</div>
                 			<div class="ImgAdbankSelect">
		                  		<div class="imgAdPay_radio"><input type="radio" id="creditcard" name="payment" value="creditcard"/><label id="paymentcheck" for="creditcard">신용카드</label></div>
		                  		<div class="imgAdPay_radio"><input type="radio" id="kakaopay" name="payment" value="kakaopay"/><label id="paymentcheck" for="kakaopay">카카오페이</label></div>
		                  		<div class="imgAdPay_radio"><input type="radio" id="tosspay" name="payment" value="tosspay"/><label id="paymentcheck" for="tosspay">토스</label></div>
		                  		<div class="imgAdPay_radio"><input type="radio" id="mutongjang" name="payment" value="mutongjang"/><label id="paymentcheck" for="mutongjang">무통장 입금</label></div>
                 			</div>
					    <div class="process-btn" style="display: none" id="almostpage">
								<button class="btnPrev prev">취소</button>
								<button class="btnNext next" id="goPayPage" onclick="imgAdvrtPay_onclick()">결제 하기</button>
						</div>
						 <div class="process-btn" style="display: none" id="golastPage">
								<button class="btnPrev prev">취소</button>
								<button class="btnNext next">다음</button>
						</div>
					    </div>
					</div>
					
					
					
					<!-- 5번 내용 -->
					<div class="displayCont" data-idx="5" style="display: none">
						<h2>구매 완료</h2>
						<div class="ticketPatComplete">
						<span class="ticketPatComplete-span">구매한 광고는 '마이페이지'의 </span>
						<span class="ticketPatComplete-span">'내 프로모션'에서 확인하실 수 있습니다.</span>
						</div>
						<div class="process-btn" style="display: none" id="lastpage">
							<button class="btnPrev" id="payClose">닫기</button>
							<a class="btnNext" href="<%=request.getContextPath()%>/companyMyPromotionView"> 광고 확인하러 가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--결제 상세 Modal 끝 -->

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>



