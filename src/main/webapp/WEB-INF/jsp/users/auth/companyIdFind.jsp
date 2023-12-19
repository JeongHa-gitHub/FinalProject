<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="sri_section" class="">
	<div id="sri_wrap">
		<div id="content">
			<div class="wrap_content" role="main">
				<h1 class="blind">기업 회원 아이디 찾기 페이지입니다.</h1>
				<div class="login_page_wrap swIdFind">
					<form id="" name="login_frm" class="login_frm">
						<div class="login_input_wrap btn_tab ">
							<!-- text 알림 -->
							<ul class="tab_member_type" role="tablist">
								<li role="none"><button type="button" class="btn_tab t_com"  onclick="location.href='<%=request.getContextPath()%>/idFind/users/form'"
										role="tab" tabindex="-1" aria-selected="false">개인회원</button></li>
								<li role="none"><button type="button" class="btn_tab t_per active" role="tab" tabindex="0"
										aria-selected="true">기업회원</button></li>
							</ul>
							<div class="tab_panel" role="tabpanel" aria-label="개인회원">
								<div class="setting"></div>
								<div class="login-form">
									<div class="id-input-box">
										<input type="text" id="companyDNm" name="company.companyDnm"
											class="txt_tool" value="" required=""> <label
											id="id-label" class="id-label" for="id">이름</label>
									</div>
									<div class="pw-input-box">
										<input type="text" id="memMail" name="memMail"
											class="txt_tool" value="" maxlength="32" required="">
										<label id="password-label" for="password">이메일</label> <span
											id="idFindReult"></span>
									</div>
									<button type="submit" id="idFindBtn"
										class="btn-login BtnType SizeML">아이디찾기</button>
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
<script>
	$("#idFindBtn").on("click", function(event) {
		event.preventDefault();
		
		let name = $("#companyDNm").val();
		let email = $("#memMail").val();
		
		let member ={
				company : {
					companyDnm:name
				},
				memMail : email
		};
		
		$.ajax({
			type:"post",
			url:"<%=request.getContextPath()%>/idFind/company/data",
			dataType:"text",
			data:JSON.stringify(member),
			contentType:"application/json; charset=UTF-8",
			success:function(resp){
				console.log("서버에서 받은 값",resp);
				let ngmsg="●이름 또는 이메일을 잘못 입력했습니다."
				if(resp == "NG"){
					$("#idFindReult").html(ngmsg).css("color","red");
				}else{
					alert("아이디는"+resp+"입니다.")
				}
			},
			error:function(xhr){
				console.log()
			}
		});
		
		
		

	});
</script>