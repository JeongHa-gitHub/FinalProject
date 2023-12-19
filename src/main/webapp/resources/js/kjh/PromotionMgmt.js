$(document).ready(function() {
actor_Select_Users();
});

//<< 액터 선택 >>
var actor_Select = '';

//<< 사용자 탭 클릭 했을 때 >>
function actor_Select_Users(){
	$(`#Company_adList`).attr('style', 'display:none');
	$(`#Users_TicketList`).attr('style', 'display:block');
	
	
	$(`#promotionMnmt_company`).attr('style', 'display:none !important');
	$(`#promotionMnmt_user`).attr('style', 'display:block');
	
	$(`.actor_SelectBtn01`).attr('style', 'background-color: #90cdff');
	$(`.actor_SelectBtn02`).attr('style', 'background-color: #e2f2ff');
	
	actor_Select = 'Users';
	var cpath = $("body").data("contextPath");
	
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectTicketList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			//  alert("데이터 가져오기 성공:", data);
			updateTicketList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
	
}


//<<이용권 리스트 만들기>>
function updateTicketList(data){
	var ticketHTML = ``
	for (var i = 0; i < data.length; i++) {
		var ticket = data[i];
		var rnum = ticket.rnum;
		var ticketNo = ticket.ticketNo;
		var ticketName = ticket.ticketName;
		var ticketPeriod = ticket.ticketPeriod;
		var ticketPrice = ticket.ticketPrice;
		ticketHTML += `	
							<tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal" 
								onclick="ticketDetailModal('${ticketNo}','${ticketName}','${ticketPeriod}','${ticketPrice}')">
								<td>`+ rnum + `</td>
								<td>`+ ticketName + `</td>
								<td>`+ ticketPeriod + ` 일</td>
								<td>`+ ticketPrice + ` 원</td>
							</tr>
            			`;

		$('#ticketBody').html(ticketHTML);
	}
}

//<< 이용권 상세내역 >>
function ticketDetailModal(ticketNo,ticketName,ticketPeriod,ticketPrice){
		console.log(ticketNo,ticketName,ticketPeriod,ticketPrice);
		
		var ticketDetailHTML = `
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">이용권 번호 : </p>
									<p>`+ ticketNo +`</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">이용권 이름 : </p>
									<p>`+ ticketName + `</p>
								</div>
								
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">기간 : </p>
									<p>`+ ticketPeriod + ` 일</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">가격 : </p>
									<p>`+ ticketPrice + ` Point</p>
								</div>

								<div class="PeriodTicketPayment-footer">
									<div class="modal-footer01">
										<a href="#" class="btn btn-light btn-icon-split" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Update"
																			onclick="promotionUpdate_onclick('${ticketNo}','${ticketName}','${ticketPeriod}','${ticketPrice}')"> 
											<span class="text">수정</span>
										</a> 
										<a href="#" class="btn btn-danger btn-icon-split" onclick="promotionDelete_onclick('${ticketNo}')"> 
											<span class="text">삭제</span>
										</a>
										<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
											<span class="text">취소</span>
										</a>
									</div>
								</div>
								`
	 	$('#step-Ticketinfo-01').html(ticketDetailHTML);
}

// << 프로모션 수정 >>
function promotionUpdate_onclick(ticketNo,ticketName,ticketPeriod,ticketPrice){
		var ticketDetailHTML = `
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">이용권 번호 : </p>
									<p id="update_ticketNo">`+ ticketNo +`</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">이용권 이름 : </p>
									<input class="promotionUpdate-input" type="text" value="`+ ticketName + `" id="update_ticketName"/>
								</div>
								
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">기간 : </p>
									<input class="promotionUpdate-input" type="text"  value="`+ ticketPeriod +`" id="update_ticketPeriod"/>일
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">가격 : </p>
									<input class="promotionUpdate-input" type="text" value="`+ ticketPrice +`" id="update_ticketPrice"/>Point
								</div>

								<div class="PeriodTicketPayment-footer">
									<div class="modal-footer">
										<a href="#" id="memDltBtn" class="btn btn-light btn-icon-split" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Update"
																			onclick="promotionComplete_onclick()"> 
											<span class="text">수정완료</span>
										</a> 
										<a href="#" id="memBuyBtn" class="btn btn-danger btn-icon-split" cancel data-bs-dismiss="modal"> 
											<span class="text">취소</span>
										</a>
									</div>
								</div>
								`
	 	$('#step-Ticketinfo-02').html(ticketDetailHTML);
}

	
// << 프로모션 모달 수정 로직 >>
function promotionComplete_onclick(){
	var cpath = $("body").data("contextPath");
	var update_ticketNo = document.getElementById('update_ticketNo').innerHTML;
	var update_ticketName = document.getElementById('update_ticketName').value;
	var update_ticketPeriod = parseInt(document.getElementById('update_ticketPeriod').value);
	var update_ticketPrice = parseInt(document.getElementById('update_ticketPrice').value);
	
	var updateTicket = {
		ticketNo:update_ticketNo,
		ticketName:update_ticketName,
		ticketPeriod:update_ticketPeriod,
		ticketPrice:update_ticketPrice
	}
	
	console.log("체킁", updateTicket);
	console.log("체킁", cpath);
	
	
	if(confirm("수정 하시겠습니까?")){
		$.ajax({
		url: cpath + "/updateUserPromotion",
		type: "post",
		contentType: 'application/json',
		data: JSON.stringify(updateTicket),
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			alert("수정이 완료 되었습니다.");
			location.reload();
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.log(xhr.status);
		}
	});
	}
	
}

// << 프로모션 모달 삭제 로직 >>
function promotionDelete_onclick(ticketNo){
	var cpath = $("body").data("contextPath");
	var data = {ticketNo:ticketNo}
	
	console.log("체킁", ticketNo);
	console.log("체킁", data);
	
	if(confirm("삭제 하시겠습니까?")){
		$.ajax({
		url: cpath + "/deleteUserPromotion",
		type: "post",
		contentType: 'application/json',
		data: JSON.stringify(data),
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			alert("삭제가 완료 되었습니다.");
			location.reload();
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.log(xhr.status);
		}
	});
	}
}

// << 프로모션 모달 등록 로직 (사용자)>>
function actor_Users_InsertBtn_onclick(){

		var ticketDetailHTML = `
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">이용권 이름 : </p>
									<input class="promotionUpdate-input" type="text" id="insert_ticketName"/>
								</div>
								
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">기간 : </p>
									<input class="promotionUpdate-input" type="text" id="insert_ticketPeriod"/>일
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">가격 : </p>
									<input class="promotionUpdate-input" type="text" id="insert_ticketPrice"/>Point
								</div>

								<div class="PeriodTicketPayment-footer">
									<div class="modal-footer">
										<a href="#" id="memDltBtn" class="btn btn-light btn-icon-split" onclick="promotionInsert_onclick()"> 
											<span class="text">등록</span>
										</a> 
										<a href="#" id="memBuyBtn" class="btn btn-danger btn-icon-split" cancel data-bs-dismiss="modal"> 
											<span class="text">취소</span>
										</a>
									</div>
								</div>
								`;
	 	$('#step-Ticketinfo-03').html(ticketDetailHTML);
}

function promotionInsert_onclick(){
	console.log("이용권 이름:", document.getElementById('insert_ticketName').value);
	console.log("기간:", document.getElementById('insert_ticketPeriod').value);
	console.log("가격:", document.getElementById('insert_ticketPrice').value);
	
	var ticketName = document.getElementById('insert_ticketName').value;
	var ticketPeriod = document.getElementById('insert_ticketPeriod').value;
	var ticketPrice = document.getElementById('insert_ticketPrice').value;
	var cpath = $("body").data("contextPath");

	
	var insertTicket = {
		ticketName:ticketName,
		ticketPeriod:ticketPeriod,
		ticketPrice:ticketPrice
	}
	
		if(confirm("등록 하시겠습니까?")){
			$.ajax({
			url: cpath + "/insertUserPromotion",
			type: "post",
			contentType: 'application/json',
			data: JSON.stringify(insertTicket),
			success: function(data) {
				// 성공 시 처리
				alert("등록이 완료 되었습니다.");
				location.reload();
			},
			error: function(xhr, status, error) {
				// 에러 처리
				alert("데이터 가져오기 실패:", error);
				console.log(xhr.status);
			}
		});
		}
}

////////////////////////////////////////////////////////////////////////////////////////////

//<< 기업 탭 클릭 했을 때 >>
function actor_Select_Cmp(){
	$(`.actor_SelectBtn02`).attr('style', 'background-color: #90cdff');
	$(`.actor_SelectBtn01`).attr('style', 'background-color: #e2f2ff');
	
	$(`#Users_TicketList`).attr('style', 'display:none');
	$(`#Company_adList`).attr('style', 'display:block');
	
	$(`#actor_Users_InsertBtn`).attr('style', 'display:none !important');
	$(`#actor_Company_InsertBtn`).attr('style', 'display:block');
	
	
	
	actor_Select = 'Company';
	var cpath = $("body").data("contextPath");
	
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectAdList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			//alert("데이터 가져오기 성공:", data);
			console.log(data);
			updateCmpAdList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
	
}

//<< 광고 리스트 만들기 >>
function updateCmpAdList(data){
	var adHTML = ``
	for (var i = 0; i < data.length; i++) {
		var ad = data[i];
		var rnum = ad.rnum;
		var adNo = ad.imgadNo;
		var adName = ad.imgadName;
		var adPeriod = ad.imgadPeriod;
		var adPrice = ad.imgadPrice;
		var adType = '';
		
		if(!ad.imgadLoc) {
			adType = '기업광고';
		}else{
			adType = '이미지광고';
		}
		
		
		adHTML += `	
							<tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal" 
								onclick="adDetailModal('${adNo}','${adName}','${adPeriod}','${adPrice}')">
								<td>`+ rnum + `</td>
								<td>`+ adType + `</td>
								<td>`+ adName + `</td>
								<td>`+ adPeriod + ` 일</td>
								<td>`+ adPrice + ` 원</td>
							</tr>
            			`;

		$('#adBody').html(adHTML);
		adType='';
	}
}

//<< 광고 상세내역 >>
function adDetailModal(adNo,adName,adPeriod,adPrice){



		var adDetailHTML = `
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">광고 번호 : </p>
									<p>`+ adNo +`</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">광고 이름 : </p>
									<p>`+ adName + `</p>
								</div>
								
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">기간 : </p>
									<p>`+ adName + ` 일</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">가격 : </p>
									<p>`+ adPrice + ` 원</p>
								</div>

								<div class="PeriodTicketPayment-footer">
									<div class="modal-footer01">
										<a href="#" class="btn btn-light btn-icon-split" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Update"
																			onclick="adUpdate_onclick('${adNo}','${adName}','${adPeriod}','${adPrice}')"> 
											<span class="text">수정</span>
										</a> 
										<a href="#" class="btn btn-danger btn-icon-split" onclick="adDelete_onclick('${adNo}')"> 
											<span class="text">삭제</span>
										</a>
										<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
											<span class="text">취소</span>
										</a>
									</div>
								</div>
								`
	 	$('#step-Ticketinfo-01').html(adDetailHTML);
}

// << 광고 수정 >>
function adUpdate_onclick(adNo,adName,adPeriod,adPrice){
		var adDetailHTML = `
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">광고 번호 : </p>
									<p id="update_adNo">`+ adNo +`</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">광고 이름 : </p>
									<input class="promotionUpdate-input" type="text" value="`+ adName + `" id="update_adName"/>
								</div>
								
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">기간 : </p>
									<input class="promotionUpdate-input" type="text"  value="`+ adPeriod +`" id="update_adPeriod"/>일
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">가격 : </p>
									<input class="promotionUpdate-input" type="text" value="`+ adPrice +`" id="update_adPrice"/>원
								</div>

								<div class="PeriodTicketPayment-footer">
									<div class="modal-footer">
										<a href="#" id="memDltBtn" class="btn btn-light btn-icon-split" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Update"
																			onclick="adComplete_onclick()"> 
											<span class="text">수정완료</span>
										</a> 
										<a href="#" id="memBuyBtn" class="btn btn-danger btn-icon-split" cancel data-bs-dismiss="modal"> 
											<span class="text">취소</span>
										</a>
									</div>
								</div>
								`
	 	$('#step-Ticketinfo-02').html(adDetailHTML);
}

// << 광고 모달 수정 로직 >>
function adComplete_onclick(){
	var cpath = $("body").data("contextPath");
	var update_adNo = document.getElementById('update_adNo').innerHTML;
	var update_adName = document.getElementById('update_adName').value;
	var update_adPeriod = parseInt(document.getElementById('update_adPeriod').value);
	var update_adPrice = parseInt(document.getElementById('update_adPrice').value);
	
	var updateAd = {
		adNo:update_adNo,
		adName:update_adName,
		adPeriod:update_adPeriod,
		adPrice:update_adPrice
	}
	
	console.log("체킁", updateAd);
	console.log("체킁", cpath);
	
	
	if(confirm("수정 하시겠습니까?")){
		$.ajax({
		url: cpath + "/updateAd",
		type: "post",
		contentType: 'application/json',
		data: JSON.stringify(updateTicket),
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			alert("수정이 완료 되었습니다.");
			location.reload();
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.log(xhr.status);
		}
	});
	}
	
}