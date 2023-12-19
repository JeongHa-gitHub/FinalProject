<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/kjh/Paymgmt.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>

<div class="container-fluid">
  <!-- Page Heading -->
    <h1 class="h3 mt-4 mb-4 text-gray-800">결제 관리</h1>
    <div class="payMnmt_SelectBtn">
        <button class="payMnmt_SelectBtn01" onclick="payMnmt_Select_periodTicket()">기간제 이용권</button>
        <button class="payMnmt_SelectBtn02" onclick="payMnmt_Select_imgAd()">이미지 광고</button>	
        <button class="payMnmt_SelectBtn03" onclick="payMnmt_Select_cmpAd()">기업 광고</button>
    </div>
    
    <div class="card shadow mb-4" id="payMnmt_pTicketList">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">기간제 이용권 결제 내역</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th>아이디</th>
                             <th>회원명</th>
                             <th>상품명</th>
                             <th>구매일자</th>
                         </tr>
                     </thead>
                     <tbody id="pTicketList_Body">
							<!-- 여기에 이미지 광고 신청 리스트 가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    
    
    
    <div class="card shadow mb-4" id="payMnmt_imgAdPayList" style="display:none">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">이미지 광고 결제 내역</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th>아이디</th>
                             <th>기업명</th>
                             <th>상품명</th>
                             <th>구매일자</th>
                         </tr>
                     </thead>
                     <tbody id="imgAdPayList_Body">
							<!-- 여기에 이미지 광고 신청 리스트 가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    
    
    <div class="card shadow mb-4" id="payMnmt_cmpAdPayList" style="display:none">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">기업 광고 결제 내역</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th>아이디</th>
                             <th>기업명</th>
                             <th>상품명</th>
                             <th>구매일자</th>
                         </tr>
                     </thead>
                     <tbody id="cmpAdPayList_Body">
							<!-- 여기에 이미지 광고 신청 리스트 가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    
 <!-- 이용권 결제 상세 Modal 시작 -->
<div id=TicketPay-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 내역</h3>
				<div class="TicketPay-body" id="step-Ticketinfo-01">
				
				</div>
		</div>
	</div>
</div>
 <!-- 이용권 결제 상세 Modal 끝 -->   
    
<!-- 이미지 결제 상세 Modal 시작 -->
<div id=imgAdPay-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 내역</h3>
				<div class="imgAdPay-body" id="step-Ticketinfo-02">
				
				</div>
		</div>
	</div>
</div>
 <!-- 이미지 결제 상세 Modal 끝 -->   
     
<!-- 기업 광고 결제 상세 Modal 시작 -->
<div id=cmpAdPay-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 내역</h3>
				<div class="cmpAdPay-body" id="step-Ticketinfo-03">
				
				</div>
		</div>
	</div>
</div>
 <!-- 이미지 결제 상세 Modal 끝 -->   
     
    

</div>