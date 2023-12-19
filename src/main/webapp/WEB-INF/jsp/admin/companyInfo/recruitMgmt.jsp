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
     <h1 class="h3 mt-4 mb-4 text-gray-800">기업 - 채용공고</h1>
     <!-- 검색 -->    
     <div class="searchArea mb-3">
	  	<div id="searchUI" class="search_right">
			<span class="inpSel">
			    <form:select path="simpleCondition.searchType" class="form-select" style="width:120px">
					<form:option value="" label="전체" />
					<form:option value="title" label="제목" />
					<form:option value="companyId" label="기업아이디" />
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
             <h6 class="m-0 font-weight-bold text-primary">채용공고목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>공고번호</th>
                             <th>아이디</th>
                             <th>제목</th>
                             <th>직무</th>
                             <th>모집분야</th>
                             <th>등록일자</th>
                             <th>공고상세</th>
                         </tr>
                     </thead>
                     <tbody>
	                     <c:set var="recruitList" value="${paging.dataList }" />
							<c:if test="${empty recruitList }">
								<tr>
									<td colspan="8">검색 조건에 맞는 글이 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${not empty recruitList }">
								<c:forEach items="${recruitList }" var="recruit">
									<tr>
										<td>${recruit.rcrtNo }</td>
										<td>${recruit.companyId }</td>
										<td class="title">${recruit.rcrtTitle }</td>
										<td>${recruit.rcrtKeywordnm }</td>
										<td class="">${recruit.rcrtField }</td>
										<td>${recruit.rcrtDate }</td>
										<td class="textAlignCenter">
			                             	<a href="#" class="btn btn-primary btn-icon-split" data-bs-toggle="modal" data-bs-target="#mModal" onclick="detailRcrt_onClick('${recruit.rcrtNo }')">
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
						<h4 class="modal-title">공고상세보기</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body modalBody" id="rcrtTableDetail">	
					</div>
				</div>
			</div>
		</div>
<!--상세 Modal 끝 -->

<script>  
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
	
	function detailRcrt_onClick(rcrtNo){
		
		$.ajax({
			url: "<%=request.getContextPath()%>/recruitMgmt/recruitDetail/" + rcrtNo,
			type: "get",
			contentType: 'application/json',
			dataType: "json",
			success: function(data) {
				console.log(data.recruit);
				
				
				var recruitInfoHTML = `	
				<table class="table table-bordered" id="dataTable">
			    <tr>
			        <th>공고번호</th>
			        <td>`+ data.recruit.rcrtNo+`</td>
			    </tr>
			    <tr>
			        <th>아이디</th>
			        <td>`+ data.recruit.companyId+`</td>
			    </tr>
			    <tr>
			        <th>제목</th>
			        <td>`+ data.recruit.rcrtTitle+`</td>
			    </tr>
			    <tr>
			        <th>직무</th>
			        <td>`+ data.recruit.rcrtKeywordnm+`</td>
			    </tr>
			     <tr>
			        <th>모집분야</th>
			        <td>`+ data.recruit.rcrtField+`</td>
			    </tr>
			    <tr>
			        <th>모집인원</th>
			        <td>`+ data.recruit.rcrtPerson+`</td>
			    </tr>
			    <tr>
			        <th>경력</th>
			        <td>`+ data.recruit.rcrtCareer+`</td>
			    </tr>
			    <tr>
			        <th>필수우대조건</th>
			        <td>`+ data.recruit.rcrtCondition+`</td>
			    </tr>
			    <tr>
			        <th>지원자학력</th>
			        <td>`+ data.recruit.rcrtEdu+`</td>
			    </tr>
			    <tr>
			        <th>근무지역</th>
			        <td>`+ data.recruit.rcrtLoc+`</td>
			    </tr>
			    <tr>
			        <th>근무형태</th>
				        <td>`+ data.recruit.rcrtType+`</td>
				    </tr>
			    <tr>
			        <th>급여</th>
			        <td>`+ data.recruit.rcrtSalary+`</td>
			    </tr>
			    <tr>
			        <th>근무요일</th>
			        <td>`+ data.recruit.rcrtWeek+`</td>
			    </tr>
			    <tr>
				    <th>등록일자</th>
				    <td>`+ data.recruit.rcrtDate+`</td>
				</tr>
				<tr>
					<th>접수시작일</th>
					<td>`+ data.recruit.rcrtSdate+`</td>
				</tr>
				<tr>
					<th>접수마감일</th>
					<td>`+ data.recruit.rcrtEdate+`</td>
				</tr>
				<tr>
					<th>담당자명</th>
					<td>`+ data.recruit.rcrtNm+`</td>
				</tr>
				<tr>
					<th>담당자연락처</th>
					<td>`+ data.recruit.rcrtTel+`</td>
				</tr>
				<tr>
					<th>담당자이메일</th>
					<td>`+ data.recruit.rcrtMail+`</td>
				</tr>
				<tr>
					<th>복리후생</th>
					<td>`+ data.recruit.rcrtWlfr+`</td>
				</tr>
				<tr>
					<th>접수방법</th>
					<td>`+ data.recruit.rcrtRectype+`</td>
				</tr>
			</table>
			`;
				$('#rcrtTableDetail').html(recruitInfoHTML);
			},
			error: function(xhr, status, error) {
				// 에러 처리
				alert("데이터 가져오기 실패:", error);
				console.error("AJAX 오류 발생", xhr, status, error.responseText);
			}
		});
	}
</script>

 

	