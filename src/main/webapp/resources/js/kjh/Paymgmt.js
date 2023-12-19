$(document).ready(function() {
	payMnmt_Select_periodTicket();
});

// << '이용권 결제' 내역 불러오기 >>
function payMnmt_Select_periodTicket() {
	$(`.payMnmt_SelectBtn01`).attr('style', 'background-color: #90cdff');
	$(`.payMnmt_SelectBtn02`).attr('style', 'background-color: #e2f2ff');
	$(`.payMnmt_SelectBtn03`).attr('style', 'background-color: #e2f2ff');
	
	$(`#payMnmt_imgAdPayList`).attr('style', 'display:none');
	$(`#payMnmt_cmpAdPayList`).attr('style', 'display:none');
	$(`#payMnmt_pTicketList`).attr('style', 'display:block');

	var cpath = $("body").data("contextPath");
	
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectPeriodTicketPay", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updatePeriodTicketPay(data);
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

function updatePeriodTicketPay(data){
	var TicketPayHTML = ``
	console.log(data);
	
	for (var i = 0; i < data.length; i++) {
		var TicketPay = data[i];
		var pointPmtno = TicketPay.pointPmtno;
		var usersId = TicketPay.usersId;
		var usersNm = TicketPay.usersVO.usersNm;
		var ticketName = TicketPay.usersVO.ticketMnmtVO.ticketName;
		var ticketNo = TicketPay.usersVO.ticketMnmtVO.ticketNo;
		var pointPdateF = formatDate(TicketPay.pointPdate);
		var pointPdate = TicketPay.pointPdate;
		var pointHold = TicketPay.pointHold;
		var pointUse = TicketPay.pointUse;
		var pointRemain = TicketPay.pointRemain;
		
		
		TicketPayHTML += `    
                            <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#TicketPay-UModal" 
                                onclick="TicketPayDetailModal('${pointPmtno}','${usersId}','${usersNm}','${ticketName}','${ticketNo}','${pointPdate}','${pointHold}','${pointUse}','${pointRemain}')">
                                <td>` + usersId + `</td>
                                <td>` + usersNm + `</td>
                                <td>` + ticketName + `</td>
                                <td>` + pointPdateF + `</td>    
                            </tr>
                        `;
		$('#pTicketList_Body').html(TicketPayHTML);
	}
}

function TicketPayDetailModal(pointPmtno,usersId,usersNm,ticketName,ticketNo,pointPdate,pointHold,pointUse,pointRemain){
    
    var TicketPayDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제번호 : </p>
					<p>`+pointPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제일자 : </p>
					<p>`+pointPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품번호 : </p>
					<p>`+ticketNo+`</p>
				</div>
				
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품명 : </p>
					<p>`+ticketName+`</p>
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
					<p class="ticketInfo-Title">보유포인트 : </p>
					<p>`+pointHold+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">사용포인트 : </p>
					<p>`+pointUse+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">잔여포인트 : </p>
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
    $('#step-Ticketinfo-01').html(TicketPayDetailHTML);
}

////////////////////////////////////////////////////////////////////////////

// << '이미지 광고 결제' 내역 불러오기 >>
function payMnmt_Select_imgAd(){
	var cpath = $("body").data("contextPath");

	$(`.payMnmt_SelectBtn01`).attr('style', 'background-color: #e2f2ff');
	$(`.payMnmt_SelectBtn02`).attr('style', 'background-color: #90cdff');
	$(`.payMnmt_SelectBtn03`).attr('style', 'background-color: #e2f2ff');

	$(`#payMnmt_pTicketList`).attr('style', 'display:none');
	$(`#payMnmt_cmpAdPayList`).attr('style', 'display:none');
	$(`#payMnmt_imgAdPayList`).attr('style', 'display:block');
	
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectImgAdPay", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updateimgAdPay(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function updateimgAdPay(data){
	var ImgAdPayHTML = ``
	console.log(data);

	for (var i = 0; i < data.length; i++) {
		var imgAdPay = data[i];
		var imgadPmtno = imgAdPay.imgadPmtno;
		var imgadPdateF = formatDate(imgAdPay.imgadPdate);
		var imgadPdate = imgAdPay.imgadPdate;
		var pmtMethdno = imgAdPay.pmtMethdno;
		var imgadBprice = imgAdPay.imgadBprice;
		var imgadNo = imgAdPay.imgadNo;
		var imgadName = imgAdPay.imageAdvrtVO.imgadName;
		var imgadLoc = imgAdPay.imgadLoc;
		var imgadSdate = imgAdPay.imgadSdate;
		var imgadEdate = imgAdPay.imgadEdate;
		var companyId = imgAdPay.companyId;
		var companyNm = imgAdPay.imageAdvrtVO.companyVO.companyNm;
		
		
		if(imgadLoc == 'L01'){
			imgadLoc = '슬라이드';
		}else{
			imgadLoc = '배너';
		}
		
		
		ImgAdPayHTML += `    
                            <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#imgAdPay-UModal" 
                                onclick="ImgAdPayDetailModal('${imgadPmtno}','${imgadPdate}','${pmtMethdno}','${imgadBprice}','${imgadNo}','${imgadName}','${imgadLoc}','${imgadSdate}','${imgadEdate}','${companyId}','${companyNm}')">
                                <td>` + companyId + `</td>
                                <td>` + companyNm + `</td>
                                <td>` + imgadName + `</td>
                                <td>` + imgadPdateF	 + `</td>    
                            </tr>
                        `;
		$('#imgAdPayList_Body').html(ImgAdPayHTML);
	}
}

function ImgAdPayDetailModal(imgadPmtno,imgadPdate,pmtMethdno,imgadBprice,imgadNo,imgadName,imgadLoc,imgadSdate,imgadEdate,companyId,companyNm){
	
	var ImgAdPayDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제번호 : </p>
					<p>`+imgadPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제일자 : </p>
					<p>`+imgadPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제수단 : </p>
					<p>`+pmtMethdno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">아이디 : </p>
					<p>`+companyId+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업명 : </p>
					<p>`+companyNm+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제금액 : </p>
					<p>`+imgadBprice+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">광고번호 : </p>
					<p>`+imgadNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품명 : </p>
					<p>`+imgadName+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">등록위치 : </p>
					<p>`+imgadLoc+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">시작일자 : </p>
					<p>`+imgadSdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">마감일자 : </p>
					<p>`+imgadEdate+`</p>
				</div>
				
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-02').html(ImgAdPayDetailHTML);
}

/////////////////////////////////////////////////////////////////////

// << '기업 결제' 내역 불러오기 >>
function payMnmt_Select_cmpAd(){
	var cpath = $("body").data("contextPath");

	$(`.payMnmt_SelectBtn01`).attr('style', 'background-color: #e2f2ff');
	$(`.payMnmt_SelectBtn02`).attr('style', 'background-color: #e2f2ff');
	$(`.payMnmt_SelectBtn03`).attr('style', 'background-color: #90cdff');

	$(`#payMnmt_imgAdPayList`).attr('style', 'display:none');
	$(`#payMnmt_pTicketList`).attr('style', 'display:none');
	$(`#payMnmt_cmpAdPayList`).attr('style', 'display:block');
	
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectcmpAdPay", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updatecmpAdPay(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function updatecmpAdPay(data){
	var CmpAdPayHTML = ``
	console.log(data);

	for (var i = 0; i < data.length; i++) {
		var cmpAdPay = data[i];
		var cmpadPmtno = cmpAdPay.cmpadPmtno;
		var cmpadPdateF = formatDate(cmpAdPay.cmpadPdate);
		var cmpadPdate = cmpAdPay.cmpadPdate;
		var pmtMethdno = cmpAdPay.pmtMethdno;
		var cmpadBprice = cmpAdPay.cmpadBprice;
		var cmpadNo = cmpAdPay.cmpadNo;
		var cmpadName = cmpAdPay.companyAdvrtVO.cmpadName;
		var cmpadSdate = cmpAdPay.cmpadSdate;
		var cmpadEdate = cmpAdPay.cmpadEdate;	
		var companyId = cmpAdPay.companyId;
		var companyNm = cmpAdPay.companyAdvrtVO.companyVO.companyNm;
		
		
		CmpAdPayHTML += `    
                            <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#cmpAdPay-UModal" 
                                onclick="CmpAdPayDetailModal('${cmpadPmtno}','${cmpadPdate}','${pmtMethdno}','${cmpadBprice}','${cmpadNo}','${cmpadName}','${cmpadSdate}','${cmpadEdate}','${companyId}','${companyNm}')">
                                <td>` + companyId + `</td>
                                <td>` + companyNm + `</td>
                                <td>` + cmpadName + `</td>
                                <td>` + cmpadPdateF	 + `</td>    
                            </tr>
                        `;
		$('#cmpAdPayList_Body').html(CmpAdPayHTML);
	}
}

function CmpAdPayDetailModal(cmpadPmtno,cmpadPdate, pmtMethdno,cmpadBprice,cmpadNo,cmpadName,cmpadSdate,cmpadEdate,companyId,companyNm){
	
	var CmpAdPayDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제번호 : </p>
					<p>`+cmpadPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제일자 : </p>
					<p>`+cmpadPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제수단 : </p>
					<p>`+pmtMethdno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">아이디 : </p>
					<p>`+companyId+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업명 : </p>
					<p>`+companyNm+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제금액 : </p>
					<p>`+cmpadBprice+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">광고번호 : </p>
					<p>`+cmpadNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품명 : </p>
					<p>`+cmpadName+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">시작일자 : </p>
					<p>`+cmpadSdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">마감일자 : </p>
					<p>`+cmpadEdate+`</p>
				</div>
				
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-03').html(CmpAdPayDetailHTML);
}
