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
     <h1 class="h3 mt-4 mb-4 text-gray-800">기업 - 사업자등록번호</h1>
     <!-- 검색 -->
	  <div class="searchArea mb-3">
	  	<div id="searchUI" class="search_right">
			<span class="inpSel">
			    <form:select path="simpleCondition.searchType" class="form-select" style="width:120px">
					<form:option value="" label="전체" />
					<form:option value="companyId" label="기업아이디" />
					<form:option value="companyNm" label="기업명" />
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
     
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">사업자등록목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
			
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>기업아이디</th>
                             <th>사업자등록번호</th>
                             <th>사업자등록증명원</th>
                             <th>담당자명</th>
                             <th>기업명</th>
                             <th>개업일</th>
                             <th>승인여부</th>
                         </tr>
                     </thead>
                     <tbody>
                     	<c:set var="company" value="${paging.dataList }" />
						<c:if test="${empty company }">
							<tr>
								<td colspan="8">검색 조건에 맞는 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty company }">
							<c:forEach items="${company }" var="company">
								<tr>
									<td>${company.companyId }</td>
									<td>${company.companyNum }</td>
									<td class="textAlignCenter">
                             	       <a href="#" onclick="detail_onClick('${company.companyId }')" class="btn btn-primary btn-icon-split" data-bs-toggle="modal" data-bs-target="#mModal">
		                                  <span class="text">상세보기</span>
		                               </a>
                                    </td>
									<td>${company.companyDnm }</td>
									<td>${company.companyNm }</td>
									<td>${company.companyDate }</td>
									<td class="textAlignCenter">${company.companyPermission }</td>
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

<!--파일 상세 Modal 시작 -->
<div id="mModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">사업자등록증명원상세보기</h4>
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
<!--파일 상세 Modal 끝 -->






<script>
function fn_paging(page) {
	searchForm.page.value = page;
	searchForm.requestSubmit();
}

$(function(){
	let cPath = this.body.dataset.contextPath;
    // 검색 버튼 함수
	$(searchUI).on("click", "#searchBtn", function(event) {
		let inputs = $(this).parents("#searchUI").find(":input[name]");
		$.each(inputs, function(idx, ipt) {
			let name = ipt.name;
			let value = $(ipt).val();
			$(searchForm).find(`:input[name=\${name}]`).val(value);
			$(searchForm).submit();
		});
	});
	
	// 사업자등록번호 상세보기 모달창 함수 
	detail_onClick = (companyId) =>{

		$.ajax({
			url: "<%=request.getContextPath()%>/bsnsLcnsNmbr/bsnsDetail/" + companyId,
			type: "get",
			contentType: 'application/json',
			dataType: "json",
			success: function(data) {
				console.log(data.bsnsInfo.companyFile);
				
				
				var companyInfoHTML = `	
					<h5>사업자등록번호 : `+ data.bsnsInfo.companyNum+`</h5>
					<img class="bsnlImg" src=<%=request.getContextPath() %>/resources/upload/company/`+data.bsnsInfo.companyFile+` alt="bsnlImg">
					<span class="inpSel">
					<label>승인여부선택</label>
					<select class="companyPermission" name="companyPermission">
						<option value="unconfirmed">미확인</option>
						<option value="pass">승인</option>
						<option value="fail">반려</option>
					</select>                    
					</span>			
					<input type=hidden name=companyId value="\${companyId}" >

			`;
				$('#dataTableDetail').html(companyInfoHTML);
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
		let companyVO = {
			companyId: confirmStatusForm.companyId.value,
			companyPermission:confirmStatusForm.companyPermission.value
		}

		$.ajax({
			url: `\${cPath}/bsnsLcnsNmbr/passStatus`,
			type: "post",
			contentType:"application/json; charset=utf-8", 
			data: JSON.stringify(companyVO),
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
	})
})

/* 신고에 빨간 글씨 */
  $(document).ready(function() {
     
      $('#dataTable tbody tr').each(function() {
          var companyPermission = $(this).find('td:eq(6)').text(); 
          if (companyPermission.trim() === '미확인') {
              $(this).find('td:eq(6)').css('color', '#F44336;'); 
          }
      });
  });


</script>


	