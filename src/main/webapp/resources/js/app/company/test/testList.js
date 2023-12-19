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
		url:`${cPath}/company/test`,
		type : "get",
		dataType :"json",
		success : function(resp){
			console.log(this);
			
			result = ``;
			if(resp.dataList.length>0){
				$.each(resp.dataList,function(i,v){
					result += `
								<tr>
									<td><a href="javascript:;" onclick="testDetail('${v.testType}','${v.testNo}');">${v.testTitle}</a></td>
									<td>${v.testDate}</td>
								</tr>
							`;
				})
			}else{
				result += `
						<tr>
	                        <td colspan="2" style="padding: 20">
	                        	검색 결과가 없습니다.
	                        </td>
	                     </tr>
						`;
			}
			// 탭 순서와 똑같은 tbody에 result 찍기
			$(`.test-tbody[data-list-order=${this.order}]`).html(result);
			
			// paging ui 찍기
			let paging = resp.pagingHTML;
			$('#paging').html(paging);
			
		},
		error : function(xhr){
			console.log("상태 : ",xhr.status);
		}
	}

	/* 탭 클릭 이벤트 */
	$('.testClass').on("click",function(){
		// 모든 검색조건 초기화
		$('#searchForm').find('input[name]').val("");
		$('#searchUI').find('input[name]').val("");
		// 테스트타입 셋팅
		let testType = $(this).attr('id');
		$('#searchForm').find('input[name=testType]').val(testType);
		

		// 현재 탭 번호 가져오기		
		settings.order = $(this).data("tabOrder");

		settings.data = $('#searchForm').serialize();
		$.ajax(settings)	// ajax 끝
		
		
		// select된 탭 select속성 다 지우기
		$('.tabList').children('.select').removeClass('select')
		// tbody 전부 안보이게 하기
		$('.test-tbody').attr('style','display:none');
		
		// 클릭한 탭에 select 속성 주기
		$(this).addClass("select")
		// 탭 번호와 똑같은 tbody 보이게 하기
		$(`.test-tbody[data-list-order=${settings.order}]`).attr('style','display:');
		
	})
	
	/* 페이지 로딩 직후 적성검사 클릭 이벤트 발생 */
	$('.testClass').eq(0).trigger('click');


	/* 시험지 상세보기 페이지 이동 */
	testDetail = (testType,testNo) => {
		location.href=`${cPath}/company/test/${testType}/${testNo}`;
	}
	
	
	/* 페이지 처리 */
	fn_paging = (currentPage) => {
		$('#searchForm').find('input[name=page]').val(currentPage);
		$('#searchForm').submit();
		$('#searchForm').find('input[name=page]').val("");
	}
	
	
	/* 검색버튼 클릭 이벤트 */
	$('#testSearchBtn').on("click",function(){
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
		let testType = $('#searchForm').find('input[name=testType]').val();	
		// 현재 탭 번호 가져오기			
		settings.order = $('#'+testType).data("tabOrder");
		settings.data = $('#searchForm').serialize();
		$.ajax(settings);
	})

	/* 시험지 생성 */
	addTest = (testType) => {
		location.href = `${cPath}/company/test/${testType}/new`;
	}
	
	
	
	/* 시험지 목록 조회 버튼 클릭 */
	$('#testListBtn').on("click",function(){
		location.href = `${cPath}/company/testListUI`;
	})
	
	/* 시험지 수정 버튼 클릭  */
	$('#testModBtn').on("click",function(){
		let testType = $(this).data("testType");
		let testNo = $(this).data("testNo");
		location.href = `${cPath}/company/test/${testType}/${testNo}/edit`;
	})
	
	/* 시험지 삭제 버튼 클릭 */
	$('#testDelBtn').on("click",function(){
		let password = prompt("비밀번호 입력 : ");
		deleteForm.memPass.value = password;
		deleteForm.requestSubmit();
	})
	
})

