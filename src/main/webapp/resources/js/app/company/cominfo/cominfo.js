/**
 * 
 */

$(function() {

	const cPath = this.body.dataset.contextPath;
	//전체 목록
	$(document).ready(function() {
		$.getJSON(`${cPath}/users/companyListData`, function(resp) {
			console.log("resp : ", resp);
			let companyList = resp.paging.dataList;
			let trTags = "";
			if (companyList.length > 0) {
				$.each(companyList, function(i, v) {
					trTags += makeTrTag(v);
				});
				$('#pagingArea').html(resp.paging.pagingHTML);
			} else {
				trTags += `
					<tr>
						<td colspan="5" style="text-align : center;">등록된 기업정보가 없습니다.</td>
					</tr>
				`;
				$('#pagingArea').empty();
			}
			$(".listBody").html(trTags);
			recordResult = `<em>${resp.paging.totalRecord}</em>건`;
			$("#total_count").html(recordResult);
			
			//H02, H03 : H03이 기업회원인데 해당 하는 회원만 기업등록하기 버튼이 나옴
			let memDivision = resp.member.memDivision;
			if(memDivision=="H03"){//H03
				$("#btnDivision").css("display","block");
			}else{//H02..
				$("#btnDivision").css("display","none");
			}
		});
		return false;
	});

	//검색
	$(searchUI).on("click", "#searchBtn", function(event) {		
	
			let name = $("#selSearchType").val();
			let value = $("#inputSearchWord").val();
			
			//name : company, value : 비알팜
			console.log("name : " + name + ", value : " + value);
			
			$("#searchType").val(name);
			$("#searchWord").val(value);
			$("#page").val("1");
								
			$.getJSON(`${cPath}/users/companyListData?searchType=`+name+`&searchWord=`+value+`&page=1`, function(resp) {
			console.log(resp)
			let companyList = resp.paging.dataList;
			let trTags = "";
			if (companyList.length > 0) {
				$.each(companyList, function(i, v) {
					trTags += makeTrTag(v);
				});
				$('#pagingArea').html(resp.paging.pagingHTML);
			} else {
				trTags += `
					<tr>
						<td colspan="5" style="text-align : center;">등록된 기업정보가 없습니다.</td>
					</tr>
				`;
				$('#pagingArea').empty();
			}
			$(".listBody").html(trTags);
			recordResult = `<em>${resp.paging.totalRecord}</em>건`;
			$("#total_count").html(recordResult);
		});		
	});
	
	//엔터키
	$("#inputSearchWord").keypress(function(e) {
		//검색어 입력 후 엔터키 입력하면 조회버튼 클릭
		if(e.keyCode && e.keyCode == 13){
			$("#searchBtn").trigger("click");
			return false;
		}
		//엔터키 막기
		if(e.keyCode && e.keyCode == 13){
			  e.preventDefault();	
		}
	});

});

/*const cPath = this.body.dataset.contextPath;*/
//페이징 처리
var cPath = this.location.href.substring(0, 29);
function fn_paging(page) {
	console.log("page : " + page);
	/*searchForm.page.value = page;
	searchForm.requestSubmit();
	searchForm.page.value = "";*/
	$.getJSON(cPath + `/users/companyListData?page=`+page, function(resp) {
		console.log(resp)
		let companyList = resp.paging.dataList;
		let trTags = "";
		if (companyList.length > 0) {
			$.each(companyList, function(i, v) {
				trTags += makeTrTag(v);
			});
			$('#pagingArea').html(resp.paging.pagingHTML);
		} else {
			trTags += `
				<tr>
					<td colspan="5" style="text-align : center;">등록된 기업정보가 없습니다.</td>
				</tr>
			`;
			$('#pagingArea').empty();
		}
		$(".listBody").html(trTags);
		recordResult = `<em>${resp.paging.totalRecord}</em>건`;
		$("#total_count").html(recordResult);
	});
}

//리스트 바디
function makeTrTag(cominfo) {
		/*추후 회사 로고 이미지 및 채용 중인 공고 count해서 넣어야함. - 20231113(이기웅)*/
		let companyDetailURL = `${cPath}/users/companyDetail/${cominfo.companyId}`;
		let trTag = ` <div id="default_list_wrap" style="position: relative">
			<section class="list_recruiting">
				<div class="list_body">
					<div id="list_item" class="list_item listItemStyle">
						<div class="box_item">
							<div class="col company_nm cmpyNmStyle">
								<img id="${cominfo.cominfoFile}" alt="${cominfo.cominfoFile}"
									src="${cPath}/resources/upload/cominfo/${cominfo.cominfoFile}"
									 height="54">
							</div>
							<div class="col notification_info pt-3">
								<div class="job_tit">
									<a class="str_tit " id="${cominfo.companyId}"
										onclick="s_trackApply(this, 'area_recruit', 'general');"
										title="${cominfo.companyNm}" 
										href="${companyDetailURL}" target="_blank"
										onmousedown=""><span>${cominfo.companyNm}</span></a>
								</div>
								<div class="job_meta">
									<span class="job_sector"> <span>채용중인 공고 ${cominfo.rcrtNo} 건</span>
									</span>
								</div>
								
							</div>
							<div class="col recruit_info">
								<ul>
									<li class="mt-2">
										<p class="career">${cominfo.industryNm}</p>
									</li>
								</ul>
							</div>
							<div class="col recruit_info">
								<ul>
									<li>
										<i class="fa-regular fa-eye"><em class="pl-1">${cominfo.cominfoHit}</em></i>
									</li>
								</ul>
							</div>							
						</div>					
					</div>
				</div>
			</section>
		</div>
			`
			;
		return trTag;
	};




