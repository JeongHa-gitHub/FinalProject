<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
	
<link href="<%=request.getContextPath()%>/resources/css/member_join.css" rel="stylesheet">  
<link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet">  
<link href="<%=request.getContextPath()%>/resources/css/custom/ssy.css" rel="stylesheet">  


<header id="sri_header" class="join_header">
    <div class="area_logo">
        <a href="<%=request.getContextPath()%>/" class="bi" aria-label="내일을잡자" data-nav-track="ga_lead|main-gnb|global_menu|ci"> 
			<span class="frame"> 
				<img class="mainLogo" src="<%=request.getContextPath() %>/resources/images/mainLogo.png" alt="Logo" style="width: 4.5rem;">
			</span>
			<span class="joinText">회원가입</span>
		</a>
    </div>
	
	<div class="area_util">
	    <ul class="util">
	        <li class="util_item">
	            <a href="<%=request.getContextPath()%>/" class="util_menu menu_saramin">내일을잡자 홈</a>
	        </li>
	    </ul>
	</div>
</header>

<div id="sri_section">
    <div id="sri_wrap"> 
		<div id="content" class="join_cont_wrap">
			<div class="join_page_wrap">
			    <div class="join_content join_input_wrap">
			        <div class="join_box login_input_wrap">
			            <ul class="tab_member_type" role="tablist">
			                <li role="none"><button type="button" class="btn_tab t_per " role="tab" onclick="location.href='<%=request.getContextPath()%>/userRegistration.do'">개인회원</button></li>
			                <li role="none">
			                    <button type="button" class="btn_tab t_com active" role="tab" onclick="location.href='/zf_user/member/registration/join?ut=c'">기업회원
			                    </button>
			                </li>
			            </ul>
			
			            <!-- join box -->
			            
			
			            <div class="join_form">
			                <button type="button" class="BtnType SizeL login_btn ga_data_layer rgtrtBtn" onclick="location.href='<%=request.getContextPath()%>/company'">
			                	아이디 만들기
			                </button>
			                <div class="login_bottom">
			                    <p>이미 계정이 있나요?<a href="<%=request.getContextPath()%>/login.do">로그인</a></p>
			                </div>
			            </div>
			        </div>
			    </div> 
		
				<div class="join_content join_banner_wrap">
			        <div class="intro swiper swiper-container-horizontal">
			            <div class="" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
			                
			                
			                
			                <div class="section info03 swiper-slide-active" style="">
			                    <div class="intro_txt">
			                        <p class="tit">
			                            내게 딱 맞는 <br><span>채용 공고</span> 등록하세요!
			                        </p>
			                        <p class="txt">
			                            채용공고 등록하면,<br>조건이 맞는 인재를 찾을 수 있습니다.
			                        </p>
			                    </div>
			                </div>
			            </div>
			            
			            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
			        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
			    </div>
		
		
		
			</div>	
		</div>
    </div>
</div>