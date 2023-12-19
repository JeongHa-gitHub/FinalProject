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
     <h1 class="h3 mt-4 mb-4 text-gray-800">쿠폰관리</h1>

<!--      <div class="tblTopBtn"> -->
<%--      	<a href="<%=request.getContextPath() %>/couponForm.do" class="btn btn-info btn-icon-split"> --%>
<!--         	 <span class="text">쿠폰등록</span> -->
<!--      	</a> -->
<!--      </div> -->

     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">쿠폰목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable">
                     <thead>
                         <tr class="textAlignCenter">
                             <th>쿠폰번호</th>
                             <th>쿠폰명</th>
                             <th>쿠폰내용</th>
                             <th>쿠폰이미지</th>
                             <th>쿠폰금액</th>
                             <th>등록일자</th>
                             <th>시작일자</th>
                             <th>만료일자</th>
                         </tr>
                     </thead>
                     <tbody>
                     	<c:set var="couponList" value="${paging.dataList }" />
						<c:if test="${empty couponList }">
							<tr>
								<td colspan="8">검색 조건에 맞는 글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty couponList }">
							<c:forEach items="${couponList }" var="coupon">
								<tr>
									<td>${coupon.cpnNo }</td>
									<td class="title">
										<a href="#">
											${coupon.cpnName } 
										</a>
									</td>
									<td>${coupon.cpnContent }</td>
									<td>
										<img class="tblCupnImg" src="<%=request.getContextPath() %>/resources/upload/coupon/${coupon.cpnImg2 }" alt="coupon">
										
									</td>
									<td>${coupon.cpnPrice }</td>
									<td>${coupon.rgstDate }</td>
									<td>${coupon.startDate }</td>
									<td>${coupon.endDate }</td>
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
						<h4 class="modal-title">쿠폰이미지보기</h4>
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


 

	