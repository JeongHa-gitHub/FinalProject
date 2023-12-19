<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/kjh/ImgAdvrtJudge.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>

<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mt-4 mb-4 text-gray-800">이미지 광고 심사</h1>
    <div class="judge_SelectBtn">
        <button class="judge_SelectBtn01" onclick="judge_Select_disagree()">반려</button>
        <button class="judge_SelectBtn02" onclick="judge_Select_hold()">대기</button>	
        <button class="judge_SelectBtn03" onclick="judge_Select_agree()">승인</button>
    </div>

    <div class="card shadow mb-4" id="Users_TicketList">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">광고 신청 대기 목록</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th>회사아이디</th>
                             <th>상품명</th>
                             <th>등록위치</th>
                             <th>시작일자</th>
                             <th>마감일자</th>
                         </tr>
                     </thead>
                     <tbody id="ImgAdFormList_ticketBody">
							<!-- 여기에 이미지 광고 신청 리스트 가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    
    
     <div class="card shadow mb-4" id="Users_disagree_TicketList" style="display:none">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">광고 신청 반려 목록</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th>회사아이디</th>
                             <th>상품명</th>
                             <th>등록위치</th>
                             <th>시작일자</th>
                             <th>마감일자</th>
                         </tr>
                     </thead>
                     <tbody id="ImgAdFormList_disagree_ticketBody">
							<!-- 여기에 이미지 광고 신청 리스트 가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    
         <div class="card shadow mb-4" id="Users_agree_TicketList" style="display:none">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">광고 신청 승인 목록</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="userDataTable"> 
                     <thead>
                         <tr class="textAlignCenter">
                             <th>회사아이디</th>
                             <th>상품명</th>
                             <th>등록위치</th>
                             <th>시작일자</th>
                             <th>마감일자</th>
                         </tr>
                     </thead>
                     <tbody id="ImgAdFormList_agree_ticketBody">
							<!-- 여기에 이미지 광고 신청 리스트 가 들어감 -->
                     </tbody>
                      <tfoot class="tfPaging">
					 </tfoot>
                </table>
            </div>
        </div>
    </div>
    
    
    
    
    
    
    
    
<!--이용권 상세 '대기' Modal 시작 -->
<div id="promotionMnmt-UModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">신청 양식</h3>
				<div class="ImgJudge-body" id="step-Ticketinfo-01">
				
				</div>
		</div>
	</div>
</div>
 <!--이용권 상세 '대기' Modal 끝 -->
 
 <!--이용권 상세 '반려' Modal 시작 -->
<div id="promotionMnmt-disagree-UModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">신청 양식</h3>
				<div class="ImgJudge-body" id="step-Ticketinfo-02">
				
				</div>
		</div>
	</div>
</div>
 <!--이용권 상세 '반려' Modal 끝 -->
 
 <!--이용권 상세 '승인' Modal 시작 -->
<div id="promotionMnmt-agree-UModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">신청 양식</h3>
				<div class="ImgJudge-body" id="step-Ticketinfo-03">
				
				</div>
		</div>
	</div>
</div>
 <!--이용권 상세 '반려' Modal 끝 -->