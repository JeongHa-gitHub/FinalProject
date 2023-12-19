/**
 * 
 */

$(function(){
	let cPath = this.body.dataset.contextPath;

	let rcrtNo = $('.recruit-content').data("rcrtNo");
	let rprocOrder = $('.recruit-content').data("rprocOrder");
	let rprocEnd = $('.recruit-content').data("rprocEnd");
	
	/* 이력서 채점표 만들기 */
	$('#createResumeScoreFormBtn').on("click", function() {
		let formTag = `
			<div class="resumeScoreModalCont">
				<form id="resumeScoreForm">
					<div class="resumeScoreItem divTypo">학력</div>
					<input type="checkbox" name="scrEdu" class="resumeScoreCheckbox" />
					<div class="resumeScoreItem divTypo">어학</div>
					<input type="checkbox" name="scrLang" class="resumeScoreCheckbox" />
					<div class="resumeScoreItem divTypo">경력</div>
					<input type="checkbox" name="scrCer" class="resumeScoreCheckbox" />
					<div class="resumeScoreItem divTypo">자격증</div>
					<input type="checkbox" name="scrCareer" class="resumeScoreCheckbox" />
					<div class="resumeScoreItem divTypo">대외활동</div>
					<input type="checkbox" name="scrIa" class="resumeScoreCheckbox" />
					<div class="resumeScoreItem divTypo">해외연수</div>
					<input type="checkbox" name="scrOs" class="resumeScoreCheckbox" />
					<div class="resumeScoreItem divTypo">기타</div>
					<input type="checkbox" name="scrEtc" class="resumeScoreCheckbox" />
				</form>
			</div>
		`;

		$('#resumeScore-modal-body').html(formTag);
	})
	
	/* 이력서 채점표 만들기 - 확인버튼 클릭 */
	$('#resumeScoreFormBtn').on("click", function() {
		let confirmStatus = confirm("채점표 양식을 저장하시겠습니까?");
		if (confirmStatus) {

			let checkbox = $('.resumeScoreCheckbox');
			let data = {};
			$.each(checkbox, function(i, v) {
				let name = v.name;
				data[name] = $(v).is(":checked") ? "Y" : "N"
			}); // each 끝

			console.log(data);

			data["rcrtNo"] = rcrtNo;
			data["rprocOrder"] = rprocOrder;

			$.ajax({
				url: `${cPath}/company/recruit/resume/scoreForm`,
				data: data,
				type: "post",
				success: function(resp) {
					if (resp == "OK") {
						alert("생성 성공")
					} else {
						alert("생성 실패")
					}

					$('.closeModal').trigger("click");
					location.reload();
				},
				error: function(xhr) {
					console.log(xhr.status);
				}

			})

		}
	})
	
	
	/* 이력서 상세보기 */
	$(document).on("click",".resumeDetail", function(){
		let resattNo = $(this).data("resattNo");
		let aplNo = $(this).data("aplNo");
		
		let resumeTitle = $(this).parents("tr").find(".resumeTitle").text();
		$('.resume-title-area').html(resumeTitle);
		
		$('.resume_part').attr("style","display:none");
		$('.resume_part[data-idx=2]').attr("style","display:block");
		
		$.ajax({
			url : `${cPath}/company/recruit/resume`,
			data : {
				"resattNo":resattNo
				, "rcrtNo" : rcrtNo
				, "rprocOrder" : rprocOrder
				, "aplNo" : aplNo
			},
			success : function(resp){
				console.log(resp);
					
				/* 이미지 url */
				let resumeImg = `<img src="${cPath}/${resp.resumeImageUrl}" />`;
				
				
				scoreTbl = `
							<input type="hidden" name="_method" value="put" />
							<input type="hidden" name="rcrtNo" value="${rcrtNo}" />
							<input type="hidden" name="rprocOrder" value="${rprocOrder}" />
							<input type="hidden" name="aplNo" value="${aplNo}" />
						`;
				
				if(resp.resumeForm){
					if(resp.resumeForm.scrEdu=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">학력</td>
								<td class="td-score">
									<input type="number" name="scrEdu" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
					if(resp.resumeForm.scrLang=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">어학</td>
								<td class="td-score">
									<input type="number" name="scrLang" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
					if(resp.resumeForm.scrCareer=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">경력</td>
								<td class="td-score">
									<input type="number" name="scrCareer" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
					if(resp.resumeForm.scrCer=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">자격증</td>
								<td class="td-score">
									<input type="number" name="scrCer" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
					if(resp.resumeForm.scrIa=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">대외활동</td>
								<td class="td-score">
									<input type="number" name="scrIa" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
					if(resp.resumeForm.scrOs=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">해외연수</td>
								<td class="td-score">
									<input type="number" name="scrOs" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
					if(resp.resumeForm.scrEtc=="Y"){
						scoreTbl += `
							<tr>
								<td class="td-score-title">기타</td>
								<td class="td-score">
									<input type="number" name="scrEtc" class="inpTypo input-score" />
								</td>
							</tr>
						`;
					}
				}
				
				$('#resumeImg').html(resumeImg);
				$('.resume-score-tbody').html(scoreTbl);
				
				/* 채점표 점수 초기값 셋팅 */
				let inputTag = $(resumeScoreSubmitForm).find(".input-score");
				let scoreInfo = resp.resumeScoreInfo;
				if(scoreInfo != null){
					$.each(inputTag, function(i,v){
						let name = v.name;
						console.log("name : ", name);
						let value = scoreInfo[name];
						console.log("value : ",value);
						console.log("inputTag : ",$(inputTag).find(`input[name=${name}]`))
						$(resumeScoreSubmitForm).find(`input[name=${name}]`).val(value);
					})
				}else{
					$.each(inputTag, function(i,v){
						let name = v.name;
						$(resumeScoreSubmitForm).find(`input[name=${name}]`).val("");
					})
				}
				
				/* 마감일 시 input태그 disabled 처리 */
				if(rprocEnd=='Y'){
					$(resumeScoreSubmitForm).find(":input").attr("disabled","disabled");
				}
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		})

	})
	
	/* 이력서 - 목록버튼 클릭 */
	$("#resumePartReturnBtn").on("click",function(){
		$('.resume_part').attr("style","display:none");
		$('.resume_part[data-idx=1]').attr("style","display:block");
	})
	
	/* 이력서 - 저장버튼 클릭 */
	$('#resumeScoreSubmitBtn').on("click",function(){
		let data = $(resumeScoreSubmitForm).serialize();
		console.log(data);
		$.ajax({
			url : `${cPath}/company/recruit/resumeScore`,
			data : data,
			type: "post",
			success : function(resp){
				if(resp=="OK"){
					alert("저장 성공");
				}else{
					alert("저장 실패");
				}
				
				location.reload();
				
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		})
	})

	
})