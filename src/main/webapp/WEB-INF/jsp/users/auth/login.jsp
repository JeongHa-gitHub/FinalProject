<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<div id="sri_section" class="">
	<div id="sri_wrap">
		<div id="content">
			<div class="wrap_content" role="main">
				<h1 class="blind">회원로그인페이지입니다.</h1>
				<div class="login_page_wrap">
					<form id="login_frm" name="login_frm" class="login_frm"
						method="post" action="${pageContext.request.contextPath}/loginProcess">
						<div class="login_input_wrap swIdFind">
							<!-- text 알림 -->
							<ul class="tab_member_type" role="tablist">
								<li class="mr-0" role="none"><button type="button"
										class="btn_tab t_per active" role="tab" tabindex="0"
										aria-selected="true">로그인</button></li>
							</ul>
							<div class="tab_panel" role="tabpanel" aria-label="개인회원">
								<div class="setting"></div>
								<div class="login-form">
									<div class="id-input-box">
							<!-- 아이디 -->
										<input type="text" id="id" name="memId" class="txt_tool" value=""
											required=""> <label id="id-label" class="id-label"
											for="id">아이디</label>
									</div>
									<div class="pw-input-box">
							<!-- 비밀번호 -->	
										<input type="password" id="password" name="memPass"
											class="txt_tool" value="" maxlength="32" required="">
										<label id="password-label" for="password">비밀번호</label>
									</div>
									<button type="submit" class="btn-login BtnType SizeML">로그인</button>
								</div>
								<div class="signup-forgotten pl-3">
									<a id="a_join" href="<%=request.getContextPath()%>/userRegistration.do" class="sign_up">회원가입</a>
									<a id="a_join" href="<%=request.getContextPath()%>/idFind/users/form" class="sign_up">아이디 찾기</a>
									<a id="a_join" href="<%=request.getContextPath()%>/pwFind/Form" class="sign_up">비밀번호 찾기</a>
									<a id="a_join" href="<%=request.getContextPath()%>/loginForm" class="sign_up">로그인</a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>