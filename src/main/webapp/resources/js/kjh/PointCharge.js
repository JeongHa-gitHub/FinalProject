


function thousand_onclick() {
	const money = document.getElementById('tenthousand').value;
	console.log(money);
	document.getElementById('moneyinsert').value = money;

}

function fivethousand_onclick() {
	const money = document.getElementById('fivethousand').value;
	console.log(money);
	document.getElementById('moneyinsert').value = money;
}

function tenthousand_onclick() {
	const money = document.getElementById('hundredthousand').value;
	console.log(money);
	document.getElementById('moneyinsert').value = money;
}

function onemillion_onclick() {
	const money = document.getElementById('onemillion').value;
	console.log(money);
	document.getElementById('moneyinsert').value = money;
}

var PaymentMethod = '';

function chargeBtn_onclick() {		//카카오 페이로 결제
	var pointCharge = document.getElementById('moneyinsert').value;
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
		name: '포인트 충전',
		amount: pointCharge,				//사용자의 금액 기입**
	}, function(rsp) {
		if (rsp.success) {
			point_insert();
		} else {
			if (pointCharge == "") {
				alert('금액을 입력해주세요.');
			}else{
				alert('결제를 취소했습니다.');
			}
		}
	});
}

function point_insert() {
	var pointCharge = document.getElementById('moneyinsert').value;
	let cpath = $("body").data("contextPath");
	var authId = document.getElementById('authId').value;
	var dataToSend = {
		usersId: authId,
		pointCharge: pointCharge,
		pointRecord: '포인트충전',         //상황에 따라 다르게
		pmtMethdno: PaymentMethod
	};

	$.ajax({
		type: 'post',
		url: `${cpath}/savePointPay`,
		contentType: 'application/json',
		data: JSON.stringify(dataToSend),
		success: function(response) {
			if (response === 'success') {
				alert("포인트 충전이 완료 되었습니다 !");
				location.href = `${cpath}/`;
			} else {
				alert("포인트 충전 실패");
			}
		},
		error: function(xhr, status, error) {
			console.error(error);
		}
	});
}

