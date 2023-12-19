/**
 * 
 */

$(function(){
	
	let cPath = this.body.dataset.contextPath;

	let rcrtNo = $('.recruit-content').data("rcrtNo");
	let rprocOrder = $('.recruit-content').data("rprocOrder");
	let rprocEnd = $('.recruit-content').data("rprocEnd");
	
	/* 적성검사 - 시험지 조회 */
	$(document).on("click",".aptTestDetail", function(){
		let testNo = $(this).data("testNo");
		let aplNo = $(this).parents("tr").find("input[class=aplNo]").val();
		let rcrtNo = $(this).parents("tr").find("input[class=rcrtNo]").val();
		let rprocOrder = $(this).parents("tr").find("input[class=rprocOrder]").val();
		
		$('.apt_part').attr("style","display:none");
		$('.apt_part[data-idx=2]').attr("style","display:block");
		
		
		let usersNm = $(this).parents("tr").find(".usersNm").text();
		let usersBir = $(this).parents("tr").find(".usersBir").text();
		let usersGen = $(this).parents("tr").find(".usersGen").text();
		
		$('.apt-detailName').html(`${usersNm}(${usersBir}, ${usersGen})`);
		
		
		$.ajax({
			url : `${cPath}/company/recruit/test/${rcrtNo}/${rprocOrder}/${aplNo}`,
			data : {"testNo":testNo},
			success : function(resp){
				console.log(resp);
				
				let result = ``;
				
				$.each(resp.testResult[0].qstnList,function(idx,val){
					result += `
							<div>
								<div class="qstn-area">${idx+1}.${val.qstnCont}<div>
									<div class="item-area">
						`;
						$.each(val.itemList, function(i,v){
							if(val.rsltSelect==i+1){
								result += `<div style="color:#4876ef">(${i+1}) ${v.itemCont}</div>`;
							}else{
								result += `<div>(${i+1}) ${v.itemCont}</div>`;
							}
						});	// 내부 each문 끝
					result += `
							</div>
						<div class="astnOk">정답 : <span> ${val.qstnAnswer} </span>  </div>`
					result += `</div>`;
				}) // each문 끝
				
				
				$('#apt-test-result').html(result);
				
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		});
		})
		
		/* 적성검사 시험지 - 목록버튼 클릭 */
		$("#aptPartReturnBtn").on("click",function(){
			$('.apt_part').attr("style","display:none");
			$('.apt_part[data-idx=1]').attr("style","display:block");
		})
		
	/* 기술시험 - 시험지 조회 */
	$(document).on("click",".techTestDetail", function(){
		let testNo = $(this).data("testNo");
		let aplNo = $(this).parents("tr").find("input[class=aplNo]").val();
		let rcrtNo = $(this).parents("tr").find("input[class=rcrtNo]").val();
		let rprocOrder = $(this).parents("tr").find("input[class=rprocOrder]").val();
		
		$('.tech_part').attr("style","display:none");
		$('.tech_part[data-idx=2]').attr("style","display:block");
		
		let usersNm = $(this).parents("tr").find(".usersNm").text();
		let usersBir = $(this).parents("tr").find(".usersBir").text();
		let usersGen = $(this).parents("tr").find(".usersGen").text();
		
		$('.tech-detailName').html(`${usersNm}(${usersBir}, ${usersGen})`);
		
		
		$.ajax({
			url : `${cPath}/company/recruit/test/${rcrtNo}/${rprocOrder}/${aplNo}`,
			data : {"testNo":testNo},
			success : function(resp){
				console.log(resp);
				
				let result = ``;
				
				/* 시험지 조회 */
				$.each(resp.testResult[0].qstnList,function(idx,val){
					result += `
							<div>
								<div class="qstn-area">${idx+1}.${val.qstnCont}<div>
								<div class="item-area">답안 : ${val.rsltSelect}</div>
						`;
					result += `
							<span class="astnOk item-area techAnswer">모범답안 : <span> ${val.qstnAnswer} </span><br/> 
						</div>`;
				}) // each문 끝
				
				
				/* 채점표 생성 */
				scoreTbl = `
						<input type="hidden" name="_method" value="put" />
					`;
				for(let i=0; i<=9; i++){
					scoreTbl += `
						<input type="hidden" name="testResultVO[${i}].aplNo" value="${aplNo }" />
						<input type="hidden" name="testResultVO[${i}].rcrtNo" value="${rcrtNo }" />
						<input type="hidden" name="testResultVO[${i}].rprocOrder" value="${rprocOrder }" />
						<tr>
							<td class="td-score-title" >${i+1}</td>
								<input type="hidden" name="testResultVO[${i}].qstnNo" value="${i+1}" />	
							<td class="td-score testResultVO[${i}].techScore">
								<input type="number" name="testResultVO[${i}].techScore" class="inpTypo input-score" />
							</td>
						</tr>
					`;
				}
				
				$('.tech-score-tbody').html(scoreTbl);
				
				/* 채점표 점수 초기값 셋팅 */
				let inputTag = $(techScoreSubmitForm).find(".input-score");
				
				let scoreInfo = resp.techScoreInfo;
				if(scoreInfo != null){
					$.each(inputTag, function(i,v){
						let value = scoreInfo[i].techScore;
						v.value = value;
					})
				}else{
					$.each(inputTag, function(i,v){
						v.value = "";
					})
				}
				
				if(rprocEnd=='Y'){
					$(techScoreSubmitForm).find(":input").attr("disabled","disabled");
				}
						$('#tech-test-result').html(result);
						
						
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		});

		
	})
		
		/* 기술시험 시험지 - 목록버튼 클릭 */
		$("#techPartReturnBtn").on("click",function(){
			$('.tech_part').attr("style","display:none");
			$('.tech_part[data-idx=1]').attr("style","display:block");
		})
		
		/* 기술시험 시험지 - 저장버튼 클릭 */
		$('#techScoreSubmitBtn').on("click",function(){
			let data = $(techScoreSubmitForm).serialize();
			console.log(data);
			$.ajax({
				url : `${cPath}/company/recruit/techScore`,
				data : data,
				type: "post",
				success : function(resp){
					console.log(resp);
					if(resp.message == "INVALIDATE"){
						console.log(resp.errors);
						
						/* 있던 오류메세지 지우기 */
						let errors = $('.errors');
						$.each(errors, function(i,v){
							v.remove();
						})
						
						/* 오류메세지 띄우기 */
						$.each(resp.errors, function(i,v){
							console.log(i);
							$(`input[name='${i}']`).parent().append(`<span class="errors"><br/>${v}</span>`);
							
						})
					}else if(resp.message == "OK"){
						alert("저장 성공");
						location.reload();
					}else{
						alert("저장 실패");
						location.reload();
					}
					
				
				},
				error : function(xhr){
					console.log(xhr.status);
				}
			})
		})
})
