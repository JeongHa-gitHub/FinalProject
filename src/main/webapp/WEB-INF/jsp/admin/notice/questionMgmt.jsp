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
     <h1 class="h3 mt-4 mb-4 text-gray-800">1:1문의관리</h1>
     <!-- 검색 -->
     <div class="searchArea mb-3">
		<div id="searchUI" class="search_right">
			<span class="inpSel">
				<form:select path="simpleCondition.searchType" class="form-select" style="width:120px">
					<form:option label="전체" value="" />
					<form:option value="id" label="아이디" />
					<form:option value="content" label="내용" />
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
             <h6 class="m-0 font-weight-bold text-primary">1:1문의목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>문의번호</th>
                             <th>아이디</th>
                             <th>제목</th>
                             <th>내용</th>
                             <th>문의일자</th>
                             <th>답변여부</th>
                         </tr>
                     </thead>
                     <tbody>
                     	<c:set var="questionList" value="${paging.dataList }" />
						<c:if test="${empty questionList }">
							<tr>
								<td colspan="6">검색 조건에 맞는 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty questionList }">
							<c:forEach items="${questionList }" var="question">
								<tr>
									<td>${question.qstnNo }</td>
									<td class="id">${question.memId }</td>
									<td>
										<a href="<%=request.getContextPath() %>/member/qna/${question.qstnNo}">${question.qstnTitle }</a>
									</td>
									<td>${question.qstnContent }</td>
									<td class="">${question.qstnDate }</td>
									<td class="textAlignCenter">${question.qstnReply }</td>
								</tr>
							</c:forEach>
						</c:if>
                     </tbody>
                      <tfoot class="tfPaging">
						<tr>
							<td colspan="6">${paging.pagingHTML }</td>
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

<script>
//검색 버튼 함수
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
	
	/* 댑변대기중에 빨간 글씨 */
	   $(document).ready(function() {
	      
	       $('#dataTable tbody tr').each(function() {
	           var qstnReply = $(this).find('td:eq(5)').text(); 
	           if (qstnReply.trim() === '답변대기중') {
	               $(this).find('td:eq(5)').css('color', '#F44336'); 
	           }
	       });
	   });
</script>
 
 

	