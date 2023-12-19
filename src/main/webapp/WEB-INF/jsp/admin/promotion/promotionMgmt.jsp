<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/kjh/PromotionMgmt.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>


 <div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mt-4 mb-4 text-gray-800">프로모션 관리</h1>
    <div class="actor_SelectBtn">
        <button class="actor_SelectBtn01" onclick="actor_Select_Users()">사용자</button>
        <button class="actor_SelectBtn02" onclick="actor_Select_Cmp()">기업</button>
    </div>

    <div class="card shadow mb-4" id="Users_TicketList">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">사용자 프로모션 목록</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th class="promotionMnmt_RowNum">No.</th>
                             <th>상품명</th>
                             <th>기간</th>
                             <th>가격</th>
                         </tr>
                     </thead>
                     <tbody id="ticketBody">
							<!-- 여기에 광고 리스트가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    <div class="promotionMnmt_user" id="actor_Users_InsertBtn">
        <button class="promotionMnmt_InsertPM" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Insert" onclick="actor_Users_InsertBtn_onclick()">상품 등록</button>
    </div>








    <div class="card shadow mb-4" id="Company_adList" style="display:none">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">기업 프로모션 목록</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="companyDataTable">
                    <thead>
                         <tr class="textAlignCenter">
                             <th class="promotionMnmt_RowNum">No.</th>
                             <th>종류</th>
                             <th>상품명</th>
                             <th>기간</th>
                             <th>가격</th>
                         </tr>
                     </thead>
                     <tbody id="adBody">
							<!-- 여기에 광고 리스트가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    <div class="promotionMnmt_company" id="actor_Company_InsertBtn" style="display:none !important">
        <button class="promotionMnmt_InsertPM_company" data-bs-toggle="modal" data-bs-target="#promotionMnmt-UModal-Insert" onclick="actor_Company_InsertBtn_onclick()">상품 등록</button>
    </div>
</div>
 

 
 
<!--이용권 상세 Modal 시작 -->
<div id="promotionMnmt-UModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">상품 설명</h3>
			<div class="PeriodTicketPayment-body" id="step-Ticketinfo-01">
				
			</div>
		</div>
	</div>
</div>
 <!--이용권 상세 Modal 끝 -->
 
 <!--이용권 상세 Modal 시작 -->
<div id="promotionMnmt-UModal-Update" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">상품 수정</h3>
			<div class="PeriodTicketPayment-body" id="step-Ticketinfo-02">
				
			</div>
		</div>
	</div>
</div>
 <!--이용권 상세 Modal 끝 -->
 
  <!--이용권 등록 Modal 시작 -->
<div id="promotionMnmt-UModal-Insert" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">상품 등록</h3>
			<div class="PeriodTicketPayment-body" id="step-Ticketinfo-03">
				
			</div>
		</div>
	</div>
</div>
 <!--이용권 등록 Modal 끝 -->