/**
 * 
 */
$(function(){
	
	const cPath = this.body.dataset.contextPath;
	
	/*datepicker - 날짜선택 api*/
	$("#sDate").datepicker({
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

	$('#sDate').datepicker('setDate', 'today');

	$("#eDate").datepicker({
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

	$('#eDate').datepicker('setDate', 'today');


	/* 리스트 출력 ajax settings */
	let settings = {
		url:`${cPath}/company/recruit`,
		type : "get",
		dataType :"json",
		success : function(resp){
			console.log(resp);
			
			result = ``;
			if(resp.dataList.length>0){
				$.each(resp.dataList,function(i,v){
					result += `
								<div class="recruitListBorder">
									<ul>
										<li class="row ">
											<div class="info_recruit"> 
												<a href="${cPath}/company/recruit/${v.rcrtNo}/1" class="title">${v.rcrtTitle}</a>
												<div class="date">${v.rcrtDate}</div>
												<div class="period">
													<dl>
														<dd>${v.rcrtSdate} ~ ${v.rcrtEdate}</dd>
													</dl>
												</div>
												<div class="use_product"></div>
												<div class="area_status">
													<div class="box_status">
														<strong class="txt_status "><a href="#">공고 확인</a></strong>
													</div>
				
													<div class="status_type">
														<a href="#" class="division">
															총지원자
															<strong class="data_count ">${v.totalCount??"0"}</strong>
														</a>
														<a href="#" class="division">
															현재절차
															<strong class="data_count ">${v.currprocedure??"-"}${v.currprocedure?"차":""}</strong>
														</a>
														<a href="#" class="division">
															확인
															<strong class="data_count ">${v.checked??"0"}</strong>
														</a>
														<a href="#" class="division">
															미확인
															<strong class="data_count ">${v.unchecked??"0"}</strong>
														</a>
														<a href="#" class="division">
															최종합격
															<strong class="data_count point_color">${v.finalpass??"-"}</strong>
														</a>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							`;
				})
			}else{
				result += `
						검색 결과가 없습니다.
						`;
			}
			// 탭 순서와 똑같은 div에 result 찍기
			$(`.recruitListContWrap[data-list-order=${this.order}]`).html(result);
			
			// paging ui 찍기
			let paging = resp.pagingHTML;
			$('#paging').html(paging);
			
			
		},
		error : function(xhr){
			console.log("상태 : ",xhr.status);
		}
	}
	
	/* 탭 클릭 이벤트 */
	$('.recruitListClass').on("click",function(){
		// 모든 검색조건 초기화
		$('#searchForm').find('input[name]').val("");
		$('#searchUI').find('input[name]').val("");
		// 탭카테고리 셋팅
		let tabCategory = $(this).data("tabCategory");
		$('#searchForm').find('input[name=tabCategory]').val(tabCategory);
		
		// 현재 탭 번호 가져오기		
		settings.order = $(this).data("tabOrder");
		settings.data = $('#searchForm').serialize();
		$.ajax(settings)	// ajax 끝
		
		
		// select된 탭 select속성 다 지우기
		$('.tabList').children('.select').removeClass('select')
		// div 전부 안보이게 하기
		$('.recruitListContWrap').attr('style','display:none');
		
		// 클릭한 탭에 select 속성 주기
		$(this).addClass("select")
		// 탭 번호와 똑같은 div 보이게 하기
		$(`.recruitListContWrap[data-list-order=${settings.order}]`).attr('style','display:block');
		
	})
	
	/* 페이지 로딩 직후 진행중 클릭 이벤트 발생 */
	$('.recruitListClass').eq(0).trigger('click');



	/* 페이지 처리 */
	fn_paging = (currentPage) => {
		$('#searchForm').find('input[name=page]').val(currentPage);
		$('#searchForm').submit();
		$('#searchForm').find('input[name=page]').val("");
	}
	
	
	/* 검색버튼 클릭 이벤트 */
	$('#recruitListSearchBtn').on("click",function(){
		inputs = $(this).parents("#searchUI").find(":input[name]");
		$.each(inputs, function(i, v){
			let name = v.name;
			let value = v.value;
			
			$(searchForm).find(`:input[name=${name}]`).val(value);
		})
		$(searchForm).submit();
	})
	
	
	/* 페이지 처리 또는 검색버튼 클릭 시 submit 이벤트 */
	$(searchForm).on("submit",function(event){
		event.preventDefault();
		
		// 현재 탭의 testType 가져오기
		let tabCategory = $('#searchForm').find('input[name=tabCategory]').val();	
		// 현재 탭 번호 가져오기
		let order = -1;			
		if(tabCategory=="closed"){
			order = 2;
		}else{
			order = 1;
		}
		console.log(order);
		settings.order = order;
		
		settings.data = $('#searchForm').serialize();
		$.ajax(settings);
	})
	
	
	/* 정렬 셀렉트박스 change 이벤트 */
	$('#sortCategory').on("change",function(){
		let sortCategory =$(this).val();
		$(searchForm).find(`:input[name=sortCategory]`).val(sortCategory);
		$('#searchForm').submit();
	})
	
})
	