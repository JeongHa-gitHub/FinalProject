/**
 * 
 */

$(function(){
	
	let cPath = this.body.dataset.contextPath;

	let rcrtNo = $('.recruit-content').data("rcrtNo");
	let rprocOrder = $('.recruit-content').data("rprocOrder");
	let rprocEnd = $('.recruit-content').data("rprocEnd");
	
	
	/*datepicker - 면접일정 생성-날짜선택 api*/
	$("#intrIntdate").datepicker({
           dateFormat: 'yy-mm-dd' //달력 날짜 형태
           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
           ,changeYear: true //option값 년 선택 가능
           ,changeMonth: true //option값  월 선택 가능                
           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
           ,buttonText: "선택" //버튼 호버 텍스트              
           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
           ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
       });


	/* 면접일정 생성 */
	$(document).on("click",".createIntrSchdBtn",function(){
		
		let usersNm = $(this).data("usersNm");
		let aplNo = $(this).data("aplNo");
		let memMail = $(this).data("memMail");
		let intrNo = $(this).data("intrNo");
		
		let schdTag = `
			<div class="resumeScoreModalCont">
				<form id="intrSchdForm">
					<div class="intrItemTitle">면접대상자</div>
					<input type="text" value="${usersNm}" class="intrSchdItem" disabled /> <br />
					<input type="hidden" name="aplNo" value="${aplNo}" />
					<input type="hidden" name="rcrtNo" value="${rcrtNo}" />
					<input type="hidden" name="rprocOrder" value="${rprocOrder}" />
					<input type="hidden" name="toMail" value="${memMail}" />
					<input type="hidden" name="intrNo" value="${intrNo}" />
					<div class="intrItemTitle">면접유형</div>
					<select name="intrType" class="intrSchdItem intrType" style="width: 100px;">
						<option value="I01">대면면접</option>
						<option value="I02">화상면접</option>
						<option value="I03">전화면접</option>
					</select><br/>
					<div class="intrItemTitle">면접일시</div>
					<input type="text" name="intrIntdate" class="intrSchdItem intrIntdate"/><br />
					<div class="intrItemTitle intrPlace">면접장소</div>
					<input type="text" name="intrPlace" class="intrSchdItem intrPlace"/><br />
					<div class="intrItemTitle">메일발송</div>
					<div class="alarmArea">
						<input type="radio" name="mail_yn" class="mail_yn" value="Y"/>발송
						<input type="radio" name="mail_yn" class="mail_yn" value="N" checked/> 발송안함
					</div><br/>
					<div class="mailForm" style="display:none">
						<div class="intrItemTitle intrPlace mailTitle">제목</div>
						<input type="text" name="title" class="intrSchdItem mail-form"/><br />
						<div class="intrItemTitle">내용</div>
						<textarea class="txtAStyle" name="contents"></textarea>
					</div>
				</form>
			</div>
		`;

		$('#intrSchd-modal-body').html(schdTag);
	})
	

	$(document).on("click", ".intrIntdate", function () {
	    $(this).datepicker({
	        dateFormat: 'yy-mm-dd'
	    }).datepicker("show");
	});
	
	$(document).on("change",".mail_yn",function(){
		if($(this).val()=="Y"){
			$('.mailForm').attr("style", "display:");
			$('input[name=title]').val("");
			$('input[name=contents]').val("");
		}else{
			$('.mailForm').attr("style", "display:none");
		}
	})
	
	/* 확인 버튼 클릭 */
	$("#intrSchdBtn").on("click",function(){
		let data = $(intrSchdForm).serialize();
		$.ajax({
			url : `${cPath}/company/recruit/interviewSchd`,
			data : data,
			type : "post",
			success : function(resp){
				let mailYn = $("input[name=mail_yn]:checked").val()
				
				if(mailYn=="Y"){
					$.ajax({
						url : `${cPath}/company/recruit/interview/mail`,
						data : data,
						type : "get",
						success : function(resp){
							alert("발송 성공");
						},
						error : function(xhr){
							console.log(xhr.status);
						}
					})
				}
				
				if (resp == "OK") {
					alert("등록 성공")
				} else {
					alert("등록 실패")
				}
				$('.closeModal').trigger("click");
				location.reload();
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		})
		
	})
	
	/* 면접 일정 수정 */
	$(document).on("click",".intrSchdUpdateBtn",function(){
		let intrNo = $(this).data("intrNo");
		let usersNm = $(this).data("usersNm");
		let aplNo = $(this).data("aplNo");
		let memMail = $(this).data("memMail");
		
		$.ajax({
			url : `${cPath}/company/recruit/interviewSchd`,
			data : {
				"intrNo" : intrNo
			},
			type : "get",
			success : function(resp){
				console.log(resp);
				let schdTag = `
					<div class="resumeScoreModalCont">
						<form id="intrSchdUpdateForm">
							<input type="hidden" name="_method" value="put" />
							<div class="intrItemTitle">면접대상자</div>
							<input type="text" value="${usersNm}" class="intrSchdItem" disabled /> <br />
							<input type="hidden" name="intrNo" value="${intrNo}" />
							<input type="hidden" name="memMail" value="${memMail}" />
							<div class="intrItemTitle">면접유형</div>
							<select name="intrType" class="intrSchdItem intrType" style="width: 100px;">
								<option value="I01">대면면접</option>
								<option value="I02">화상면접</option>
								<option value="I03">전화면접</option>
							</select><br/>
							<div class="intrItemTitle">면접일시</div>
							<input type="text" name="intrIntdate" value="${resp.intrIntdate}" class="intrSchdItem intrIntdate"/><br />
							<div class="intrItemTitle intrPlace">면접장소</div>
							<input type="text" name="intrPlace" class="intrSchdItem intrPlace"/><br />
						</form>
					</div>
				`;
				$('#intrSchdUpdate-modal-body').html(schdTag);
				
				$(`option[value=${resp.intrType}]`).attr("selected","selected").trigger("change");
				if(resp.intrPlace){
					$(`input[name=intrPlace]`).val(`${resp.intrPlace}`);
				}
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		}); // ajax 끝
	})
	
	/* 면접일정 수정 - 확인 버튼 클릭 */
	$("#intrSchdUpdateBtn").on("click",function(){
		let data = $(intrSchdUpdateForm).serialize();
		console.log(data);
		
		$.ajax({
			url : `${cPath}/company/recruit/interviewSchd`,
			data : data,
			type : "post",
			success : function(resp){
				if (resp == "OK") {
					alert("수정 성공")
				} else {
					alert("수정 실패")
				}
				$('.closeModal').trigger("click");
				$(".intrInfoBtn").eq(1).trigger("click");
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		})
	})
	
	/* 면접일정 삭제 */
	$(document).on("click",".intrSchdDeleteBtn",function(){
		let intrNo = $(this).data("intrNo");
		let _method = "delete";
		
		if(confirm("면접일정을 삭제하시겠습니까?")){
			$.ajax({
				url : `${cPath}/company/recruit/interviewSchdDelete`,
				data : {
					"intrNo" : intrNo
					, "_method" : _method
				},
				type : "post",
				success : function(resp){
					if (resp == "OK") {
						alert("삭제 성공")
					} else {
						alert("삭제 실패")
					}
					$('.closeModal').trigger("click");
					location.reload();
				},
				error : function(xhr){
					console.log(xhr.status);
				}
			})	
		}
	})
	
	/* 면접유형 - 대면면접 선택 시에만 면접장소 입력칸 생성 */
	$(document).on("change",".intrType",function(){
		if($(this).val()=="I01"){
			$('.intrPlace').attr("style", "display:");
			$('input[name=intrPlace]').val("");
		}else{
			$('.intrPlace').attr("style", "display:none");
		}
	})
	
	/* 메일발송 버튼 클릭 */
	$(document).on("click",".sendMailBtn",function(){
		let name = $(this).data("usersNm");
		let email = $(this).data("memMail")
		let intrNo = $(this).data("intrNo");
		let mailForm = `
				<div>
					<input type="hidden" name="intrNo" value="${intrNo}" />
					<div class="intrItemTitle">받는사람</div>
					<input type="text" value="${name}" class="intrSchdItem mail-form" readonly /> <br />
					<div class="intrItemTitle">이메일</div>
					<input type="text" name="toMail" value="ddit2305@naver.com" class="intrSchdItem mail-form" readonly /> <br />
					<div class="intrItemTitle intrPlace">제목</div>
					<input type="text" name="title" class="intrSchdItem mail-form"/><br />
					<div class="intrItemTitle">내용</div>
					<textarea class="txtAStyle" name="contents"></textarea>
				</div>
			`;
		$("#sendMail-modal-body").html(mailForm);
	})
	
	/* 안내발송 - 확인버튼 클릭*/
	$('#sendMailBtn').on("click",function(){
		let data = $(sendMailForm).serialize();
		console.log(data);
		$.ajax({
			url : `${cPath}/company/recruit/interview/mail`,
			data : data,
			type : "get",
			success : function(resp){
				if(resp=="OK"){
					alert("발송 성공");
					$('.closeModal').trigger("click");
					$('.intrInfoBtn').eq(1).trigger("click");
				}else{
					alert("발송 실패");
					$('.closeModal').trigger("click");
					$('.intrInfoBtn').eq(1).trigger("click");
				}
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		});
	})
})