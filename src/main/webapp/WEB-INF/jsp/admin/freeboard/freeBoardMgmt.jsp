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
     <h1 class="h3 mt-4 mb-4 text-gray-800">자유게시판관리</h1>
     <!-- 검색 -->
     <div class="searchArea mb-3">
        <div id="searchUI" class="search_right">
         <span class="inpSel">
             <select name="searchType" class="form-select" style="width:120px">
             	<option value="" label="전체" />
                <option value="usersId" label="아이디" />
                <option value="frbTitle" label="제목" />
            </select>                       
         </span>
            <div class="searchTypeCont">
            <input type="text" name="searchWord" class="inpTypo form-control" style="width:276px;" placeholder="검색키워드" />
                 <a href="#" id="searchBtn" class="btn btn-secondary btn-icon-split ml-2"> 
                <span class="text">검색</span> 
                 </a> 
         </div>
         </div>
     </div>
     <!-- 검색 끝 -->

     
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">자유게시판목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
            
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>글번호</th>
                             <th>작성자아이디</th>
                             <th class="fbdTble">제목</th>
                             <th>신고여부</th>
                             <th>삭제여부</th>
                             <th>글삭제</th>
                         </tr>
                     </thead>
                     <tbody>
                        <c:set var="freeBoard" value="${paging.dataList }" />
                  <c:if test="${empty freeBoard }">
                     <tr>
                        <td colspan="6">검색 조건에 맞는 글이 없습니다.</td>
                     </tr>
                  </c:if>
                  <c:if test="${not empty freeBoard }">
                     <c:forEach items="${freeBoard }" var="freeBoard">
                        <tr>
                           <td>${freeBoard.frbNo }</td>
                           <td>${freeBoard.usersId }</td>
                           <td><a href="/FinalProject/frBoardList/detail?frbNo=${freeBoard.frbNo}">${freeBoard.frbTitle }</a></td>
                           <td class="tdDlt">${freeBoard.frbRep }</td>                        
                           <td class="tdDlt">${freeBoard.frbDelete }</td>                        
                           <td class="textAlignCenter">
                           		<c:choose>
					              <c:when test="${freeBoard.frbDelete eq '삭제완료'}">
					                  <a href="#" class="btn btn-secondary btn-icon-split" disabled>
					                      <span class="text textWhite">글삭제</span>
					                  </a>
					              </c:when>
					              <c:otherwise>
					                  <a href="#" class="btn btn-danger btn-icon-split" data-bs-toggle="modal" data-bs-target="#mModal">
					                      <span class="text textWhite" onclick="SY_save('${freeBoard.frbNo}')">글삭제</span>
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
                 
                 
                 <form method="get" id="searchForm">
               <input type="text" name="searchType" readonly="readonly" placeholder="searchType" hidden />
               <input type="text" name="searchWord" readonly="readonly" placeholder="searchWord" hidden />
               <input type="text" name="page" readonly="readonly" placeholder="page" hidden />
             </form>
             </div>
         </div>
     </div>
 </div>


<!--글삭제 Modal 시작 -->
<div id="mModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">삭제하기</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

	      <form  id="syDelForm" action='<c:url value="/freeBoardMgmt/boardDelete" />' method="post">
				<!-- Modal body -->
				<div class="modal-body modalBody">
					<p>정말로 글을 삭제하시겠습니까?</p>
				</div>
				<input type="hidden" name="frbNo" value="">
				<!-- Modal footer -->
				<div class="modal-footer">
					 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        					 <button type="submit" class="btn btn-primary">확인</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!--글삭제 Modal 끝 -->
<script>
	/* 글삭제 */
	function SY_save(frbNo){
		$("#syDelForm").find("input[name='frbNo']").val(frbNo);
	}
	
	/* 신고에 빨간 글씨 */
   $(document).ready(function() {
      
       $('#dataTable tbody tr').each(function() {
           var frbRep = $(this).find('td:eq(3)').text(); 
           if (frbRep.trim() === 'Y') {
               $(this).find('td:eq(3)').css('color', '#F44336;'); 
           }
       });
   });

   /* 페이징 */
   fn_paging = (currentPage) => {
      $('#searchForm').find('input[name=page]').val(currentPage);
      $('#searchForm').submit();
      $('#searchForm').find('input[name=page]').val("");
   }
   
   
   /* 검색버튼 클릭 이벤트 */
   $('#searchBtn').on("click",function(){
      inputs = $(this).parents("#searchUI").find(":input[name]");
      $.each(inputs, function(i, v){
         let name = v.name;
         let value = v.value;
         $(searchForm).find(`:input[name='\${name}']`).val(value);
      })
      $(searchForm).submit();
   })
   
</script>