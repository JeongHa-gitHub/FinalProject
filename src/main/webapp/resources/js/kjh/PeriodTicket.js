// 비밀번호 인증 여부
var passCertification = false;

// <<'구매'버튼을 눌렀을때>>
function buyCheck_onclick() {
	const progress = document.querySelector("#progress");
	const prev = document.querySelector("#prev");
	const next = document.querySelector("#next");
	const payClose = document.querySelector("#payClose");
	const circles = document.querySelectorAll(".circle");

	let currentActive = 1;
	let isClickProcessing = false;


	// --상세 이용권 내역 불러오기
	selectCouponDetail();

	// --다음 버튼을 눌렀을때
	next.addEventListener("click", () => {

		currentActive++;

		if (currentActive > circles.length) {
			currentActive = circles.length;
		}

		// 마지막 페이지 일 때 
		if (currentActive == 3) {
			// 비밀번호를 인증 안하고 다음을 눌렀을 때
			if (passCertification == false) {
				alert("비밀번호 인증은 필수입니다.");
			} else {
				$('.displayCont').attr('style', 'display:none ');
				$(`.displayCont[data-idx=${currentActive}]`).attr('style', 'display:block');
				$(`#currpage`).attr('style', 'display:none');
				$('#lastpage').attr('style', 'display:block');
				update();
				updateUserCoupon();
			}
		} else {
			$('.displayCont').attr('style', 'display:none ');
			$(`.displayCont[data-idx=${currentActive}]`).attr('style', 'display:block');
			update();
		}
	});

	// --마지막 닫기 눌렀을때
	payClose.addEventListener("click", () => {
		$('#pModal').modal('hide');
		location.reload(); // 페이지 리로드
	});


	// --취소 버튼을 눌렀을때
	prev.addEventListener("click", () => {
		if (isClickProcessing) {
			return; // 클릭 이벤트가 처리 중이므로 무시
		}

		isClickProcessing = true;

		if (confirm("결제를 취소하시겠습니까?")) {
			$('#pModal').modal('hide');
			location.reload(); // 페이지 리로드
		} else {
			console.log("Cancellation confirmed");
		}

		// 플래그 재설정
		isClickProcessing = false;
	});



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



//<<이용권 리스트 데이터 불러오기>>
$(document).ready(function() {
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



	//<<이용권 리스트 만들기>>
	function updateTicketList(data) {
		for (var i = 0; i < data.length; i++) {
			var ticket = data[i];
			var ticketNo = ticket.ticketNo;
			var ticketName = ticket.ticketName;
			var ticketPeriod = ticket.ticketPeriod;
			var ticketHTML = `
                	 <div class="talentpool-product-card">
                        <div class="talentpool-product-card__header">
                            <strong class="talentpool-product-card__tit">
                                <a href="" class="talentpool-product-card__link">`+ ticket.ticketName + `</a>
                            </strong>
                            <p class="talentpool-product-card__subtit"></p>
                        </div>
                        <div class="talentpool-product-card__content">
                            <div class="talentpool-product-card__infos">
                                <div class="talentpool-product-card__info-row">
                                    <span class="talentpool-product-card__info-key">이용기간</span>
                                    <strong class="talentpool-product-card__info-value">`+ ticket.ticketPeriod + ` 일</strong>
                                </div>
                                <div class="talentpool-product-card__price">
                                    <span class="talentpool-product-card__price-tit">최종 결제 금액</span>
                                    <div class="talentpool-product-card__price-cont">
                                        <span class="talentpool-product-card__price-real_red">
                                            <strong class="talentpool-product-card__price-real_red_bold">`+ ticket.ticketPrice + `</strong>P
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="talentpool-product-card__footer">
                            <button type="button" class="btn btn--action--outline btn--large talentpool-product-card__buy-btn" id="buyTicket" data-bs-toggle="modal" data-bs-target="#tModal" onclick="TicketPayModal('${ticketName}','${ticketPeriod}','${ticketNo}')">
                                상품 구매
                            </button>
                        </div>
                    </div>
                `;

			$('#ticketBody').append(ticketHTML);

		}
	}
});


//	<<'상품구매'모달 버튼 이벤트>>
function TicketPayModal(ticketName, ticketPeriod, ticketNo) {
	ticketNo = `${ticketNo}`;
	ticketName = `${ticketName}`;
	ticketPeriod = `${ticketPeriod}`;

	$("#infoPage01").html(ticketName);
	$("#infoPage02").html(ticketPeriod);
	$("#infoPage03").html(ticketNo);
}

var couponList = '';

// <<사용자 아이디가 보유하고 있는 쿠폰 내역 가져오기>>
function selectCouponDetail() {
	let authId = document.getElementById('authId').value;
	var cpath = $("body").data("contextPath");
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectCouponDetail/" + authId, // 서버의 엔드포인트 주소
		type: "get",
		contentType: 'application/json',
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			couponList = data;
			selectTicketDetail();
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error
				("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

var ticketName = '';
var ticketPrice = 0;
var ticketTotal = ticketPrice;  // 총결제금액
var couponListHTML = '';
var ticketNo = '';
var selectOption = 0; // 할인 금액
var selectedOptionId = '';

// <<하나에 해당하는 이용권 상세 내역 가져오기>>
function selectTicketDetail() {
	ticketNo = document.querySelector('#infoPage03').innerText;	//이용권 번호
	var cpath = $("body").data("contextPath");
	// 페이지 로드 시 Ajax 호출
	$.ajax({
		url: cpath + "/selectTicketDetail/" + ticketNo,
		type: "get",
		async: false,
		contentType: 'application/json',
		dataType: "json",
		success: function(data) {
			// 성공 시 처리
			ticketName = data.ticketName;
			ticketPrice = data.ticketPrice;
			ticketPeriod = data.ticketPeriod;

			// 쿠폰 내역이 없을때
			if (couponList.length == 0) {
				couponListHTML = "<option selected disabled>보유 쿠폰 없음</option>";
			} else {
				for (var i = 0; i < couponList.length; i++) {
					var coupon = couponList[i].cpnName;
					var couponPrice = couponList[i].cpnPrice;
					var ucpnNo = couponList[i].ucpnNo;
					
					
					couponListHTML += "<option value=" + couponPrice + " id=" + ucpnNo + ">" + coupon + "</option> ";
				}
			}

			var ticketInfoHTML = `	
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">상품명 : </p>
									<p>`+ ticketName + ` / ` + ticketPeriod + ` 일</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">가격 : </p>
									<p>`+ ticketPrice + ` Point</p>
								</div>
								
								<div class="ticketInfo-02">
									<p class="ticketInfo-Title">할인 쿠폰 : </p>
									<select id=couponSelect onchange="couponSelect()"><option value="0" selected>선택하지 않음</option>`+ couponListHTML + `</select>
								</div>
								
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">주문 금액 : </p>
									<p>`+ ticketPrice + ` Point</p>
								</div>
								<div class="ticketInfo-01">
									<p class="ticketInfo-Title">(-) 할인 금액 : </p>
									<p id="discountPrice">0 Point</p>
								</div>
								
								<div class="ticketInfo-03">
									<p class="ticketInfo-Title">총 결제 포인트 : </p>
									<p id="totalPrice">`+ ticketPrice + ` Point</p>
								</div>			
								`;
			$('#step-Ticketinfo-01').append(ticketInfoHTML);
		},
		error: function(xhr, status, error) {
			// 에러 처리
			alert("데이터 가져오기 실패:", error);
			console.error("AJAX 오류 발생", xhr, status, error.responseText);
		}
	});
}

//쿠폰이 선택될때 할인 가격과 총 결제 포인트가 동적으로 바뀜. 
function couponSelect() {
	selectOption = document.getElementById('couponSelect').value;
	var selectedOption = document.getElementById('couponSelect');
	
	selectedOptionId = selectedOption.options[selectedOption.selectedIndex].id;
	
	
	console.log("유효 쿠폰 아이디 체킁체킁" + selectedOptionId);
	
	
	document.getElementById('discountPrice').innerText = selectOption + " Point";
	document.getElementById('totalPrice').innerText = ticketPrice - selectOption + " Point";
	ticketTotal = ticketPrice - selectOption;
	totalPrice = '0';
}

// << 비밀번호 인증 >>
function passCertification_onclick() {
	var cpath = $("body").data("contextPath");
	let authId = document.getElementById('authId').value;
	var inputPass = document.getElementById("inputPass").value;
	var realPass = '';
	console.log(authId);

	// 비밀번호 기입 안하고 인증하기 버튼을 눌렀을때 
	if (inputPass == "") {
		alert("비밀번호를 입력해주세요.")
	}

	$.ajax({
		url: cpath + "/selectUserPass",
		type: "post",
		dataType: "json",
		data: { "id": authId },
		success: function(data) {
			// 성공 시 처리
			realPass = data.userPass;
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






// 1. << 이용권 결제 中 쿠폰 사용했으면 쿠폰 사용 완료로 변환>>
function updateUserCoupon() {
	//alert(ticketPrice +" , "+ selectOption +" , "+ ticketTotal);
	var cpath = $("body").data("contextPath");
	let authId = document.getElementById('authId').value;

	if (selectOption == 0) {
		updateUserPoint();
	} else {
		var dataToSend = {
			usersId: authId,
			ucpnNo: selectedOptionId
		};

		$.ajax({
			type: 'post',
			url: `${cpath}/useCoupon`,
			contentType: 'application/json',
			data: JSON.stringify(dataToSend),
			success: function(response) {
				if (response === 'success') {
					updateUserPoint();
				} else {
					alert("db 저장실패");
				}
			},
			error: function(xhr, status, error) {
				console.error(error);
			}
		});
	}
}




// 2. << 이용권 결제 中 db에 포인트 결제 내역에 추가 >>
function updateUserPoint() {
	var cpath = $("body").data("contextPath");
	let authId = document.getElementById('authId').value;

	var dataToSend = {
		usersId: authId,
		pointUse: ticketTotal,
		pointRecord: '이용권 구매',
		ticketNo: ticketNo
	};

	$.ajax({
		type: 'post',
		url: `${cpath}/usePointPay`,
		contentType: 'application/json',
		data: JSON.stringify(dataToSend),
		success: function(response) {
			if (response === 'success') {
				alert(ticketName + " / " + ticketPeriod + " 일 권 구매를 완료했습니다 !");
			} else {
				alert("db 저장실패");
			}
		},
		error: function(xhr, status, error) {
			console.error(error);
		}
	});
}



