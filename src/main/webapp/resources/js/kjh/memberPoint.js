$(document).ready(function() {
	pointSelect_onclick();
});

function pointSelect_onclick(){
	$('#myPage_point_selectBtn').addClass('myPage_selector selected');
	$('#myPage_coupon_selectBtn').removeClass('selected');
	$('#myPage_ticket_selectBtn').removeClass('selected');
	
	$('#mypage_ticket').attr("style","display:none");
	$('#mypage_coupon').attr("style","display:none");
	$('#mypage_point').attr("style","display:block");
	
	
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectMyPointList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updateMyPointList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function formatDate(dateString) {
    const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
    return new Date(dateString).toLocaleDateString('ko-KR', options);
}

function updateMyPointList(data){
	var myPointHTML = ``
	var lastdata = data[0];
	var lastpoint = String(lastdata.pointRemain) + ' Point';
	
	console.log(lastdata);
	console.log(lastpoint);
	
	document.getElementById('holdpoint').value = lastpoint;
	
	for (var i = 0; i < data.length; i++) {
		var myPoint = data[i];
		var rnum = myPoint.rnum;
		
		
		var pointPay = '';
		var useType = '';
		var ticketName = '';
		
		var pointPmtno = myPoint.pointPmtno;
		var pointPdateF = formatDate(myPoint.pointPdate);
		var pointPdate = myPoint.pointPdate;
		var pmtMethdno = myPoint.pmtMethdno || '';
		var usersId = myPoint.usersId;
		var usersNm = myPoint.usersVO.usersNm;
		var ticketNo = myPoint.ticketNo || '';
		var ticketMnmtVO = myPoint.usersVO.ticketMnmtVO || '';
		
		var pointHold = myPoint.pointHold;
		var pointCharge = myPoint.pointCharge;
		var pointUse = myPoint.pointUse; 
		var pointRemain = myPoint.pointRemain;
		var pointRecord = myPoint.pointRecord;
		
		if (pmtMethdno=='P01') {
			pmtMethdno = '신용카드';
		} else if (pmtMethdno=='P02') {
			pmtMethdno = '카카오페이';
		} else if (pmtMethdno=='P04') {
			pmtMethdno = '무통장입금';
		} else if (pmtMethdno=='P03') {
			pmtMethdno = '토스페이';
		} 
		
		
		if (ticketNo !== undefined && ticketNo !== '') {
		    ticketName = ticketMnmtVO.ticketName;
		}

		
		if (ticketNo === '') {
	    useType = '충전';
	    pointPay = '+' + pointCharge;
		} else {
		    useType = '사용';
		    pointPay = '-' + String(pointUse);
		}

		
		
		myPointHTML += `    
		                <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#myPointDetail-UModal" 
		                    onclick="myPointDetailModal('${pointPmtno}','${usersId}','${usersNm}','${ticketName}','${ticketNo}','${pointPdate}','${pointHold}','${pointUse}','${pointRemain}','${pmtMethdno}','${pointCharge}')">
		                    <td>` + rnum + `</td>
		                    <td>` + useType + `</td>
		                    <td>` + pointRecord + `</td>
		                    <td>` + pointPay + ` Point</td>    
		                    <td>` + pointPdateF + `</td>    
		                </tr>
	                        `;
	$('#mypage_pointView_tbody').html(myPointHTML);
	}
}
function myPointDetailModal(pointPmtno,usersId,usersNm,ticketName,ticketNo,pointPdate,pointHold,pointUse,pointRemain,pmtMethdno,pointCharge){
	var pmtMethdno = pmtMethdno;
	if(pmtMethdno==='' && ticketNo===''){
		pmtMethdno='없음';
	}
	
	if(ticketNo==='' && pointUse==='0'){
		var myPointDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제번호 : </p>
					<p>`+pointPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제일자 : </p>
					<p>`+pointPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제수단: </p>
					<p>`+pmtMethdno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">아이디 : </p>
					<p>`+usersId+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">구매자 성함 : </p>
					<p>`+usersNm+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">보유 포인트 : </p>
					<p>`+pointHold+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">충전 포인트 : </p>
					<p>`+pointCharge+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">잔여 포인트 : </p>
					<p>`+pointRemain+`</p>
				</div>
				
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;

    $('#step-Ticketinfo-01').html(myPointDetailHTML);
	}else{
		var myPointDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제번호 : </p>
					<p>`+pointPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제일자 : </p>
					<p>`+pointPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">아이디 : </p>
					<p>`+usersId+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">구매자 성함 : </p>
					<p>`+usersNm+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">이용권 번호 : </p>
					<p>`+ticketNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">이용권 이름 : </p>
					<p>`+ticketName+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">보유 포인트 : </p>
					<p>`+pointHold+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">사용 포인트 : </p>
					<p>`+pointUse+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">잔여 포인트 : </p>
					<p>`+pointRemain+`</p>
				</div>
				
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;

    $('#step-Ticketinfo-01').html(myPointDetailHTML);
	}
}


/////////////////////////////////////////////////////////////////////////////

function couponSelect_onclick() {
	$('#myPage_coupon_selectBtn').addClass('myPage_selector selected');
	$('#myPage_ticket_selectBtn').removeClass('selected');
	$('#myPage_point_selectBtn').removeClass('selected');

	$('#mypage_point').attr("style","display:none");
	$('#mypage_ticket').attr("style","display:none");
	$('#mypage_coupon').attr("style","display:block");
	
	countMyCouponList();
}


//<< 보유 쿠폰 갯수 불러오기 >>
function countMyCouponList(){
	let authId = document.getElementById('authId').value;
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/countMyCouponList", // 서버의 엔드포인트 주소
		type: "get",
		contentType: 'application/json',
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log("몇개가 나올까~" + data);
			document.getElementById('holdcoupon').value = data + ' 개';
			getMyCouponList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

// << 쿠폰 리스트 불러오기 >>
function getMyCouponList(){
	let authId = document.getElementById('authId').value;
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectMyCouponList/" + authId, // 서버의 엔드포인트 주소
		type: "get",
		contentType: 'application/json',
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			
			updateMyCouponList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}


function updateMyCouponList(data){
	var myCouponHTML = ``
	
	for (var i = 0; i < data.length; i++) {
		var myCoupon = data[i];
		var rnum = myCoupon.couponVO.rnum;
		var cpnNo = myCoupon.couponVO.cpnNo;
		var cpnContent = myCoupon.couponVO.cpnContent;
		var cpnPrice = myCoupon.couponVO.cpnPrice;
		var endDate = myCoupon.couponVO.endDate;
		var clistIsnDateF = formatDate(myCoupon.clistIsnDate);
		var clistIsnDate = myCoupon.clistIsnDate;
		var clistUseDate = myCoupon.clistUseDate ||'';
		var clistUseDateF = '';
		var cpnName = myCoupon.couponVO.cpnName;
		var cUseType = '';
		
		
		if(clistUseDate ==''){
			clistUseDateF = '-';
		}else{
			clistUseDateF = formatDate(clistUseDate);
		}
		
		
		if(clistUseDate ==''){
			cUseType = '발급';
			clistUseDate = '-'
		}else{
			cUseType='사용';
		}
		
		
		myCouponHTML += `    
		                <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#myCouponDetail-UModal" 
		                    onclick="myCouponDetailModal('${cpnNo}','${cpnContent}','${cpnPrice}','${endDate}','${clistIsnDate}','${clistUseDate}')">
		                    <td>` + rnum + `</td>
		                    <td>` + cUseType + `</td>
		                    <td>` + cpnName + `</td>
		                    <td>` + clistIsnDateF + `</td>    
		                    <td>` + clistUseDateF + `</td>    
		                </tr>
	                        `;
	$('#mypage_couponView_tbody').html(myCouponHTML);
	}
}

function myCouponDetailModal(cpnNo,cpnContent,cpnPrice,endDate,clistIsnDate,clistUseDate) {
		
	var myCouponDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">쿠폰번호 : </p>
					<p>`+cpnNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title-CouponContent">쿠폰내용 : </p>
					<p class="ticketInfo-Title-CouponInput">`+cpnContent+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">쿠폰금액: </p>
					<p>`+cpnPrice+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">만료일자 : </p>
					<p>`+endDate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">발급일자 : </p>
					<p>`+clistIsnDate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">사용일자 : </p>
					<p>`+clistUseDate+`</p>
				</div>
				
				
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;

    $('#step-Ticketinfo-02').html(myCouponDetailHTML);
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function ticketSelect_onclick(){
	$('#myPage_coupon_selectBtn').removeClass('selected');
	$('#myPage_point_selectBtn').removeClass('selected');
	$('#myPage_ticket_selectBtn').addClass('myPage_selector selected');

	$('#mypage_point').attr("style","display:none");
	$('#mypage_coupon').attr("style","display:none");
	$('#mypage_ticket').attr("style","display:block");
	
	countMyTicketList();
}


//<< 보유 이용권 갯수 불러오기 >>
function countMyTicketList(){
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/countMyTicketList", // 서버의 엔드포인트 주소
		type: "get",
		contentType: 'application/json',
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log("몇개가 나올까~" + data);
			document.getElementById('holdticket').value = data + ' 개';
			getMyTicketList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}


function getMyTicketList(){
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectMyTicketList",	 // 서버의 엔드포인트 주소
		type: "get",
		contentType: 'application/json',
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updateMyTicketList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}


function updateMyTicketList(data) {
	var myTicketHTML = ``
	
	for (var i = 0; i < data.length; i++) {
		var myTicket = data[i];
		var rnum = myTicket.rnum;										// 목록 번호
		var pointPmtno = myTicket.pointPmtno;							// 결제 번호
		var ticketNo = myTicket.ticketNo;								// 이용권 번호
		var ticketName = myTicket.usersVO.ticketMnmtVO.ticketName;		// 이용권 이름
		var ticketPeriod = myTicket.usersVO.ticketMnmtVO.ticketPeriod;	// 이용권 기간 (일 수) -- day
		var ticketPrice = myTicket.usersVO.ticketMnmtVO.ticketPrice;	// 이용권 가격
		var usersId = myTicket.usersVO.usersId;							// 사용자 아이디
		var usersNm = myTicket.usersVO.usersNm;							// 사용자 이름
		var pointHold = myTicket.pointHold;								// 기존 포인트
		var pointUse = myTicket.pointUse;								// 사용 포인트
		var pointRemain = myTicket.pointRemain;							// 잔여 포인트
		var pointPdate = myTicket.pointPdate; 							// 구매일자    												  //2022-11-28 00:00:00.0 원래의 '구매일자'
		var tUseType = ''; 												// 유형
		
		newticketPeriod = (ticketPeriod)*(1000*60*60*24);
		newpointPdate = new Date(pointPdate).getTime(); 			
		var ticketExpired = (newpointPdate + newticketPeriod);
		var ticketExpiredDate = new Date(newpointPdate + newticketPeriod);
		var formattedPointPdate = new Date(pointPdate);
		var formattedExpiredDate ='';
		
		var year = ticketExpiredDate.getFullYear();
		var month = (ticketExpiredDate.getMonth() + 1).toString().padStart(2, '0');
		var day = ticketExpiredDate.getDate().toString().padStart(2, '0');
		var hours = ticketExpiredDate.getHours().toString().padStart(2, '0');
		var minutes = ticketExpiredDate.getMinutes().toString().padStart(2, '0');
		var seconds = ticketExpiredDate.getSeconds().toString().padStart(2, '0');
		
		formattedExpiredDate = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;											  //2022-12-28 00:00:00 로 포멧한 '만료일자'
		ticketExpiredDate = ticketExpiredDate.toLocaleDateString('ko-KR', { year: '2-digit', month: '2-digit', day: '2-digit' });	  //22. 12. 28. 로 포멧한 '만료일자'						
		formattedPointPdate = formattedPointPdate.toLocaleDateString('ko-KR', { year: '2-digit', month: '2-digit', day: '2-digit' }); //22. 11. 28. 로 포멧한 '구매일자'
		
		console.log("=======================myPage 이용권 내역========================");
		console.log("결제번호", myTicket.pointPmtno);
		
		
		var currentDate = new Date();
		// 날짜를 비교
		if (currentDate.getTime() - ticketExpired>0) {
		   tUseType = '만료'; 
		} else {
		   tUseType = '발급'; 
		}		

		
		myTicketHTML += `    
		                <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#myTicketDetail-UModal" 
		                    onclick="myTicketDetailModal('${pointPmtno}','${pointPdate}','${ticketNo}','${ticketName}','${ticketPeriod}','${ticketPrice}','${usersId}','${usersNm}','${pointHold}','${pointUse}','${pointRemain}','${formattedExpiredDate}')">
		                    <td>` + rnum + `</td>
		                    <td>` + tUseType + `</td>
		                    <td>` + ticketName + `</td>
		                    <td>` + formattedPointPdate + `</td>    
		                    <td>` + ticketExpiredDate + `</td>    
		                </tr>
	                        `;
	$('#mypage_ticketView_tbody').html(myTicketHTML);
	}
}

function myTicketDetailModal(pointPmtno,pointPdate,ticketNo,ticketName,ticketPeriod,ticketPrice,usersId,usersNm,pointHold,pointUse,pointRemain,formattedExpiredDate) {
	
	var myTicketDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제번호 : </p>
					<p>`+pointPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제일자 : </p>
					<p>`+pointPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">만료일자 : </p>
					<p>`+formattedExpiredDate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">이용권 번호 : </p>
					<p>`+ticketNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">이용권 이름: </p>
					<p>`+ticketName+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">이용권 기간: </p>
					<p>`+ticketPeriod+` 일	</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">이용권 가격 : </p>
					<p>`+ticketPrice+` Point</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">아이디 : </p>
					<p>`+usersId+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">사용자 이름 : </p>
					<p>`+usersNm+`</p>
				</div>
					<div class="ticketInfo-01">
					<p class="ticketInfo-Title">보유 포인트 : </p>
					<p>`+pointHold+` Point</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">사용 포인트 : </p>
					<p>`+pointUse+` Point</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">잔여 포인트 : </p>
					<p>`+pointRemain+` Point</p>
				</div>
				
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;

    $('#step-Ticketinfo-03').html(myTicketDetailHTML);
}