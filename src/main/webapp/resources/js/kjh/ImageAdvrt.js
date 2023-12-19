// << 이미지 광고 리스트 불러오기 >> 
$(document).ready(function() {
	Slide_onclick();
});

// 사업자 등록번호, 결제 인증 여부
var passCertification = false;

// <<'구매'버튼을 눌렀을때>> 
function ImgAdvrtPayModal_onclick() {
/*	let authId = document.getElementById('authId').value;		  //회사 id 로 로그인을 안했을 시 프로모션을 구매할 수 없습니다. (후 순위)
	if(authId == null && authId.length==0){
		alert("기업 회원 로그인 후 구매해 주세요.");
		// 로그인 페이지로 이동 location 
		}*/
	
	const progress = document.querySelector("#progress");
	const prev = document.querySelectorAll(".prev");
	const next = document.querySelectorAll(".next");
	const payClose = document.querySelector("#payClose");
	const circles = document.querySelectorAll(".circle");
	
	console.log("prev",prev);
	
	let currentActive = 1;
	let isClickProcessing = false;

	// --광고 상세 보기
	selectImgAdvrtDetail();

	// --다음 버튼을 눌렀을때
	for(let i=0; i<prev.length; i++){
		next[i].addEventListener("click", () => {
			currentActive++;
			if (currentActive > circles.length) {
				currentActive = circles.length;
			}
	
			// 사업자 인증 안하고 넘어갔을때
			if (currentActive == 3) {
				// 비밀번호를 인증 안하고 다음을 눌렀을 때
				if (passCertification == false) {
					alert("사업자 인증은 필수입니다.");
					currentActive--;
				} else {
					$('.displayCont').attr('style', 'display:none ');
					$(`.displayCont[data-idx=${currentActive}]`).attr('style', 'display:block');
					$(`#currpage`).attr('style', 'display:none');
					$('#middlepage').attr('style', 'display:block');
					passCertification = false;
					update();
				}
				
			// 양식 작성을 안하고 넘어갔을때	
			} else if (currentActive == 4){
				
				cmpPassCertification_check();
				
				if (passCertification == false) {
					alert("양식을 모두 작성해주세요.");
					currentActive--;
				} else {
					$('.displayCont').attr('style', 'display:none ');
					$(`.displayCont[data-idx=${currentActive}]`).attr('style', 'display:block');
					$(`#middlepage`).attr('style', 'display:none');
					$('#almostpage').attr('style', 'display:block');
					passCertification = false;
					update();
				}
				
			//이미지 광고 결제하기	
			} else if (currentActive == 5){
				if (passCertification == false) {
					currentActive--;
					imgAdvrtPay_onclick();
				} else {
					$('.displayCont').attr('style', 'display:none ');
					$(`.displayCont[data-idx=${currentActive}]`).attr('style', 'display:block');
					$(`#middlepage`).attr('style', 'display:none');
					$('#almostpage').attr('style', 'display:block');
					update();
					SendImgAdForm();
				}
			} else {
				$('.displayCont').attr('style', 'display:none ');
				$(`.displayCont[data-idx=${currentActive}]`).attr('style', 'display:block');
				$('#lastpage').attr('style', 'display:block');
				update();
			}
			
			
			
		});
	}
	

	// --마지막 닫기 눌렀을때
	payClose.addEventListener("click", () => {
		$('#pModal').modal('hide');
		location.reload(); // 페이지 리로드
	});


	// --취소 버튼을 눌렀을때
	for(let i=0; i<prev.length; i++){
		prev[i].addEventListener("click", () => {
			if (isClickProcessing) {
				return; // 클릭 이벤트가 처리 중이므로 무시
			}
	
			isClickProcessing = true;
	
			if (confirm("결제를 취소하시겠습니까?")) {
				$('#ImgAdvrtPayModal_process').modal('hide');
				location.reload(); // 페이지 리로드
			} else {
				console.log("Cancellation confirmed");
			}
	
			// 플래그 재설정
			isClickProcessing = false;
		});
	}
	



	// -- 위에 동그라미 step 동적으로 파랗게 처리
	function update() {
		circles.forEach((circle, idx) => {
			if (idx < currentActive) {
				circle.classList.add("active");
			} else {
				circle.classList.remove("active");
			}
		});

		const actives = document.querySelectorAll(".active");

		progress.style.width =
			((actives.length - 1) / (circles.length - 1)) * 100 + "%";

		prev.disabled = currentActive === 1;
		next.disabled = currentActive === circles.length;
	}
}



function selectImgAdvrtDetail() {
	var imgadName = document.getElementById('infoPage01').innerHTML;
	var imgadPeriod = document.getElementById('infoPage02').innerHTML;
	var imgadPrice = document.getElementById('infoPage04').innerHTML;
	var startDate = document.getElementById('infoPage05').innerHTML;
	var endDate = document.getElementById('infoPage06').innerHTML;

	var AdvrtHTML = `
					<div class="ticketInfo-01">
						<p class="ticketInfo-Title">상품명 : </p>
						<p>`+ imgadName + ` / ` + imgadPeriod + ` 일</p>
					</div>
					<div class="ticketInfo-01">
						<p class="ticketInfo-Title">가격 : </p>
						<p>`+ imgadPrice + ` 원</p>
					</div>
					<div class="ticketInfo-01">
						<p class="ticketInfo-Title">시작 일자 : </p>
						<p>`+ startDate + `</p>
					</div>
					<div class="ticketInfo-01">
						<p class="ticketInfo-Title">종료 일자 : </p>
						<p>`+ endDate + `</p>
					</div>
					<div class="ticketInfo-01">
						<p class="ticketInfo-Title">주문 금액 : </p>
						<p>`+ imgadPrice + ` 원</p>
					</div>
					<div class="ticketInfo-03">
						<p class="ticketInfo-Title">총 결제 금액 : </p>
						<p id="totalPrice">`+ imgadPrice + ` 원</p>
					</div>			
				`;
	$('#step-Ticketinfo-01').html(AdvrtHTML);

}

var selectedDateInput = '';
var disabledDateInput = '';
var imgadLoc = '';

// << 슬라이드 광고 선택 >>
function Slide_onclick() {
	imgadLoc = 'L01';
	var cpath = $("body").data("contextPath");
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectImageAdvrtList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			//alert("데이터 가져오기 성공:", data);

			var elements = document.querySelectorAll('.srch-ad');
			elements.forEach(function(element) {
				element.style.display = 'none';
			});

			var banner_btn = document.querySelector('#banner_btn');
			var slide_btn = document.querySelector('#slide_btn');
			console.log(slide_btn);
			slide_btn.style.borderColor = 'blue';
			slide_btn.style.color = 'blue';

			banner_btn.style.borderColor = 'gray';
			banner_btn.style.color = 'gray';

			$("#slide_img_div").css({ "display": "block" });
			$("#slide_img").css({ "display": "block" });
			$("#banner_img_div").css({ "display": "none" });
			$("#banner_img").css({ "display": "none" });
			console.log(data);
			updateImageAdvrtList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});


	function updateImageAdvrtList(data) {
		for (var i = 0; i < data.length; i++) {
			var Advrt = data[i];
			var imgadNo = Advrt.imgadNo;
			var imgadName = Advrt.imgadName;
			var imgadPeriod = Advrt.imgadPeriod;
			var imgadPrice = Advrt.imgadPrice;

			var AdvrtHTML = `
            <div class="srch-ad" id="ImageAdvrt_card_keyword_up_logo" tabindex="0" role="region" aria-label="검색 플러스 상품" aria-pressed="true">
                <div class="srch-ad__detail">
                    <div class="srch-ad__detail__title"><a href="">`+ imgadName + `</a>
                        <div class="product-renewal-tooltip"><strong class="imgAdvrt_period_red imgAdvrt_period">`+ imgadPeriod + `</strong><strong style="margin-left=2px;" class="imgAdvrt_period_red" id="imgAdvrt_period">일</strong>
                        </div>
                    </div>
                    <div class="srch-ad__detail__price">
                        <div class="srch-ad__detail__price__option">
                            <div>
                                <div class="dp__main dp__theme_light">
                                    <div class="dateWrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="16" fill="black" class="bi bi-calendar-week" viewBox="0 0 16 16">
                                            <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                        </svg>
                                        <input type="text" class="datepicker" placeholder="날짜 선택하기" >
                                        <input type="text" class="datepicker-disabled" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="purchase">
                            <strong class="imgAdvrt_Price">`+ imgadPrice + ` 원</strong>																																														
                            <button type="button" class="btn btn--action--outline btn--large talentpool-product-card__buy-btn" id="buyImgAdvrt" data-bs-toggle="modal" data-bs-target="#ImgAdvrtPayModal" onclick="ImgAdvrtPayModal('${imgadName}','${imgadPeriod}','${imgadPrice}','${imgadNo}')">
							상품 구매 
							</button>
						</div>
                    </div>
                </div>
            </div>
        `;
			$('#ImageAdvrtBody').append(AdvrtHTML);
		}

		$(".datepicker").datepicker({
			defaultDate: "m",
			regional: "ko",
			dateFormat: 'yy-mm-dd',
			minDate: "m",
			maxDate: "+13m",
			onSelect: function(selectedDate) {
				selectedDateInput = $(this);  // 선택된 datepicker 입력에 대한 참조 저장

				var currentDate = selectedDateInput.datepicker('getDate');
				var SelectimgadPeriod = parseInt(selectedDateInput.parents(".srch-ad").find('.imgAdvrt_period').text());

				currentDate.setDate(currentDate.getDate() + SelectimgadPeriod);

				// 날짜 형식 지정
				formattedDate = $.datepicker.formatDate('yy-mm-dd', currentDate);

				// 비활성화된 datepicker 입력 업데이트
				selectedDateInput.closest('.dateWrap').find('.datepicker-disabled').val(formattedDate);

				// 비활성화된 datepicker 입력에 대한 참조 저장
				disabledDateInput = selectedDateInput.closest('.dateWrap').find('.datepicker-disabled');

				console.log("선택된 datepicker 값:", selectedDateInput.val());
				console.log("비활성화된 datepicker 값:", disabledDateInput.val());
				$("#infoPage05").html(selectedDateInput.val());
				$("#infoPage06").html(disabledDateInput.val());
			}
		});
	}
}







//<< 배너 광고 선택 >>
function Banner_onclick() {
	imgadLoc = 'L02';
	var cpath = $("body").data("contextPath");
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectBannerAdvrtList", // 서버의 엔드포인트 주소
		type: "get",
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			var elements = document.querySelectorAll('.srch-ad');
			elements.forEach(function(element) {
				element.style.display = 'none';
			});

			var banner_btn = document.querySelector('#banner_btn');
			var slide_btn = document.querySelector('#slide_btn');
			console.log(slide_btn);
			banner_btn.style.borderColor = 'blue';
			banner_btn.style.color = 'blue';

			slide_btn.style.borderColor = 'gray';
			slide_btn.style.color = 'gray';

			$("#slide_img_div").css({ "display": "none" });
			$("#slide_img").css({ "display": "none" });
			$("#banner_img_div").css({ "display": "block" });
			$("#banner_img").css({ "display": "block" });



			updateBannerAdvrtList(data);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

function updateBannerAdvrtList(data) {
	for (var i = 0; i < data.length; i++) {
		var Advrt = data[i];
		var imgadNo = Advrt.imgadNo;
		var imgadName = Advrt.imgadName;
		var imgadPeriod = Advrt.imgadPeriod;
		var imgadPrice = Advrt.imgadPrice;

		var AdvrtHTML = `
	            <div class="srch-ad" id="ImageAdvrt_card_keyword_up_logo" tabindex="0" role="region" aria-label="검색 플러스 상품" aria-pressed="true">
	                <div class="srch-ad__detail">
	                    <div class="srch-ad__detail__title"><a href="">`+ imgadName + `</a>
	                        <div class="product-renewal-tooltip"><strong class="imgAdvrt_period_red imgAdvrt_period">`+ imgadPeriod + `</strong> 
								<strong style="margin-left=2px;" class="imgAdvrt_period_red" id="imgAdvrt_period">일</strong>
	                        </div>
	                    </div>
	                    <div class="srch-ad__detail__price">
	                        <div class="srch-ad__detail__price__option">
	                            <div>
	                                <div class="dp__main dp__theme_light"> 
	                                    <div class="dateWrap">
	                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="16" fill="black" class="bi bi-calendar-week" viewBox="0 0 16 16">
	                                            <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
	                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
	                                        </svg>
	                                        <input type="text" class="datepicker"  placeholder="날짜 선택하기">
	                                        <input type="text" class="datepicker-disabled"  disabled>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="purchase">
	                            <strong class="imgAdvrt_Price">`+ imgadPrice + ` 원</strong>
                            <button type="button" class="btn btn--action--outline btn--large talentpool-product-card__buy-btn" id="buyImgAdvrt" data-bs-toggle="modal" data-bs-target="#ImgAdvrtPayModal" onclick="ImgAdvrtPayModal('${imgadName}','${imgadPeriod}','${imgadPrice}','${imgadNo}')">
									상품 구매 
								</button>
							</div>
	                    </div>
	                </div>
	            </div>
	        `;
		$('#ImageAdvrtBody').append(AdvrtHTML);
	}

	$(".datepicker").datepicker({ 
		defaultDate: "m",
		regional: "ko",
		dateFormat: 'yy-mm-dd',
		minDate: "m",
		maxDate: "+13m",
		onSelect: function(selectedDate) {
			selectedDateInput = $(this);  // 선택된 datepicker 입력에 대한 참조 저장

			var currentDate = selectedDateInput.datepicker('getDate');
			var SelectimgadPeriod = parseInt(selectedDateInput.parents(".srch-ad").find('.imgAdvrt_period').text());

			currentDate.setDate(currentDate.getDate() + SelectimgadPeriod);

			// 날짜 형식 지정
			formattedDate = $.datepicker.formatDate('yy-mm-dd', currentDate);

			// 비활성화된 datepicker 입력 업데이트
			selectedDateInput.closest('.dateWrap').find('.datepicker-disabled').val(formattedDate);

			// 비활성화된 datepicker 입력에 대한 참조 저장
			disabledDateInput = selectedDateInput.closest('.dateWrap').find('.datepicker-disabled');

			console.log("선택된 datepicker 값:", selectedDateInput.val());
			console.log("비활성화된 datepicker 값:", disabledDateInput.val());
			$("#infoPage05").html(selectedDateInput.val());
			$("#infoPage06").html(disabledDateInput.val());
		}
	});
}









	var Final_imgadName = '';
	var Final_imgadPeriod = '';
	var Final_imgadNo = ''; 
	var Final_imgadPrice = '';
	var PaymentMethod = '';

//	<<'광고구매'모달 버튼 이벤트>> 
function ImgAdvrtPayModal(imgadName, imgadPeriod, imgadPrice, imgadNo) {
	Final_imgadName = `${imgadName}`;
	Final_imgadPeriod = `${imgadPeriod}`;
	Final_imgadNo = `${imgadNo}`;
	Final_imgadPrice = `${imgadPrice}`;
	console.log("체킁", Final_imgadName, Final_imgadPeriod, Final_imgadNo, Final_imgadPrice);

	$("#infoPage01").html(Final_imgadName);
	$("#infoPage02").html(Final_imgadPeriod);
	$("#infoPage03").html(Final_imgadNo);
	$("#infoPage04").html(Final_imgadPrice);
}


// << 사업자 등록번호 인증 >>
function passCertification_onclick() {
	var cpath = $("body").data("contextPath");					  //절대 경로
	let authId = document.getElementById('authId').value;		  //회사 id
	var inputPass = document.getElementById("inputPass").value;   //입력한 pass
	var realPass = '';											  //등록번호
	console.log(authId);

	// 등록번호를 기입 안하고 인증하기 버튼을 눌렀을때 
	if (inputPass == "") {
		alert("사업자 등록번호를 입력해주세요.")
	}

	$.ajax({
		url: cpath + "/selectCmpPass",
		type: "post",
		dataType: "json",
		data: { "id": authId },
		success: function(data) {
			// 성공 시 처리
			realPass = data.cmpPass;
			console.log(inputPass);
			console.log(realPass);


			// 패스워드 불일치
			if (inputPass != realPass && inputPass != "") {
				$('.pc-text-warn').attr('style', 'display:block; font-size: 15px; display: flex; margin-top: 10px; margin-bottom: 10px; color:red;');
				document.querySelector("#inputPass").value = null;
			}
			// 패스워드 일치
			else if (inputPass == realPass && inputPass != "") {
				$('.pc-text-warn').attr('style', 'display:none');
				document.querySelector("#pc-text-btn").innerText = '인증완료';
				document.getElementById('passCertification').style.backgroundColor = 'lightgray';
				document.getElementById('passCertification').style.border = '1px solid lightgray';
				passCertification = true;
				document.getElementById('passCertification').style.pointerEvents = 'none';
				document.getElementById('inputPass').disabled = true;
				alert("인증이 완료 되었습니다.");
			}

		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.log(xhr.status);
		}
	});
}


// << 양식 작성 여부 판단 >>
function cmpPassCertification_check() {
    var formTitle = document.getElementById('formTitle').value;
    var formContent = document.getElementById('formContent').value;
    var fileInput = document.querySelector('input[name="uploadFile"]').files[0];

    if (formTitle === '' || formContent === '' || fileInput === null) {
        passCertification = false;
    } else {
        passCertification = true;
    }
}

// << 01. 이미지 광고 결제하기 >>
function imgAdvrtPay_onclick() {
	var cardRadio = document.getElementById('creditcard');
	var kakaoRadio = document.getElementById('kakaopay');
	var mutongjangRadio = document.getElementById('mutongjang');
	var tossRadio = document.getElementById('tosspay');
	var selectPg = '';
	
	
	if (cardRadio.checked) {
		PaymentMethod = 'P01';
		selectPg = 'html5_inicis.TC0ONETIME';
	} else if (kakaoRadio.checked) {
		PaymentMethod = 'P02';
		selectPg = 'kakaopay.TC0ONETIME';
	} else if (mutongjangRadio.checked) {
		PaymentMethod = 'P04';

	} else if (tossRadio.checked) {
		PaymentMethod = 'P03';
		selectPg = 'tosspay.TC0ONETIME';
	} else {
		alert('결제 방법을 선택해주세요.');
		return;
	}
	
	
	var IMP = window.IMP;
	IMP.init('imp47052640');
	IMP.request_pay({
		pg: selectPg,
		pay_method: "card",
		merchant_uid: 'merchant_' + new Date().getTime(),
		name: '이미지 광고 구매',
		amount: Final_imgadPrice,		//금액		
	}, function(rsp) {
		if (rsp.success) {
			imgAdPay_insert();
		} else {
		 	alert("결제를 취소했습니다.")
		}
	});
}

// << 02. 이미지 광고 결제하기 -> db 데이터 저장 >>
function imgAdPay_insert(){
	let cpath = $("body").data("contextPath");
	var authId = document.getElementById('authId').value;
	
	let formData = new FormData();
    let fileInput = $('input[name="uploadFile"]')[0].files[0];
	var formTitle = document.getElementById('formTitle').value;
    var formContent = document.getElementById('formContent').value;
	
	
    formData.append("imgadNo", Final_imgadNo);						// 이미지 광고 번호
    formData.append("authId", authId);								// 회사 아이디
    formData.append("PaymentMethod", PaymentMethod);				// 결제 수단 번호
							//--> sysdate							// 등록일자 
	formData.append("selectedDateInput", selectedDateInput.val());	// 시작일자
	formData.append("disabledDateInput", disabledDateInput.val());	// 마감일자
	formData.append("Final_imgadPrice", Final_imgadPrice);	    	// 구매금액
							//-->''									// 심사결과
    formData.append("imgadTitle", formTitle);  						// 제목
    formData.append("imgadContent", formContent);  					// 내용
	formData.append("uploadFile", fileInput);						// 첨부파일
	formData.append("imgadLoc", imgadLoc);							// 등록위치
	
	$.ajax({
        url: cpath + "/sendImgAdPay",
        processData: false,
        contentType: false,
        data: formData,
        type: 'POST',
        dataType: 'json',
		success: function(data) {
			// 성공 시 처리
			alert(Final_imgadName + " / " + Final_imgadPeriod +" 일 결제가 완료되었습니다!");
			$(`#almostpage`).attr('style', 'display:none');
			$('#golastPage').attr('style', 'display:block');
			passCertification = true;
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("<< 02. 이미지 광고 결제하기 >> 에서 결제 실패");
		}
    });
}




