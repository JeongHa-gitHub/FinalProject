<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

 <!-- Begin Page Content -->
 <div class="container-fluid">
     <!-- Page Heading -->
     <h1 class="h3 mt-4 mb-4 text-gray-800">면접후기관리</h1>
     <!-- 검색 -->
	  <div class="searchArea mb-3">
	  	<div id="searchUI" class="search_right">
			<span class="inpSel">
			    <form:select path="simpleCondition.searchType" class="form-select" style="width:120px">
			    	<form:option value="" label="전체" />
			    	<form:option value="intrevNo" label="면접후기번호" />
					<form:option value="intrNo" label="면접번호" />
				</form:select>                       
			</span>
            <div class="searchTypeCont">
				<form:input path="simpleCondition.searchWord" class="inpTypo form-control" style="width:276px;" placeholder="검색키워드" />
                 <a href="#" id="searchBtn" class="btn btn-secondary btn-icon-split ml-2"> 
 					<span class="text">검색</span> 
                 </a> 
			</div>
         </div>
     </div>
     <!-- 검색 끝 -->

     <!-- DataTales Example -->
     
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">면접후기목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
				 <!-- MEMBER테이블 -->
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>면접후기번호</th>
                             <th>면접번호</th>
                             <th>전반적평가</th>
                             <th>합격여부</th>
                             <th>작성날짜</th>
                             <th>승인여부</th>
                             <th>상세보기</th>
                         </tr>
                     </thead>
                     <tbody>
                     	<c:set var="intvwRev" value="${paging.dataList }" />
						<c:if test="${empty intvwRev }">
							<tr>
								<td colspan="7">검색 조건에 맞는 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty intvwRev }">
							<c:forEach items="${intvwRev }" var="intvwRev">
								<tr>
									<td>${intvwRev.intrevNo }</td>
									<td>${intvwRev.intrNo }</td>
									<td>${intvwRev.intervOvrlEvltn }</td>
									<td>${intvwRev.intervDifficulty }</td>
									<td>${intvwRev.intervWdate }</td>
									<td class="textAlignCenter">${intvwRev.intervApproval }</td>
									<td class="textAlignCenter">
                             	       <a href="#" onclick="detail_onClick('${intvwRev.intrevNo }')" class="btn btn-primary btn-icon-split" data-bs-toggle="modal" data-bs-target="#mModal" onclick="detailCmpy_onClick('${intvwRev.intrevNo }')">
		                                  <span class="text">상세보기</span>
		                               </a>
                                    </td>
								</tr>
							</c:forEach>
						</c:if>
                     </tbody>
                     <tfoot class="tfPaging">
						<tr>
							<td colspan="8">${paging.pagingHTML }</td>
						</tr>
					 </tfoot>
                 </table>
                 <form:form modelAttribute="simpleCondition" method="get" id="searchForm">
					<form:input type="hidden" path="searchType" readonly="readonly" placeholder="searchType" />
					<form:input type="hidden" path="searchWord" readonly="readonly" placeholder="searchWord" />
					<input type="hidden" name="page" readonly="readonly" placeholder="page" />
				 </form:form>
             </div>
         </div>
     </div>

 </div>
 
<!--상세 Modal 시작 -->
<div id="mModal" class="modal fade">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">면접후기상세보기</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

			<!-- Modal body -->
			<div class="modal-body modalBody">
				<form id="confirmStatusForm" class="" method="post">
					<div class="modal-body modalBody" id="dataTableDetail"></div>
	
					<!-- Modal footer -->
					<div class="modal-footer">
					<button type="button"  id="passStatusSaveBtn" class="btn btn-info btn-icon-split">
						<span class="text">승인여부저장</span>
					</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--상세 Modal 끝 -->

<script>

$(function(){
	
	$(document).on("change",".intervApproval",function(){
		let val = $(this).val();
		console.log("val : " + val);
		
		/*
		val : pass => 승인/지급완료
		val : fail => 반려/미지급
		val : unconfirmed => 미확인/대기
		*/
		
		let approval = "";
		let report = "";
		
		if(val=="pass"){
			approval = "승인";
			report = "지급완료";
		}else if(val=="fail"){
			approval = "반려";
			report = "미지급";
		}else{
			approval = "미확인";
			report = "대기";
		}
		
		$("#tdIntervApproval").html(approval);
		$("#tdIntervReport").html(report);
	});
	
	let cPath = this.body.dataset.contextPath;
    // 검색 버튼 함수
    function fn_paging(page) {
		searchForm.page.value = page;
		searchForm.requestSubmit();
	}
	$(searchUI).on("click", "#searchBtn", function(event) {
		let inputs = $(this).parents("#searchUI").find(":input[name]");
		$.each(inputs, function(idx, ipt) {
			let name = ipt.name;
			let value = $(ipt).val();
			$(searchForm).find(`:input[name=\${name}]`).val(value);
			$(searchForm).submit();
		});
	});

	
	// 상세보기 모달창 함수 
	detail_onClick = (intrevNo) =>{

		$.ajax({
			url: "<%=request.getContextPath()%>/intvwRevMgmt/interviewDetail/" + intrevNo,
			type: "get",
			contentType: 'application/json',
			dataType: "json",
			success: function(data) {
				console.log("data : ", data);
								
				/*
				intervApproval(승인여부) => Y/N/W
				intervReport(포인트지급여부) => Y/N
				
				승인여부 => 승인/반려/미확인
				포인트지급여부 => 지급완료/미지급
				*/
				
				let intervApproval = data.intrevInfo.intervApproval;
				let intervReport = data.intrevInfo.intervReport;
				
				let approval = "";
				let report = "";
				
				if(intervApproval=="Y"){
					approval = "승인";
				}else if(intervApproval=="N"){
					approval = "반려";
				}else{
					approval = "미확인";
				}
				
				if(intervReport=="Y"){
					report = "지급완료";
				}else{
					report = "대기";
				}

				var interviewInfoHTML = `	
					<table class="table table-bordered" id="dataTable">
					 <tr>
				        <th>면접자아이디</th>
				        <td id="tdUsersId">`+ data.intrevInfo.interviewSchdVO.apply.usersId+`</td>
				    </tr>
				    <tr>
				        <th>면접후기번호</th>
				        <td>`+ data.intrevInfo.intrevNo+`</td>
				    </tr>
				    <tr>
				        <th>면접번호</th>
				        <td>`+ data.intrevInfo.intrNo+`</td>
				    </tr>
				    <tr>
				        <th>전반적평가</th>
				        <td>`+ data.intrevInfo.intervOvrlEvltn+`</td>
				    </tr>
				    <tr>
				        <th>난이도</th>
				        <td>`+ data.intrevInfo.intervDifficulty+`</td>
				    </tr>
				     <tr>
				        <th>면접및전형유형</th>
				        <td>`+ data.intrevInfo.interviewTypical+`</td>
				    </tr>
				    <tr>
				        <th>면접인원</th>
				        <td>`+ data.intrevInfo.intervPersonnel+`</td>
				    </tr>
				    <tr>
				        <th>전형및면접진행방식</th>
				        <td>`+ data.intrevInfo.intervProcess+`</td>
				    </tr>
				    <tr>
				        <th>면접질문</th>
				        <td>`+ data.intrevInfo.intervQuestion+`</td>
				    </tr>
				    <tr>
				        <th>면접TIP및특이사항</th>
				        <td>`+ data.intrevInfo.intervTip+`</td>
				    </tr>
				    <tr>
				        <th>합격여부</th>
				        <td>`+ data.intrevInfo.intervPass+`</td>
				    </tr>
				    <tr>
			        	<th>승인여부</th>
				        <td id="tdIntervApproval">`+ approval+`</td>
				    </tr>
				    <tr>
				        <th>포인트지급여부</th>
				        <td id="tdIntervReport">`+ report+`</td>
				    </tr>
				  
				    
				</table>
				<span class="inpSel">
				<label>승인여부선택</label>
				<select class="intervApproval" name="intervApproval">
					<option value="unconfirmed">미확인</option>
					<option value="pass">승인</option>
					<option value="fail">반려</option>
				</select>                    
				</span>			
				<input type=hidden name=intrevNo value="\${intrevNo}" >
			`;
				$('#dataTableDetail').html(interviewInfoHTML);
			},
			error: function(xhr, status, error) {
				// 에러 처리
				alert("데이터 가져오기 실패:", error);
				console.error("AJAX 오류 발생", xhr, status, error.responseText);
			}
		});
	}
	
	/* 승인여부 저장 버튼 클릭 */
	$("#passStatusSaveBtn").on("click", function() {
		let interviewReviewVO = {
			intrevNo: confirmStatusForm.intrevNo.value,
			intervApproval:confirmStatusForm.intervApproval.value,
			usersId:$("#tdUsersId").text()
		}
		
		console.log("interviewReviewVO : " + JSON.stringify(interviewReviewVO));

		$.ajax({
			url: `\${cPath}/intvwRevMgmt/passStatus`,
			type: "post",
			contentType:"application/json; charset=utf-8", 
			data: JSON.stringify(interviewReviewVO),
			success: function(resp) {
				if (resp == "OK") {
					alert("수정 성공했습니다.")
					$("#mModal").modal("hide");
                    location.reload();
				} else {
					alert("수정 실패했습니다.")
				}

			},
			error: function(xhr) {
				console.log(xhr.status);
			}
		});
	});
	
	
});

/* 미승인에 빨간 글씨 */
$(document).ready(function() {
   
    $('#dataTable tbody tr').each(function() {
        var intervApproval = $(this).find('td:eq(5)').text(); 
        if (intervApproval.trim() === '미확인') {
            $(this).find('td:eq(5)').css('color', '#F44336;'); 
        }
    });
});
</script>



	