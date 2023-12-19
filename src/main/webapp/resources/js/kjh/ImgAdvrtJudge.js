$(document).ready(function() {
	judge_Select_hold();
});


// << 이미지 신청 리스트 '대기 목록' 불러오기 >>
function judge_Select_hold(){
	$(`.judge_SelectBtn01`).attr('style', 'background-color: #e2f2ff');
	$(`.judge_SelectBtn02`).attr('style', 'background-color: #90cdff');
	$(`.judge_SelectBtn03`).attr('style', 'background-color: #e2f2ff');
	
	$(`#Users_disagree_TicketList`).attr('style', 'display:none');
	$(`#Users_agree_TicketList`).attr('style', 'display:none');
	$(`#Users_TicketList`).attr('style', 'display:block');
	
	
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectImgAdFormList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			updateImgAdFormList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function updateImgAdFormList(data){
	var ImgAdFormHTML = ``
	console.log(data);
	
	for (var i = 0; i < data.length; i++) {
		var ImgAdForm = data[i];
		var companyId = ImgAdForm.companyId;
		var companyNm = ImgAdForm.imageAdvrtVO.companyVO.companyNm;
		var imgadName = ImgAdForm.imageAdvrtVO.imgadName;
		var imgadNo = ImgAdForm.imageAdvrtVO.imgadNo;
		var imgadLoc = ImgAdForm.imgadLoc;
		var imgadSdate = ImgAdForm.imgadSdate;
		var imgadEdate = ImgAdForm.imgadEdate;
		var imgadFile = ImgAdForm.imgadFile;
		var imgadType = '';
		var imgadTitle = ImgAdForm.imgadTitle;
		var imgadContent = ImgAdForm.imgadContent;
		var imgadPmtno = ImgAdForm.imgadPmtno;
		
		if(imgadLoc==='L01'){
			imgadType='슬라이드';
		}else{
			imgadType='배너';
		}
		
		
		ImgAdFormHTML += `    
                            <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal" 
                                onclick="adFormDetailModal('${companyId}','${imgadNo}','${imgadName}','${imgadType}','${imgadSdate}','${imgadEdate}','${imgadTitle}','${imgadContent}','${imgadFile}','${companyNm}','${imgadPmtno}')">
                                <td>` + companyId + `</td>
                                <td>` + imgadName + `</td>
                                <td>` + imgadLoc + `</td>
                                <td>` + imgadSdate + `</td>    
                                <td>` + imgadEdate + `</td>
                            </tr>
                        `;
		$('#ImgAdFormList_ticketBody').html(ImgAdFormHTML);
	}
}

function adFormDetailModal(companyId,imgadNo,imgadName,imgadType,imgadSdate,imgadEdate,imgadTitle,imgadContent,imgadFile,companyNm,imgadPmtno) {
    var cpath = $("body").data("contextPath");
    
    var adDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업 아이디 : </p>
					<p>`+companyId+`</p>
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
					<p>`+imgadType+`</p>
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
						<a href="#" class="btn btn-danger btn-icon-split" onclick="disagree_onclick('${imgadPmtno}')"> 
							<span class="text">반려</span>
						</a>
						<a href="#" class="btn btn-light btn-icon-split" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Update"
															onclick="agree_onclick('${imgadPmtno}')"> 
							<span class="text">승인</span>
						</a>
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-01').html(adDetailHTML);
}

// << 반려 했을 때 >>
function disagree_onclick(imgadPmtno){
	var cpath = $("body").data("contextPath");
  	var requestData = {
            imgadPmtno: imgadPmtno
        };
	if (confirm("반려 하시겠습니까?")) {
		$.ajax({
			url: cpath + "/disagreeImgForm",
			type: "post",
			contentType: 'application/json',
			data: JSON.stringify(requestData),
			success: function(data) {
				// 성공 시 처리
				console.log(data);
				alert("반려가 완료 되었습니다.");
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

// << 승인 했을 때 >>
function agree_onclick(imgadPmtno){
var cpath = $("body").data("contextPath");
  	var requestData = {
            imgadPmtno: imgadPmtno
        };
	if (confirm("승인 하시겠습니까?")) {
		$.ajax({
			url: cpath + "/agreeImgForm",
			type: "post",
			contentType: 'application/json',
			data: JSON.stringify(requestData),
			success: function(data) {
				// 성공 시 처리
				console.log(data);
				alert("승인이 완료 되었습니다.");
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

////////////////////////////////////////////////////////////



// << 이미지 신청 리스트 '반려 목록' 불러오기 >>
function judge_Select_disagree(){
	$(`.judge_SelectBtn01`).attr('style', 'background-color: #90cdff');
	$(`.judge_SelectBtn02`).attr('style', 'background-color: #e2f2ff');
	$(`.judge_SelectBtn03`).attr('style', 'background-color: #e2f2ff');
	
	$(`#Users_TicketList`).attr('style', 'display:none');
	$(`#Users_agree_TicketList`).attr('style', 'display:none');
	$(`#Users_disagree_TicketList`).attr('style', 'display:block');
	
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/disagreeImgAdFormList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			update_disagree_ImgAdFormList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function update_disagree_ImgAdFormList(data){
	var ImgAdFormHTML = ``
	console.log(data);
	
	for (var i = 0; i < data.length; i++) {
		var ImgAdForm = data[i];
		var companyId = ImgAdForm.companyId;
		var companyNm = ImgAdForm.imageAdvrtVO.companyVO.companyNm;
		var imgadName = ImgAdForm.imageAdvrtVO.imgadName;
		var imgadNo = ImgAdForm.imageAdvrtVO.imgadNo;
		var imgadLoc = ImgAdForm.imgadLoc;
		var imgadSdate = ImgAdForm.imgadSdate;
		var imgadEdate = ImgAdForm.imgadEdate;
		var imgadFile = ImgAdForm.imgadFile;
		var imgadType = '';
		var imgadTitle = ImgAdForm.imgadTitle;
		var imgadContent = ImgAdForm.imgadContent;
		var imgadPmtno = ImgAdForm.imgadPmtno;
		
		if(imgadLoc==='L01'){
			imgadType='슬라이드';
		}else{
			imgadType='배너';
		}
		
		
		ImgAdFormHTML += `    
                            <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#promotionMnmt-disagree-UModal" 
                                onclick="adForm_disagree_DetailModal('${companyId}','${imgadNo}','${imgadName}','${imgadType}','${imgadSdate}','${imgadEdate}','${imgadTitle}','${imgadContent}','${imgadFile}','${companyNm}','${imgadPmtno}')">
                                <td>` + companyId + `</td>
                                <td>` + imgadName + `</td>
                                <td>` + imgadLoc + `</td>
                                <td>` + imgadSdate + `</td>    
                                <td>` + imgadEdate + `</td>
                            </tr>
                        `;
		$('#ImgAdFormList_disagree_ticketBody').html(ImgAdFormHTML);
	}
}


function adForm_disagree_DetailModal(companyId,imgadNo,imgadName,imgadType,imgadSdate,imgadEdate,imgadTitle,imgadContent,imgadFile,companyNm,imgadPmtno) {
    var cpath = $("body").data("contextPath");
    
    var adDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업 아이디 : </p>
					<p>`+companyId+`</p>
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
					<p>`+imgadType+`</p>
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
						<a href="#" class="btn btn-danger btn-icon-split" onclick="agree_onclick('${imgadPmtno}')"> 
							<span class="text">승인</span>
						</a>
						<a href="#" class="btn btn-light btn-icon-split" onclick="hold_onclick('${imgadPmtno}')"> 
							<span class="text">대기</span>
						</a>
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-02').html(adDetailHTML);
}

function hold_onclick(imgadPmtno){
	var cpath = $("body").data("contextPath");

	  	var requestData = {
            imgadPmtno: imgadPmtno
        };
	if (confirm("대기 하시겠습니까?")) {
		$.ajax({
			url: cpath + "/holdImgForm",
			type: "post",
			contentType: 'application/json',
			data: JSON.stringify(requestData),
			success: function(data) {
				// 성공 시 처리
				console.log(data);
				alert("대기가 완료 되었습니다.");
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

////////////////////////////////////////////////////////////////////


// << 이미지 신청 리스트 '승인 목록' 불러오기 >>
function judge_Select_agree(){
	$(`.judge_SelectBtn01`).attr('style', 'background-color: #e2f2ff');
	$(`.judge_SelectBtn02`).attr('style', 'background-color: #e2f2ff');
	$(`.judge_SelectBtn03`).attr('style', 'background-color: #90cdff');
	
	
	$(`#Users_TicketList`).attr('style', 'display:none');
	$(`#Users_disagree_TicketList`).attr('style', 'display:none');
	$(`#Users_agree_TicketList`).attr('style', 'display:block');
	
	var cpath = $("body").data("contextPath");

	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/agreeImgAdFormList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			console.log(data);
			update_agree_ImgAdFormList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function update_agree_ImgAdFormList(data){
	var ImgAdFormHTML = ``
	console.log(data);
	
	for (var i = 0; i < data.length; i++) {
		var ImgAdForm = data[i];
		var companyId = ImgAdForm.companyId;
		var companyNm = ImgAdForm.imageAdvrtVO.companyVO.companyNm;
		var imgadName = ImgAdForm.imageAdvrtVO.imgadName;
		var imgadNo = ImgAdForm.imageAdvrtVO.imgadNo;
		var imgadLoc = ImgAdForm.imgadLoc;
		var imgadSdate = ImgAdForm.imgadSdate;
		var imgadEdate = ImgAdForm.imgadEdate;
		var imgadFile = ImgAdForm.imgadFile;
		var imgadType = '';
		var imgadTitle = ImgAdForm.imgadTitle;
		var imgadContent = ImgAdForm.imgadContent;
		var imgadPmtno = ImgAdForm.imgadPmtno;
		
		if(imgadLoc==='L01'){
			imgadType='슬라이드';
		}else{
			imgadType='배너';
		}
		
		
		ImgAdFormHTML += `    
                            <tr class="textAlignRow" data-bs-toggle="modal" data-bs-target="#promotionMnmt-agree-UModal" 
                                onclick="adForm_agree_DetailModal('${companyId}','${imgadNo}','${imgadName}','${imgadType}','${imgadSdate}','${imgadEdate}','${imgadTitle}','${imgadContent}','${imgadFile}','${companyNm}','${imgadPmtno}')">
                                <td>` + companyId + `</td>
                                <td>` + imgadName + `</td>
                                <td>` + imgadLoc + `</td>
                                <td>` + imgadSdate + `</td>    
                                <td>` + imgadEdate + `</td>
                            </tr>
                        `;
		$('#ImgAdFormList_agree_ticketBody').html(ImgAdFormHTML);
	}
}

function adForm_agree_DetailModal(companyId,imgadNo,imgadName,imgadType,imgadSdate,imgadEdate,imgadTitle,imgadContent,imgadFile,companyNm,imgadPmtno) {
    var cpath = $("body").data("contextPath");
    
    var adDetailHTML = `
				<div class="ticketInfo-01">
					<p class="ticketInfo-Title">기업 아이디 : </p>
					<p>`+companyId+`</p>
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
					<p>`+imgadType+`</p>
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
						<a href="#" class="btn btn-danger btn-icon-split" onclick="disagree_onclick('${imgadPmtno}')"> 
							<span class="text">반려</span>
						</a>
						<a href="#" class="btn btn-light btn-icon-split" onclick="hold_onclick('${imgadPmtno}')"> 
							<span class="text">대기</span>
						</a>
						<a href="#" class="btn btn-cancel" data-bs-dismiss="modal"> 
							<span class="text">취소</span>
						</a> 
					</div>
				</div>
    					`;
    $('#step-Ticketinfo-03').html(adDetailHTML);
}
