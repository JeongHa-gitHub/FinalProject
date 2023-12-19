$(document).ready(function() {
	ImgAdvrtSelect_onclick();
});

function formatDate(dateString) {
    const options = { year: 'numeric', month: '2-digit', day: '2-digit' };
    return new Date(dateString).toLocaleDateString('ko-KR', options);
}


function ImgAdvrtSelect_onclick(){
	$('#promotion_select_btn_CmpAdvrt').removeClass('selected');
	$('#promotion_select_btn_ImgAdvrt').addClass('selected');
	
	$('#promotion_ImgAdvrt').attr("style","display:block");
	$('#promotion_cmpAdvrt').attr("style","display:none");

var cpath = $("body").data("contextPath");

//<< 사용중인 이미지 광고 불러오기 >>
// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/validImgAdvrtList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
		// 성공 시 처리
		var myImgAdvrtHTML = ``;		
		for (var i = 0; i < data.length; i++) {
			var myImgAdvrt = data[i];
			var imgadName = myImgAdvrt.imageAdvrtVO.imgadName;
			var imgadLoc = myImgAdvrt.imgadLoc;
			var imgadSdate = formatDate(myImgAdvrt.imgadSdate);
			var imgadEdate = formatDate(myImgAdvrt.imgadEdate);
			
			if(imgadLoc === 'L01'){
				imgadLoc = '슬라이드';
			}else if(imgadLoc === 'L02'){
				imgadLoc = '배너';
			}
			
		myImgAdvrtHTML += `<p>`+imgadName + `/ ` + imgadLoc + ` : ` + imgadSdate + ` ~ ` + imgadEdate +`</p>`;	
			
		$('#holdImgAdvrt').html(myImgAdvrtHTML);	
		}
		console.log(myImgAdvrtHTML);
			selectMyImgAdvrtList();
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
	
}

//<< 이미지 광고 테이블 목록 불러오기 >>
function selectMyImgAdvrtList(){
	var cpath = $("body").data("contextPath");
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectMyImgAdvrList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updateMyImgAdvrtList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}


function updateMyImgAdvrtList(data) {
	var myImgAdvrtHTML = ``
	
	for (var i = 0; i < data.length; i++) {
	var myImgAdvrt = data[i];
	var rnum = myImgAdvrt.rnum;
	var imgadLoc = myImgAdvrt.imgadLoc;
	var imgadTitle = myImgAdvrt.imgadTitle;
	var imgadPdateF =  formatDate(myImgAdvrt.imgadPdate);
	var imgadPdate = myImgAdvrt.imgadPdate;
	var imgadResult = myImgAdvrt.imgadResult;
	var companyNm = myImgAdvrt.imageAdvrtVO.companyVO.companyNm;
	var imgadName = myImgAdvrt.imageAdvrtVO.imgadName;
	var imgadNo = myImgAdvrt.imageAdvrtVO.imgadNo;
	var imgadSdate = myImgAdvrt.imgadSdate;
	var imgadEdate = myImgAdvrt.imgadEdate;
	var imgadFile = myImgAdvrt.imgadFile;
	var imgadTitle = myImgAdvrt.imgadTitle;
	var imgadContent = myImgAdvrt.imgadContent;
	var imgadPmtno = myImgAdvrt.imgadPmtno;
	var pmtMethdno = myImgAdvrt.pmtMethdno;
	
	if(imgadLoc === 'L01'){
		imgadLoc = '슬라이드';
	}else if(imgadLoc === 'L02'){
		imgadLoc = '배너';
	}
	
	
	if(pmtMethdno === 'P01'){
		pmtMethdno = '신용카드';
	}else if(pmtMethdno === 'P02'){
		pmtMethdno = '카카오페이';
	}else if(pmtMethdno === 'P03'){
		pmtMethdno = '토스페이';
	}else if(pmtMethdno === 'P04'){
		pmtMethdno = '무통장 입금';
	}
	
	
	if(imgadResult === 'W'){
		imgadResult = '대기';
	}else if(imgadResult === 'Y'){
		imgadResult = '승인';
	}else if(imgadResult === 'N'){
		imgadResult = '반려/환불';
	}
	
	myImgAdvrtHTML += `    
		                <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#myImgAdvrtDetail-UModal" 
		                    onclick="myImgAdvrtDetailModal('${pmtMethdno}','${imgadNo}','${imgadName}','${imgadLoc}','${imgadSdate}','${imgadEdate}','${imgadTitle}','${imgadContent}','${imgadFile}','${companyNm}','${imgadPmtno}','${imgadPdate}')">
		                    <td>` + rnum + `</td>
		                    <td>` + imgadLoc + `</td>
		                    <td>` + imgadTitle + `</td>
		                    <td>` + imgadPdateF + `</td>    
		                    <td>` + imgadResult + `</td>    
		                </tr>
	                        `;
	$('#promotion_hold_ImgAdvrt_tbody').html(myImgAdvrtHTML);	
	}
}

function myImgAdvrtDetailModal(pmtMethdno,imgadNo,imgadName,imgadLoc,imgadSdate,imgadEdate,imgadTitle,imgadContent,imgadFile,companyNm,imgadPmtno,imgadPdate){
	 var cpath = $("body").data("contextPath");
    
    var adDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제 번호 : </p>
					<p>`+imgadPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제 일자 : </p>
					<p>`+imgadPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제 수단 : </p>
					<p>`+pmtMethdno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업 명 : </p>
					<p>`+companyNm+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품 번호 : </p>
					<p>`+imgadNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품 명 : </p>
					<p>`+imgadName+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">등록 위치 : </p>
					<p>`+imgadLoc+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">신청 날짜 : </p><p>`+imgadSdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">마감 날짜 : </p><p>`+imgadEdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">신청 제목 : </p>
					<p>`+imgadTitle+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">신청 내용 : </p>
					<p>`+imgadContent+`</p>
				</div>
				
				<div class="third-block">
				<p class="ticketInfo-Title-Image">< 신청 이미지 ></p>
				<img class="ImageJudge-Img" src="${cpath}/recruit/ImgAdForm/${imgadFile}" alt="ImageJudge-Img">
				</div>
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-01').html(adDetailHTML);
}


function CmpAdvrtSelect_onclick(){
	$('#promotion_select_btn_ImgAdvrt').removeClass('selected');
	$('#promotion_select_btn_CmpAdvrt').addClass('selected');
	
	$('#promotion_ImgAdvrt').attr("style","display:none");
	$('#promotion_cmpAdvrt').attr("style","display:block");

var cpath = $("body").data("contextPath");

//<< 사용중인 이미지 광고 불러오기 >>
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/validCmpAdvrtList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
		// 성공 시 처리
		console.log(data);
		var myCmpAdvrtHTML = ``;		
		for (var i = 0; i < data.length; i++) {
			var myCmpAdvrt = data[i];
			var cmpadName = myCmpAdvrt.companyAdvrtVO.cmpadName;
			var cmpadSdateF = formatDate(myCmpAdvrt.cmpadSdate);
			var cmpadEdateF = formatDate(myCmpAdvrt.cmpadEdate);
			
		myCmpAdvrtHTML += `<p>`+cmpadName + ` : ` + cmpadSdateF + ` ~ ` + cmpadEdateF +`</p>`;	
		
		   $('#holdCmpAdvrt').html(myCmpAdvrtHTML);	
		}
			retriveMyCmpAdvrtList();
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});

}

function retriveMyCmpAdvrtList(){
var cpath = $("body").data("contextPath");
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/retriveMyCmpAdvrtList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
		// 성공 시 처리

		var myCmpAdvrtHTML = ``;		
		for (var i = 0; i < data.length; i++) {
			var myCmpAdvrt = data[i];
			var rnum = myCmpAdvrt.rnum;
			var buyType = '';
			var cmpadPmtno = myCmpAdvrt.cmpadPmtno;
			var cmpadPdate = myCmpAdvrt.cmpadPdate;
			var pmtMethdno = myCmpAdvrt.pmtMethdno;
			var companyNm = myCmpAdvrt.companyAdvrtVO.companyVO.companyNm;
			var cmpadNo = myCmpAdvrt.companyAdvrtVO.cmpadNo;
			var cmpadName = myCmpAdvrt.companyAdvrtVO.cmpadName;
			var cmpadSdate = myCmpAdvrt.cmpadSdate;
			var cmpadSdateF = formatDate(myCmpAdvrt.cmpadSdate);
			var cmpadEdate = myCmpAdvrt.cmpadEdate;
			var cmpadEdateF = formatDate(myCmpAdvrt.cmpadEdate);
			
			var currentDate = new Date();
			var newcmpadEdate = new Date(cmpadEdate);
			
			console.log("newcmpadEdate.getDate() - currentDate.getDate() :",newcmpadEdate.getDate() - currentDate.getDate())
						
			if(newcmpadEdate.getDate() - currentDate.getDate() < 0){
				buyType='만료';
			}else if(newcmpadEdate.getDate() - currentDate.getDate() > 0){
				buyType='발급';
			}else if (newcmpadEdate.getDate() - currentDate.getDate() === 0) {
				buyType='발급';
			}
			
					
			if(pmtMethdno === 'P01'){
			pmtMethdno = '신용카드';
			}else if(pmtMethdno === 'P02'){
				pmtMethdno = '카카오페이';
			}else if(pmtMethdno === 'P03'){
				pmtMethdno = '토스페이';
			}else if(pmtMethdno === 'P04'){
				pmtMethdno = '무통장 입금';
			}
			

			myCmpAdvrtHTML += `    
		                <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#myCmpAdvrtDetail-UModal" 
		                    onclick="myCmpAdvrtDetailModal('${cmpadPmtno}','${cmpadPdate}','${pmtMethdno}','${companyNm}','${cmpadNo}','${cmpadName}','${cmpadSdate}','${cmpadEdate}')">
		                    <td>` + rnum + `</td>
		                    <td>` + buyType + `</td>
		                    <td>` + cmpadName + `</td>
		                    <td>` + cmpadSdateF + `</td>    
		                    <td>` + cmpadEdateF + `</td>    
		                </tr>
	                        `;

		   $('#promotion_hold_cmpAdvrt_tbody').html(myCmpAdvrtHTML);	
		}
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
	
}

function myCmpAdvrtDetailModal(cmpadPmtno,cmpadPdate,pmtMethdno,companyNm ,cmpadNo,cmpadName ,cmpadSdate,cmpadEdate){
    var cpath = $("body").data("contextPath");
    
    var adDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제 번호 : </p>
					<p>`+cmpadPmtno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제 일자 : </p>
					<p>`+cmpadPdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">결제 수단 : </p>
					<p>`+pmtMethdno+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업 명 : </p>
					<p>`+companyNm+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품 번호 : </p>
					<p>`+cmpadNo+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">상품 명 : </p>
					<p>`+cmpadName+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">신청 날짜 : </p><p>`+cmpadSdate+`</p>
				</div>
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">마감 날짜 : </p><p>`+cmpadEdate+`</p>
				</div>
				<div class="PeriodTicketPayment-footer">
					<div class="modal-footer01">
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-02').html(adDetailHTML);
}
















