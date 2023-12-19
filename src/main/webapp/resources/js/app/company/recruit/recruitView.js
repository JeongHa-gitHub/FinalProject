/**
 * 
 */




$(function() {

	let cPath = this.body.dataset.contextPath;

	/* 탭 클릭 시 호출되는 function */
	selectTab = (rcrtNo, rprocOrder) => {
		location.href = `${cPath}/company/recruit/${rcrtNo}/${rprocOrder}`;
	}

	// rprocTypeno 셋팅
	let rprocTypeno = $('.recruit-content').data("rprocTypeno");
	$('#searchForm').find('input[name=rprocTypeno]').val(rprocTypeno);

	// 정렬조건 초기값 셋팅
	let sortCategory = $("select[name=sortCategory]").val();
	$('#searchForm').find('input[name=sortCategory]').val(sortCategory);

	let rcrtNo = $('.recruit-content').data("rcrtNo");
	let rprocOrder = $('.recruit-content').data("rprocOrder");
	let rprocEnd = $('.recruit-content').data("rprocEnd");

	
	/* ================================================== settings ================================================== */

	/* 서류전형 settings */
	let resumeSettings = {
		url: `${cPath}/company/recruit/ajax/${rcrtNo}/${rprocOrder}`,
		dataType: "json",
		success: function(resp) {
			console.log(resp)
			result = '';
			if (resp.dataList.length > 0) {
				$.each(resp.dataList, function(i, v) {
					result += `
								<tr>
									<td class="usersNm">${v.users.usersNm}</td>
									<td class="usersBir">${v.users.usersBir}</td>
									<td class="usersGen">${v.users.usersGen == 'F' ? "여" : "남"}</td>
									<td class="ellipsis resumeTitle"><a href="javascript:;" class="resumeDetail" data-apl-no="${v.aplNo}" data-resatt-no="${v.resattNo}">${v.resumeTitle}</a></td>
									<td>${v.aprocDate}</td>
									<td>${v.aprocScr??"-"}</td>
								`;

					// 마감일 시 초기화면 합불여부 관리 disabled 처리
					if (rprocEnd == 'Y') {
						result += `
										<td>
											<select class="aprocPass" name="aprocVO[${i}].aprocPass" disabled>
												<option value="unconfirmed">미확인</option>
												<option value="pass">합격</option>
												<option value="fail">불합격</option>
											</select>
										</td>
									</tr>
								`;
					} else {
						result += `
									<td>
										<input type="hidden" name="aprocVO[${i}].aplNo" value="${v.aplNo}"/>
										<input type="hidden" name="aprocVO[${i}].rcrtNo" value="${v.rcrtNo}"/>
										<input type="hidden" name="aprocVO[${i}].rprocOrder" value="${v.rprocOrder}"/>
										<select class="aprocPass" name="aprocVO[${i}].aprocPass">
											<option value="unconfirmed">미확인</option>
											<option value="pass">합격</option>
											<option value="fail">불합격</option>
										</select>
									</td>
								</tr>
							`;
					}
				}); // $.each 끝
			} else {
				result += `
						<tr>
							<td colspan="7" style="padding: 20">검색 결과가 없습니다.<br>
		
							</td>
						</tr>
					`;
			}
			$('.resume-tbody').html(result);
			$("#paging").html(resp.pagingHTML);

			// 합격상태 초기값 셋팅
			$('.resume-tbody').find(`option[value=${this.confirmStatus}]`).attr("selected", true);
		},
		error: function(xhr) {
			console.log("상태 : " + xhr.status);
		}


	};

	/* 적성검사 전형 settings */
	let aptSettings = {
		url: `${cPath}/company/recruit/ajax/${rcrtNo}/${rprocOrder}`,
		dataType: "json",
		success: function(resp) {
			console.log(resp)
			result = '';
			if (resp.dataList.length > 0) {
				$.each(resp.dataList, function(i, v) {
					result += `
							<tr>
								<td class="usersNm"><a href="javascript:;" class="resumeImgLink"
									data-bs-toggle="modal" data-bs-target="#resumeImgModal"
									data-resatt-no="${v.resattNo}">${v.users.usersNm}</a></td>
								<td class="usersBir">${v.users.usersBir}</td>
								<td class="usersGen">${v.users.usersGen == 'F' ? "여" : "남"}</td>
								<td><a href="javascript:;" class="aptTestDetail" data-test-no="${v.testNo}">결과지확인</a></td>
								<td>${v.aprocDate}</td>
								<td>${v.aprocScr??"-"}</td>
						`;

					// 마감일 시 초기화면 합불여부 관리 disabled 처리
					if (rprocEnd == 'Y') {
						result += `
									<td>
										<input type="hidden" name="aprocVO[${i}].aplNo" class="aplNo" value="${v.aplNo}"/>
										<input type="hidden" name="aprocVO[${i}].rcrtNo" class="rcrtNo" value="${v.rcrtNo}"/>
										<input type="hidden" name="aprocVO[${i}].rprocOrder" class="rprocOrder" value="${v.rprocOrder}"/>
										<select class="aprocPass" name="aprocVO[${i}].aprocPass" disabled>
											<option value="unconfirmed">미확인</option>
											<option value="pass">합격</option>
											<option value="fail">불합격</option>
										</select>
									</td>
								</tr>
							`;
					} else {
						result += `
									<td>
										<input type="hidden" name="aprocVO[${i}].aplNo" class="aplNo" value="${v.aplNo}"/>
										<input type="hidden" name="aprocVO[${i}].rcrtNo" class="rcrtNo" value="${v.rcrtNo}"/>
										<input type="hidden" name="aprocVO[${i}].rprocOrder" class="rprocOrder" value="${v.rprocOrder}"/>
										<select class="aprocPass" name="aprocVO[${i}].aprocPass">
											<option value="unconfirmed">미확인</option>
											<option value="pass">합격</option>
											<option value="fail">불합격</option>
										</select>
									</td>
								</tr>
							`;
					}

				}); // $.each 끝
			} else {
				result += `
					<tr>
						<td colspan="7" style="padding: 20">검색 결과가 없습니다.<br>
	
						</td>
					</tr>
				`;
			}
			$('.apt-tbody').html(result);
			$("#paging").html(resp.pagingHTML);

			// 합격상태 초기값 셋팅
			$('.apt-tbody').find(`option[value=${this.confirmStatus}]`).attr("selected", true);
		},
		error: function(xhr) {
			console.log("상태 : " + xhr.status);
		}


	};

	/* 기술시험 전형 settings */
	let techSettings = {
		url: `${cPath}/company/recruit/ajax/${rcrtNo}/${rprocOrder}`,
		dataType: "json",
		success: function(resp) {
			console.log(resp)
			result = '';
			if (resp.dataList.length > 0) {
				$.each(resp.dataList, function(i, v) {
					result += `
							<tr>
								<td class="usersNm"><a href="javascript:;" class="resumeImgLink"
									data-bs-toggle="modal" data-bs-target="#resumeImgModal"
									data-resatt-no="${v.resattNo}">${v.users.usersNm}</a></td>
								<td class="usersBir">${v.users.usersBir}</td>
								<td class="usersGen">${v.users.usersGen == 'F' ? "여" : "남"}</td>
								<td><a href="javascript:;" class="techTestDetail" data-test-no="${v.testNo}" data-users-nm="${v.users.usersNm}">결과지확인</a></td>
								<td>${v.aprocDate}</td>
								<td>${v.aprocScr??"-"}</td>
						`;

					// 마감일 시 초기화면 합불여부 관리 disabled 처리
					if (rprocEnd == 'Y') {
						result += `
									<td>
										<input type="hidden" name="aprocVO[${i}].aplNo" class="aplNo" value="${v.aplNo}"/>
										<input type="hidden" name="aprocVO[${i}].rcrtNo" class="rcrtNo" value="${v.rcrtNo}"/>
										<input type="hidden" name="aprocVO[${i}].rprocOrder" class="rprocOrder" value="${v.rprocOrder}"/>
										<select class="aprocPass" name="aprocVO[${i}].aprocPass" disabled>
											<option value="unconfirmed">미확인</option>
											<option value="pass">합격</option>
											<option value="fail">불합격</option>
										</select>
									</td>
								</tr>
							`;
					} else {
						result += `
									<td>
										<input type="hidden" name="aprocVO[${i}].aplNo" class="aplNo" value="${v.aplNo}"/>
										<input type="hidden" name="aprocVO[${i}].rcrtNo" class="rcrtNo" value="${v.rcrtNo}"/>
										<input type="hidden" name="aprocVO[${i}].rprocOrder" class="rprocOrder" value="${v.rprocOrder}"/>
										<select class="aprocPass" name="aprocVO[${i}].aprocPass">
											<option value="unconfirmed">미확인</option>
											<option value="pass">합격</option>
											<option value="fail">불합격</option>
										</select>
									</td>
								</tr>
							`;
					}
				}); // $.each 끝
			} else {
				result += `
					<tr>
						<td colspan="7" style="padding: 20">검색 결과가 없습니다.<br>
	
						</td>
					</tr>
				`;
			}
			$('.tech-tbody').html(result);
			$("#paging").html(resp.pagingHTML);

			// 합격상태 초기값 셋팅
			$('.tech-tbody').find(`option[value=${this.confirmStatus}]`).attr("selected", true);
		},
		error: function(xhr) {
			console.log("상태 : " + xhr.status);
		}
	};

	/* 면접 전형 지원자목록 settings */
	let intrApplicantSettings = {
		url: `${cPath}/company/recruit/ajax/${rcrtNo}/${rprocOrder}`,
		dataType: "json",
		success: function(resp) {
			console.log(resp)
			applResult = ``;
			if (resp.dataList.length > 0) {
				$.each(resp.dataList, function(i, v) {
					applResult += `
							<tr>
								<td class="usersNm"><a href="javascript:;" class="resumeImgLink"
									data-bs-toggle="modal" data-bs-target="#resumeImgModal"
									data-resatt-no="${v.resattNo}">${v.users.usersNm}</a></td>
								<td class="usersBir">${v.users.usersBir}</td>
								<td class="usersGen">${v.users.usersGen == 'F' ? "여" : "남"}</td>
								<td>${v.aprocDate}</td>
								<td>${v.interviewVO.intrDate ? "등록" : "미등록"}</td>
								<td>
									${v.interviewVO.intrDate ? "" : `<button type="button" class="btnSizeS colorBlue createIntrSchdBtn"
									data-bs-toggle="modal" data-bs-target="#intrSchdModal"
									data-apl-no="${v.aplNo}" data-users-nm="${v.users.usersNm}"
									data-intr-no="${v.interviewVO.intrNo}"
									data-mem-mail="${v.memMail}">면접일정등록</button>`}
								</td>
							</tr>
						`;
				}); // $.each 끝
			} else {
				applResult += `
					<tr>
						<td colspan="5" style="padding: 20">검색 결과가 없습니다.<br>
	
						</td>
					</tr>
				`;
			}
			$('.intrAppl-tbody').html(applResult);
			$("#paging").html(resp.pagingHTML);

			// 합격상태 초기값 셋팅
			$('.intrSchd-tbody').find(`option[value=${this.confirmStatus}]`).attr("selected", true);
		},
		error: function(xhr) {
			console.log("상태 : " + xhr.status);
		}
	};
	
	/* 면접 전형 면접일정관리 settings */
	let intrScheduleSettings = {
		url: `${cPath}/company/recruit/ajax/${rcrtNo}/${rprocOrder}`,
		dataType: "json",
		success: function(resp) {
			console.log(resp)
			schdResult = ``;
			if (resp.dataList.length > 0) {
				$.each(resp.dataList, function(i, v) {
					if(v.interviewVO.intrDate){
						schdResult += `
							<tr>
								<td class="usersNm">
									<a href="javascript:;" class="resumeImgLink"
										data-bs-toggle="modal" data-bs-target="#resumeImgModal"
										data-resatt-no="${v.resattNo}">${v.users.usersNm}</a><br>
									<buttton type="text" class="btnSizeXS rcrtBtnStyle">${v.interviewVO.intrTypeNm}</buttton>
								</td>
								<td class="usersBir">${v.users.usersBir}</td>
								<td class="usersGen">${v.users.usersGen == 'F' ? "여" : "남"}</td>
								<td>
									${v.interviewVO.intrIntdate}<br/>
									`;
						if(v.interviewVO.intrType=="I01"){
							schdResult += `${v.interviewVO.intrPlace}`;
						}else if(v.interviewVO.intrType=="I02"){
							schdResult += `<button type="button" class="btnSizeXS">화상면접 링크</button>`;
						}
							schdResult += `
								</td>
								<td>${v.mailCount}</td>
						`;
	
						// 마감일 시 초기화면 합불여부 관리 disabled 처리
						if (rprocEnd == 'Y') {
							schdResult += `
										<td>
											<select class="aprocPass" name="aprocVO[${i}].aprocPass" disabled>
												<option value="unconfirmed">미확인</option>
												<option value="pass">합격</option>
												<option value="fail">불합격</option>
											</select>
										</td>
										<td>
											<buttton type="button" class="btnSizeXS disabled">수정</buttton><br>
											<buttton type="button" class="btnSizeXS disabled">삭제</buttton>
										</td>
									</tr>
								`;
						} else {
							schdResult += `
										<td>
											<buttton type="button" class="btnSizeXS colorBlue sendMailBtn mb-1"
												data-bs-toggle="modal" data-bs-target="#sendMailModal"
												data-users-nm="${v.users.usersNm}"
												data-mem-mail="${v.memMail}" data-intr-no="${v.interviewVO.intrNo}">메일발송</buttton><br>
											<input type="hidden" name="aprocVO[${i}].aplNo" value="${v.aplNo}"/>
											<input type="hidden" name="aprocVO[${i}].rcrtNo" value="${v.rcrtNo}"/>
											<input type="hidden" name="aprocVO[${i}].rprocOrder" value="${v.rprocOrder}"/>
											<select class="aprocPass" name="aprocVO[${i}].aprocPass">
												<option value="unconfirmed">미확인</option>
												<option value="pass">합격</option>
												<option value="fail">불합격</option>
											</select>
										</td>
										<td>
											<buttton type="button" class="btnSizeXS intrSchdUpdateBtnStyle intrSchdUpdateBtn"
												data-bs-toggle="modal" data-bs-target="#intrSchdUpdateModal"
												data-intr-no="${v.interviewVO.intrNo}"
												data-apl-no="${v.aplNo}" data-users-nm="${v.users.usersNm}"
												data-mem-mail="${v.memMail}">수정</buttton><br>
											<buttton type="button" class="btnSizeXS colorRed intrSchdDeleteBtn"
												data-intr-no="${v.interviewVO.intrNo}">삭제</buttton>
										</td>
									</tr>
								`;
						}
					}
					
				}); // $.each 끝
			} else {
				schdResult += `
					<tr>
						<td colspan="7" style="padding: 20">검색 결과가 없습니다.<br>
	
						</td>
					</tr>
				`;
			}

			$('.intrSchd-tbody').html(schdResult);
			$("#paging").html(resp.pagingHTML);

			// 합격상태 초기값 셋팅
			$('.intrSchd-tbody').find(`option[value=${this.confirmStatus}]`).attr("selected", true);
		},
		error: function(xhr) {
			console.log("상태 : " + xhr.status);
		}
	};


	/* ================================================== 미확인/합격/불합격 버튼 ================================================== */
	
	/* 서류전형 - 미확인/합격/불합격 버튼 클릭 */
	$(".resumeStatus").on("click", function() {
		// aprocPass 셋팅하기
		let confirmStatus = $(this).data("confirmStatus");
		$(searchForm).find(":input[name=aprocPass]").val(confirmStatus)

		// 검색조건 초기화
		$(searchForm).find(":input[name=usersGen]").val("");
		$(searchForm).find(":input[name=usersNm]").val("");
		$(".searchUI").find(":input[name=usersGen]").val("");
		$(".searchUI").find(":input[name=usersNm]").val("");

		// UI 바꾸기
		$(".resumeStatus").removeClass("colorBlue");
		$(this).addClass("colorBlue");

		$(searchForm).submit();
	})


	/* 적성검사 전형 - 미확인/합격/불합격 버튼 클릭 */
	$(".aptStatus").on("click", function() {
		// aprocPass 셋팅하기
		let confirmStatus = $(this).data("confirmStatus");
		$(searchForm).find(":input[name=aprocPass]").val(confirmStatus)

		// 검색조건 초기화
		$(searchForm).find(":input[name=usersGen]").val("");
		$(searchForm).find(":input[name=usersNm]").val("");
		$(".searchUI").find(":input[name=usersGen]").val("");
		$(".searchUI").find(":input[name=usersNm]").val("");

		// UI 바꾸기
		$(".aptStatus").removeClass("colorBlue");
		$(this).addClass("colorBlue");

		$(searchForm).submit();
	})

	/* 기술시험 전형 - 미확인/합격/불합격 버튼 클릭 */
	$(".techStatus").on("click", function() {
		// aprocPass 셋팅하기
		let confirmStatus = $(this).data("confirmStatus");
		$(searchForm).find(":input[name=aprocPass]").val(confirmStatus)

		// 검색조건 초기화
		$(searchForm).find(":input[name=usersGen]").val("");
		$(searchForm).find(":input[name=usersNm]").val("");
		$(".searchUI").find(":input[name=usersGen]").val("");
		$(".searchUI").find(":input[name=usersNm]").val("");

		// UI 바꾸기
		$(".techStatus").removeClass("colorBlue");
		$(this).addClass("colorBlue");

		$(searchForm).submit();
	})




	/* 면접 전형 - 지원자목록, 면접일정관리 버튼 클릭 */
	$(".intrInfoBtn").on("click", function() {
		// 탭 UI 바꾸기
		$(".intrInfoBtn").removeClass("inSelect");
		$(this).addClass("inSelect");

		// 지원자목록 클릭인지 면접일정관리 버튼 클릭인지
		let intrTabType = $(this).data("intrTabType");

		$(searchForm).find(":input[name=intrStatus]").val("");
		
		// 지원자목록 클릭인지 면접일정관리 버튼 클릭인지 셋팅
		$(searchForm).find(":input[name=intrTabType]").val(intrTabType);

		let idx = $(this).data("intrTabIdx");

		// 지원자목록, 면접일정관리 내용 보이게 하기
		$(".intrTbl").attr("style", "display: none");
		$(`.intrTbl[data-intr-list-idx=${idx}]`).attr("style", "display: block");
		
		if(idx==1){
			$(".intrApplStatus").eq(0).trigger("click");
		}else{
			$(".intrSchdStatus").eq(0).trigger("click");
		}
		
	})


	/* 면접 전형 중 지원자목록 - 미확인/합격/불합격 버튼 클릭 */
	$(".intrApplStatus").on("click", function() {
		// aprocPass 셋팅하기
		let confirmStatus = $(this).data("confirmStatus");
		$(searchForm).find(":input[name=aprocPass]").val(confirmStatus)

		// 검색조건 초기화
		$(searchForm).find(":input[name=usersGen]").val("");
		$(searchForm).find(":input[name=usersNm]").val("");
		$(".searchUI").find(":input[name=usersGen]").val("");
		$(".searchUI").find(":input[name=usersNm]").val("");

		// UI 바꾸기
		$(".intrApplStatus").removeClass("colorBlue");
		$(this).addClass("colorBlue");

		$(searchForm).submit();
	})

	/* 면접 전형 중 면접일정관리 - 미확인/합격/불합격 버튼 클릭 */
	$(".intrSchdStatus").on("click", function() {
		// aprocPass 셋팅하기
		let confirmStatus = $(this).data("confirmStatus");
		$(searchForm).find(":input[name=aprocPass]").val(confirmStatus)

		// 검색조건 초기화
		$(searchForm).find(":input[name=usersGen]").val("");
		$(searchForm).find(":input[name=usersNm]").val("");
		$(".searchUI").find(":input[name=usersGen]").val("");
		$(".searchUI").find(":input[name=usersNm]").val("");

		// UI 바꾸기
		$(".intrSchdStatus").removeClass("colorBlue");
		$(this).addClass("colorBlue");

		$(searchForm).submit();
	})

	/* ================================================== 검색/페이지/정렬 ================================================== */

	/* 페이지 처리 */
	fn_paging = (currentPage) => {
		$('#searchForm').find('input[name=page]').val(currentPage);
		$('#searchForm').submit();
		$('#searchForm').find('input[name=page]').val("");
	}


	/* 검색버튼 클릭 이벤트 */
	$('.recruitViewSearchBtn').on("click", function() {
		inputs = $(this).parents(".searchUI").find(":input[name]");
		$.each(inputs, function(i, v) {
			let name = v.name;
			let value = v.value;

			$(searchForm).find(`:input[name=${name}]`).val(value);
		})
		$(searchForm).submit();
	})

	/* 정렬조건 change 이벤트 */
	$(":input[name=sortCategory]").on("change", function() {
		let value = $(this).val();
		$(searchForm).find(":input[name=sortCategory]").val(value);
		$(searchForm).submit();
	})

	/* 등록여부 change 이벤트 */
	$(":input[name=intrStatus]").on("change", function() {
		let value = $(this).val();
		$(searchForm).find(":input[name=intrStatus]").val(value);
		$(searchForm).submit();
	})

	/* 페이지 처리 또는 검색버튼 클릭 또는 합격여부 클릭 시 submit 이벤트 */
	$(searchForm).on("submit", function(event) {
		event.preventDefault();

		if (rprocTypeno == 'RE01') {
			// 서류 전형일 때
			resumeSettings.data = $("#searchForm").serialize();
			resumeSettings.confirmStatus = $(searchForm).find(":input[name=aprocPass]").val();
			$.ajax(resumeSettings)
		} else if (rprocTypeno == 'RE02') {
			// 적성검사 전형일 때
			aptSettings.data = $("#searchForm").serialize();
			aptSettings.confirmStatus = $(searchForm).find(":input[name=aprocPass]").val();
			$.ajax(aptSettings)
		} else if (rprocTypeno == 'RE03') {
			// 기술시험 전형일 때
			techSettings.data = $("#searchForm").serialize();
			techSettings.confirmStatus = $(searchForm).find(":input[name=aprocPass]").val();
			$.ajax(techSettings)
		} else {
			// 면접 전형일 때
			
			// 지원자목록 탭인지 면접일정관리 탭인지
			let intrTabType = $(searchForm).find(":input[name=intrTabType]").val();
			
			// 보낼 정보에 지원자목록 탭인지 면접일정관리 탭인지에 대한 정보 추가
			
			
			if(intrTabType == "applicant"){
				let data = $("#searchForm").serialize(); // 문자열
				intrApplicantSettings.data = data;
				intrApplicantSettings.confirmStatus = $(searchForm).find(":input[name=aprocPass]").val();
				$.ajax(intrApplicantSettings);
			}else{
				 $("#searchForm").find(":input[name=intrStatus]").val("NotNull");
				let data = $("#searchForm").serialize(); // 문자열
				intrScheduleSettings.data = data;
				intrScheduleSettings.confirmStatus = $(searchForm).find(":input[name=aprocPass]").val();
				$.ajax(intrScheduleSettings);
			}
			
		}
	})

	/* ================================================== 초기화면 트리거 ================================================== */

	// 초기화면 미확인 클릭 트리거
	$(".resumeStatus").eq(0).trigger("click");
	$(".aptStatus").eq(0).trigger("click");
	$(".techStatus").eq(0).trigger("click");
	$(".techStatus").eq(0).trigger("click");
	$(".intrInfoBtn").eq(0).trigger("click");
	$(".intrApplStatus").eq(0).trigger("click");
	$(".intrSchdStatus").eq(0).trigger("click");


	/* ================================================== 합불상태 저장, 마감 ================================================== */

	/* 저장 버튼 클릭 */
	$("#passStatusSaveBtn").on("click", function() {
		let data = $(confirmStatusForm).serialize();
		console.log(data);
		$.ajax({
			url: `${cPath}/company/recruit/passStatus`,
			type: "post",
			data: data,
			success: function(resp) {
				if (resp == "OK") {
					alert("수정 성공")
				} else {
					alert("수정 실패")
				}
				let confirmStatus = $(searchForm).find(":input[name=aprocPass]").val();
				// 미확인/합격/불합격 탭 중 현재 있는 탭 클릭 이벤트
				$('.confirmStatus').children(`[data-confirm-status=${confirmStatus}]`).trigger("click");

			},
			error: function(xhr) {
				console.log(xhr.status);
			}
		});
	})

	/* 마감 버튼 클릭 */
	$('#procedureCloseBtn').on("click", function() {
		let closeConfirm = confirm("마지막 상태가 저장된 후 마감됩니다. 채용절차를 마감하시겠습니까?");
		if (closeConfirm) {
			$.ajax({
				url : `${cPath}/company/recruit/mail/${rcrtNo}/${rprocOrder}`,
				type : "get",
				success : function(resp){
					console.log("성공");
			
					confirmStatusForm.action = `${cPath}/company/recruit/closeStatus`;
					confirmStatusForm.requestSubmit();
				},
				error : function(xhr){
					console.log(xhr.status);
				}
			});
			
		}
	})
	
	/* 목록 버튼 클릭 */
	$("#recruitListBtn").on("click",function(){
		location.href=`${cPath}/company/recruitListUI`;
	})
	
	/* ================================================== 이름 클릭 이력서 모달 이벤트 ================================================== */
	$(document).on("click",".resumeImgLink",function(){
		let resattNo = $(this).data("resattNo");
		$.ajax({
			url : `${cPath}/company/recruit/resumeImg`,
			data : {
				"resattNo":resattNo
			},
			success : function(resp){
				console.log(resp);
				/* 이미지 url */
				let resumeImg = `<img src="${cPath}/${resp.resumeImageUrl}" />`;
				
				$('#resumeImg-modal-body').html(resumeImg);
			},
			error : function(xhr){
				console.log(xhr.status);
			}
		})
	})

	/* ================================================== 지원자 목록 다운로드 ================================================== */
	
	$("#applicantListDownloadTag").on("click", function(){
		let aprocPass = $(searchForm).find("input[name=aprocPass]").val();
		applicantListDownloadTag.href
			= `${cPath}/company/recruit/applicantListDownload?rcrtNo=${rcrtNo}&&rprocOrder=${rprocOrder}&&aprocPass=${aprocPass}`;
	})
	
	$("#allApplicantListDownloadTag").on("click", function(){
		allApplicantListDownloadTag.href
			= `${cPath}/company/recruit/applicantListDownload?rcrtNo=${rcrtNo}&&rprocOrder=${rprocOrder}`;
	})
	
	
	
})
	
	