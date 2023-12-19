<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap w-100 p-0">
	<header id="sri_header" class="main bubble mainHeaderWrap">
		<div class="wrap_header">
			<!--  헤더 로고 -->
			<h1>
				<a href="<%=request.getContextPath()%>/" class="bi" aria-label="내일을잡자" data-nav-track="ga_lead|main-gnb|global_menu|ci"> 
					<span class="frame"> 
						<img class="mainLogo" src="<%=request.getContextPath() %>/resources/images/mainLogo.png" alt="Logo">
					</span>
				</a>
			</h1>
			<div class="search"></div>
			<div class="utility">
				<c:set value="<%= session.getAttribute(\"authId\")%>" var="user"/>
				<c:choose>
					<c:when test="${not empty user}">
						<!-- 로그인 했을 때 시작 -->
						<div class="loginType">
							<!-- 개인정보 -->
	                        <div class="wrap_member nav-item dropdown no-arrow">
	                            <a class="btn_member nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
	                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

									<span class="user_photo"><i class="fa-regular fa-user"></i></span>
	                                <span class="user_name">
										<% String nm = (String) session.getAttribute("authNm");%> <p><%= nm %> 님</p>
									</span>
	                            </a>
	                            <!-- Dropdown - User Information -->
	                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
	                                aria-labelledby="userDropdown">
	                                
	                               <div class="">
										<ul class="links">
											<li>
												<a href="<%=request.getContextPath() %>/memberDashBoard.do"><i class="fa-solid fa-house-user fa-sm fa-fw mr-2 text-gray-400"></i> MY 홈 &nbsp;  &nbsp;</a>
											</li>
										
										</ul>	
									</div>
									<div class="dropdown-divider"></div>
	                                <a class="dropdown-item textAlignCenter"  onclick="submitForm();" href="javascript:;">
	                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    로그아웃
	                                </a>
	                            </div>
	                        </div>
						</div>					
						<!-- 로그인 했을 때 끝 -->
				 	</c:when>
					<c:otherwise>
					<!-- 로그인 안했을 때 시작 -->
						<div class="sign notLoginType">
							<a href="<%=request.getContextPath()%>/login.do" data-nav-track="ga_lead|main-gnb|layer_sign|signin" class="btn_sign signin">로그인</a>
							<hr>
							<a href="<%=request.getContextPath()%>/userRegistration.do" data-nav-track="ga_lead|main-gnb|layer_sign|join" class="btn_sign signup">회원가입</a>
						</div>
					<!-- 로그인 안했을 때 끝 -->
					</c:otherwise>			
			</c:choose>

			<!-- 네비게이션 -->
			</div>
			<div class="navigation">
				<div class="wrap_gnb">
					<div class="major recruit">
						<a class="depth1" href="<%=request.getContextPath()%>/recruit/region"
							data-nav-track="ga_lead|main-gnb|recruit|recruit"> 
							<span class="txt">채용정보</span>
						</a>
						<ul class="depth2">
							<li>
								<a  href="<%=request.getContextPath()%>/recruit/region" data-nav-track="ga_lead|main-gnb|recruit|area"> 
									<span class="txt">지역별</span>
								</a></li>
							<li>
								<a href="<%=request.getContextPath()%>/recruit/job" data-nav-track="ga_lead|main-gnb|recruit|job"> 
									<span class="txt">직업별</span>
								</a>
							</li>
							<li>
								<a href="<%=request.getContextPath()%>/recruit/Top100" data-nav-track="ga_lead|main-gnb|recruit|hot100"> 
									<span class="txt">TOP100</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="major">
						<a class="depth1" href="<%=request.getContextPath()%>/users/companyList" data-nav-track="ga_lead|main-gnb|recruit|public"> 
							<span class="txt">기업정보</span>
						</a>
					</div>
					<div class="major">
						<a class="depth1" href="<%=request.getContextPath()%>/pointPayView" data-nav-track="ga_lead|main-gnb|company_info|company_info">
							<span class="txt">프로모션</span>
						</a>
						<ul class="depth2">
							<li>
								<a href="<%=request.getContextPath()%>/pointPayView" data-nav-track="ga_lead|main-gnb|company_info|review"> 
									<span class="txt">포인트충전</span>
								</a>
							</li>
							<li>
								<a href="<%=request.getContextPath()%>/periodTicketView" data-nav-track="ga_lead|main-gnb|company_info|salary"> 
									<span class="txt">기간제이용권</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="major">
						<a class="depth1" href="<%=request.getContextPath() %>/frBoardList" data-nav-track="ga_lead|main-gnb|contents|contents"> 
							<span class="txt">커뮤니티</span>
						</a>
						<ul class="depth2">
							<li>
								<a href="<%=request.getContextPath() %>/frBoardList" data-nav-track="ga_lead|main-gnb|contents|home"> 
									<span class="txt">자유게시판</span>
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/chat/chatRegion" target="_blank" data-nav-track="ga_lead|main-gnb|contents|mentoring"> 
									<span class="txt">채팅</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="major">
						<a class="depth1" href="<%=request.getContextPath() %>/member/noticeList" data-nav-track="ga_lead|main-gnb|qst-and-ans|qst-and-ans"> 
							<span class="txt">고객센터</span>
						</a>
						<ul class="depth2">
							<li>
								<a href="<%=request.getContextPath() %>/member/noticeList" data-nav-track="ga_lead|main-gnb|qst-and-ans|qst_home"> 
									<span class="txt">공지</span>
								</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/member/qnaList" data-nav-track="ga_lead|main-gnb|qst-and-ans|qst_careerinfo">
									<span class="txt">1:1문의</span>
								</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/eventIng.do" data-nav-track="ga_lead|main-gnb|qst-and-ans|qst_careerinfo">
									<span class="txt">이벤트</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
</nav>

<script>
//로그아웃
function submitForm() {
    var form = $('<form>', {
        'method': 'post',
        'action': '<%=request.getContextPath()%>/logoutProcess'
    });
    
    $('body').append(form);
    
    form.submit();
}
</script>

