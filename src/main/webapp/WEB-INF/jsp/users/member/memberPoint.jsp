<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/kjh/memberPoint.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>



<div class="scrapListWrap">
<input type="hidden" value="<%=(String)session.getAttribute("authId")%>" id="authId"/>

    <div class="test">
        <div id="sri_section">
<!-- 메뉴 리스트-->
           <div id="sri_gnb_wrap">
                <ul class="gnb">
                    <li class="only">
                        <a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_14"></use>
                            </svg>
                            <span class="txt"></span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/memberDashBoard.do" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_15"></use>
                            </svg>
                            <span class="txt">MY홈</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/info" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">개인정보관리</span>
                        </a>
                    </li>
                    <!--                     <li class=""> -->
                    <!--                         <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume', '')"> -->
                    <!--                             <svg> -->
                    <!--                                 <use xlink:href="#svg_my_17"></use> -->
                    <!--                             </svg> -->
                    <!--                             <span class="txt">이력서</span> -->
                    <!--                             <button type="button" class="btn_expand"><svg> -->
                    <!--                                     <use xlink:href="#svg_gnb_arrow"></use> -->
                    <!--                                 </svg><span class="blind">더보기</span></button> -->
                    <!--                         </a> -->
                    <!--                         <ul> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/member/resume-manage/write?template_cd=1" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_add', '')"> -->
                    <!--                                     <span class="txt">이력서 등록</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_manage', '')"> -->
                    <!--                                     <span class="txt">이력서 관리</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                         </ul> -->
                    <!--                     </li> -->
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/resume/new" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">이력서 등록</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/resumeList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">이력서 관리</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/scrapList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'scrap', '')">
                            <svg>
                                <use xlink:href="#svg_my_18"></use>
                            </svg>
                            <span class="txt">스크랩/관심기업</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/applyList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">입사지원현황</span>
                        </a>
                    </li>
                    <!--                     <li class=""> -->
                    <!--                         <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'interview_schedule', '')"> -->
                    <!--                             <svg> -->
                    <!--                                 <use xlink:href="#svg_my_21"></use> -->
                    <!--                             </svg> -->
                    <!--                             <span class="txt">면접현황</span> -->
                    <!--                             <button type="button" class="btn_expand"><svg> -->
                    <!--                                     <use xlink:href="#svg_gnb_arrow"></use> -->
                    <!--                                 </svg><span class="blind">더보기</span></button> -->
                    <!--                         </a> -->
                    <!--                         <ul> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/member/resume-manage/write?template_cd=1" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_add', '')"> -->
                    <!--                                     <span class="txt">면접일정</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_manage', '')"> -->
                    <!--                                     <span class="txt">면접후기</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                         </ul> -->
                    <!--                     </li> -->
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/interviewScheduleList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">면접일정</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/interviewReviewList"  onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'qna', '')">
                            <svg>
                                <use xlink:href="#svg_my_22"></use>
                            </svg>
                            <span class="txt">면접후기</span>
                        </a>
                    </li>
                    <li class="only selected">
                        <a href="<%=request.getContextPath() %>/myPage_PointCouponTicketView" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'point', '')">
                            <svg>
                                <use xlink:href="#svg_my_23"></use>
                            </svg>
                            <span class="txt">포인트/쿠폰/이용권</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 메뉴 리스트 끝 -->






<div class="mypage_pointView">
    <div id="content">
        <div class="wrapper_narrow support_announce">
            <h1 class="wrap_title">포인트 / 쿠폰 / 이용권</h1>
        
   
	<div class="mypage_pointView_content">
	<div id="sri_section" class="has_banner qnaListWrap">
        <div id="content">
            <div class="navigation_help_depth3">
                <ul>
                    <li><a class="myPage_selector selected" id="myPage_point_selectBtn"onclick="pointSelect_onclick()"><span>포인트</span></a></li>
                    <li><a class="myPage_selector" id="myPage_coupon_selectBtn" onclick="couponSelect_onclick()"><span>쿠폰</span></a></li>
                    <li><a class="myPage_selector" id="myPage_ticket_selectBtn" onclick="ticketSelect_onclick()"><span>이용권</span></a></li>
                </ul>
            </div>
            
            
			<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->
            
            <div class="mypage_pointView" id="mypage_point">
            <div class="mypage_pointView_div">
            <div class="mypage_pointView_holdpoint">
            	<h1 class="mypage_pointView_holdpoint_title">현재 보유 중인 포인트 :</h1>
            	<input type="text" class="mypage_pointView_holdpoint_content" id="holdpoint" value=""></input>
            	
           		<a class="mypage_pointView_holdpoint_button" href="<%=request.getContextPath() %>/pointPayView">포인트 충전</a>
            </div>
            </div>
            
            <h1 class="mypage_pointView_holdpoint_title">충전 / 사용 내역</h1>
            <div class="wrap_board">
				<div class="tblType">
					<table>
						<thead>
							<tr>
								<th style="width: 130px;">번호</th>
								<th style="width: 115px;">유형</th>
								<th>내용</th>
								<th style="width: 130px;">금액</th>
								<th style="width: 130px;">결제일자</th>
							</tr>
						</thead>
						<tbody id="mypage_pointView_tbody">
						</tbody>
					</table>
				</div>
			</div>
			</div>
			
			<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->
		
			<div class="mypage_pointView" id="mypage_coupon">
            <div class="mypage_pointView_div">
            <div class="mypage_pointView_holdpoint">
            	<h1 class="mypage_pointView_holdpoint_title">현재 보유 중인 쿠폰 :</h1>
            	<input type="text" class="mypage_pointView_holdpoint_content" id="holdcoupon" value=""></input>
            </div>
            </div>
            
            <h1 class="mypage_pointView_holdpoint_title">발급 / 사용 내역</h1>
            <div class="wrap_board">
				<div class="tblType">
					<table>
						<thead>
							<tr>
								<th style="width: 130px;">번호</th>
								<th style="width: 115px;">유형</th>
								<th>내용</th>
								<th style="width: 130px;">발급일자</th>
								<th style="width: 150px;">사용일자</th>
							</tr>
						</thead>
						<tbody id="mypage_couponView_tbody">
						</tbody>
					</table>
				</div>
			</div>
			</div>
			
          <!-- //////////////////////////////////////////////////////////////////////////////////////////// -->
			
		 <div class="mypage_pointView" id="mypage_ticket">
         <div class="mypage_pointView_div">
         <div class="mypage_pointView_holdpoint">
         	<h1 class="mypage_pointView_holdpoint_title">현재 유효한 이용권 :</h1>
         	<input type="text" class="mypage_pointView_holdpoint_content" id="holdticket" value=""></input>
         	<a class="mypage_pointView_holdpoint_button" href="<%=request.getContextPath() %>/periodTicketView">이용권 구매</a>
         </div>
         </div>
            
            <h1 class="mypage_pointView_holdpoint_title">구매 / 만료 내역</h1>
            <div class="wrap_board">
				<div class="tblType">
					<table>
						<thead>
							<tr>
								<th style="width: 130px;">번호</th>
								<th style="width: 115px;">유형</th>
								<th>내용</th>
								<th style="width: 130px;">구매일자</th>
								<th style="width: 150px;">만료일자</th>
							</tr>
						</thead>
						<tbody id="mypage_ticketView_tbody">
						</tbody>
					</table>
				</div>
			</div>
			</div>
			
			
        </div>
   	</div>
	</div>
       </div>
	</div>
 </div>     
      </div>
    </div>
</div>

          <!-- //////////////////////////////////////////////////////////////////////////////////////////// -->

<div id=myPointDetail-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 상세</h3>
				<div class="TicketPay-body" id="step-Ticketinfo-01">
				
				</div>
		</div>
	</div>
</div>





<div id=myCouponDetail-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">쿠폰 상세</h3>
				<div class="TicketPay-body" id="step-Ticketinfo-02">
				
				</div>
		</div>
	</div>
</div>


<div id=myTicketDetail-UModal class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<h3 class="ticketInfo">구매 상세</h3>
				<div class="TicketPay-body" id="step-Ticketinfo-03">
				
				</div>
		</div>
	</div>
</div>
	
	
	
 			
