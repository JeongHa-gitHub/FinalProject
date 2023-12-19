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
     <h1 class="h3 mt-4 mb-4 text-gray-800">개인회원관리</h1>  
      <!-- 검색 -->
     <div class="searchArea mb-3"> 	
     	<div id="searchUI" class="search_right">
			<span class="inpSel">
			    <form:select path="simpleCondition.searchType" class="form-select" style="width:120px">
					<form:option value="memId" label="아이디" />
				</form:select>                        
			</span>
            <div class="searchTypoBox">
                 <form:input path="simpleCondition.searchWord" class="inpTypo" style="width:276px;" placeholder="검색키워드" />
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
             <h6 class="m-0 font-weight-bold text-primary">개인회원목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>회원아이디</th>                             
                             <th>휴대폰번호</th>
                             <th>이메일</th>
                             <th>주소</th>
                             <th>탈퇴여부</th>
                             <th>회원탈퇴</th>
                         </tr>
                     </thead>
                     <tbody>
						<c:set var="memberList" value="${paging.dataList }" />
						<c:if test="${empty memberList }">
							<tr>
								<td colspan="6">검색 조건에 맞는 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty memberList }">
							<c:forEach items="${memberList }" var="member">
								<tr>
									<td class="memId">${member.memId }</td>
									<td class="">${member.memTel }</td>
									<td class="">${member.memMail }</td>
									<td class="">${member.memAddr2 }</td>
									<td class="tdDlt">${member.memDelete }</td>
									<td class="textAlignCenter">
							          <c:choose>
							              <c:when test="${member.memDelete eq '탈퇴회원'}">
							                  <a href="#" class="btn btn-secondary btn-icon-split" disabled>
							                      <span class="text textWhite">회원탈퇴</span>
							                  </a>
							              </c:when>
							              <c:otherwise>
							                  <a href="#" class="btn btn-danger btn-icon-split" data-bs-toggle="modal" data-bs-target="#mModal">
							                      <span class="text textWhite" onclick="SY_save('${member.memId}')">회원탈퇴</span>
							                  </a>
							              </c:otherwise>
							          </c:choose>
							        </td>
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
 <!-- /.container-fluid -->
 
 <!--회원탈퇴 Modal 시작 -->

		<div id="mModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">회원탈퇴하기</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

			      <form  id="syDelForm" action='<c:url value="/memberMgmt/memberDelete" />' method="post">
						<!-- Modal body -->
						<div class="modal-body modalBody">
							<p>정말로 회원탈퇴 하시겠습니까?</p>
						</div>
						<input type="hidden" name="memId" value="">
						<!-- Modal footer -->
						<div class="modal-footer">
							 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          					 <button type="submit" class="btn btn-primary">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
<!--회원탈퇴 Modal 끝 -->
<script>
	//검색 버튼 함수
	function SY_save(memId){
		$("#syDelForm").find("input[name='memId']").val(memId);
	}

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



	