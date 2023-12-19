<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="sri_section" class="">
	<div id="sri_wrap">
		<div id="content">
			<div class="wrap_content" role="main">
				<h1 class="blind">비밀번호찾기페이지입니다.</h1>
				<div class="login_page_wrap ">
					<form id="login_frm" name="login_frm" class="login_frm"
						method="post" action="<%=request.getContextPath()%>/pwFind/pwData">
						<div class="login_input_wrap swIdFind">
							<!-- text 알림 -->
							<ul class="tab_member_type" role="tablist" style="margin-left: 15%;">
								<li role="none"><button type="button"
										class="btn_tab t_per active" role="tab" tabindex="0"
										aria-selected="true">비밀번호 찾기</button></li>
								<li role="none"><button type="button" class="btn_tab t_com"
										role="tab" tabindex="-1" aria-selected="false"></button></li>
							</ul>
							<div class="tab_panel" role="tabpanel" aria-label="">
								<div class="setting"></div>
								<div class="login-form">
									<div class="pw-input-box">
										<input type="text" id="id" name="memId" class="txt_tool"
											 maxlength="32" required=""> <label
											>아이디</label>
									</div>
									<div class="pw-input-box">
										<input type="text" id="email" name="memMail"
											class="txt_tool" maxlength="32" required="">
										<label >이메일</label>
										<span id="pwFindReult"></span>
									</div>
									<button type="button" id="pwFindBtn" class="btn-login BtnType SizeML">비밀번호찾기</button>
								</div>
								<div class="signup-forgotten">
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
<script type="text/javascript">
$("#pwFindBtn").on("click",function(){
	event.preventDefault();
	
	let id = $("#id").val();
    let email = $("#email").val();
    console.log("아이디:",id)
    console.log("이메일:",email)
    
	let memberVO = {
			id : id,
			email : email
			
	};
	
	$.ajax({
		type:"post",
		url:"<%=request.getContextPath()%>/pwFind/pwData",
		data: memberVO,
		dataType:"text",
		success:function(resp){
			console.log("서버에서 받은값:",resp)
			let okmsg = "● 전송성공!! 이메일을 확인해주세요!";
			let ngmsg ="● 전송실패!! 아이디 또는 이메일을 잘못 입력했습니다."
			if(resp == "OK"){
				$("#pwFindReult").html(okmsg).css("color","green");
			}else{
				$("#pwFindReult").html(ngmsg).css("color","red");
			}
		},
		error:function(xhr){
			console.log(xhr.status)
		}
		
		
		
	}); //ajax
	
}); // click
</script>