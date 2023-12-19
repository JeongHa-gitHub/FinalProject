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
     <h1 class="h3 mt-4 mb-4 text-gray-800">이벤트관리</h1>
     <!-- 검색 -->
	  <div class="searchArea mb-3">
	  	<div id="searchUI" class="search_right">
			<span class="inpSel">
			    <form:select path="simpleCondition.searchType" class="form-select" style="width:100px">
					<form:option label="전체" value="" />
					<form:option value="title" label="제목" />
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
<!--      <div class="tblTopBtn"> -->
<%--      	<a href="<%=request.getContextPath() %>/eventForm.do" class="btn btn-info btn-icon-split"> --%>
<!--         	 <span class="text">이벤트등록</span> -->
<!--      	</a> -->
<!--      </div> -->
     
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">이벤트목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>이벤트번호</th>
                             <th>제목</th>
                             <th>내용</th>
                             <th>등록일자</th>
                             <th>시작일자</th>
                             <th>만료일자</th>
                         </tr>
                     </thead>
                     <tbody>
                     	<c:set var="eventList" value="${paging.dataList }" />
						<c:if test="${empty eventList }">
							<tr>
								<td colspan="7">검색 조건에 맞는 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty eventList }">
							<c:forEach items="${eventList }" var="event">
								<tr>
									<td>${event.evntNo }</td>
									<td class="title">
										<a href="<%=request.getContextPath() %>/rollet.do">
											${event.evntTitle } 
										</a>
									</td>
									<td>${event.evntContent }</td>
									<td>${event.rgstDate }</td>
									<td>${event.startDate }</td>
									<td>${event.endDate }</td>
								</tr>
							</c:forEach>
						</c:if>
                     </tbody>
                      <tfoot class="tfPaging">
						<tr>
							<td colspan="7">${paging.pagingHTML }</td>
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
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">이벤트이미지보기</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body modalBody">
						<img class="bsnlImg" src="<%=request.getContextPath() %>/resources/images/사업자등록증.jpg" alt="bsnlImg">
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
</script>

	