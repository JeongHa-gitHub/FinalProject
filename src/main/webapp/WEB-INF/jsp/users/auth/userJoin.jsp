<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<c:if test="${not empty message }">
<script type="text/javascript">
	 alert("${message}");
</script>

</c:if>

<div id="sri_section">
	<div id="sri_wrap">
		<div id="join_wrapper" class="join_cont_wrap">
			<div id="member_personal" class="member_cate">
				<form:form  name="frm" id="frm" method="post"
					action="${pageContext.request.contextPath}/users/new" modelAttribute="member" >
					<fieldset>
						<h3 class="tit_join_member"></h3>
						<div class="cont_division">
							<div class="write_base">
								<div class="item">
								<button type="button" id="testAutoInsert" class="btnSizeS colorBlue saveBtn">자동완성</button>
									<h3 class="tit_join_member">개인회원 회원가입</h3>
									
									<label for="sms_cellnum"><strong>아이디</strong></label>
									<div class="input_collect TypoBox">
								<!-- 아이디 -->
										<spring:message code="member.memId"/>
										<form:input type="text" id="memId" path="memId"
											maxlength="15" placeholder="영문 소문자 및 숫자 (5-15자)"
											class="Typo SizeL join_input defalt" />
										
									</div>
										
									<button type="button" id="checkIdBtn"
										class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>중복확인</span>
									</button>
									
									<em class="msgInvalid" id="idCheckMsg1" ></em>
									<!-- 오류 시 텍스트 -->
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="memId" element="span" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
<!-- 									<p class="alert_column good_txt" id="idCheckMsg2" -->
<!-- 										style="display: none">사용가능한 아이디에요.</p> -->
									<!-- 완료 시 텍스트 -->
								</div>

								<!-- 비밀번호 -->
								<div class="item">
									<label for="password1"><strong>비밀번호</strong></label>
									<div class="TypoBox pass_box">
										<th><spring:message code="member.memPass" /></th> <input
											autocapitalize="off" name="memPass" class="Typo SizeL defalt" 
											id="password" type="password" maxlength="20"
											autocomplete="off" placeholder="영문자 + 숫자 + 특수문자  (8-20자)">
										<button type="button" toggle="#password1"
											id="masking_password" class="toggle_password field_eye on"
											style="display: none;"></button>
									</div>
									<!-- 오류 시 텍스트 -->
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="memPass" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								</div>

<!-- 								비밀번호확인  -->

								<div class="item">

									<label for="sms_cellnum"><strong>비밀번호 확인</strong></label>
									<div class="input_collect TypoBox">
										<input type="password" id="passCheck" name="tmp_cellnum"
											maxlength="20" placeholder="4~20자리 / 영문, 숫자, 특수문자 '_'사용가능"
											class="Typo SizeL join_input defalt">
									</div>
									<button type="button" id="passCheckBtn"
										class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>확인</span>
									</button>
								</div>
								
								



								<!-- 이름 -->
								<div class="item">
									<label for="user_nm"><strong>이름</strong></label>
									<div class="TypoBox">
										<spring:message code="users.usersNm"/>
										<form:input type="text" path="users.usersNm" id="user_nm" 
											class="Typo SizeL defalt" style="ime-mode: active"
											autocapitalize="off" placeholder="이름 입력"/>
									</div>
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="users.usersNm" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
									
								</div>

								<!-- 생년월일 -->
								<div class="item">
									<label for="birth_date"><strong>생년월일</strong></label>
									<div class="TypoBox">
										<form:input type="date" path="users.usersBir" id="birth_date"
											maxlength="8" autocapitalize="off" placeholder="YYYYMMDD"
											class="Typo SizeL defalt" />
									</div>
									<em class="msgInvalid" id="cyr_msg" >
										<form:errors path="users.usersBir" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								</div>
								
								<!-- 성별 -->
								<div class="item">
									<label for="birth_date"><strong>성별</strong></label>
									<div class="agree_box">
										
										<li>
											<div class="agree_desc">
												<div class="InpBox">
													<span class="Chk"> <form:radiobutton class="check_mail" id="termsAgree" path="users.usersGen" value="M" /> <label class="Lbl check_custom check_off" for="termsAgree">
															<span>남자</span>
													</label>
													</span>
												</div>
											</div> 
										</li>
										<li>
											<div class="agree_desc">
												<div class="InpBox">
													<span class="Chk"> <form:radiobutton  id="sms_receive_fl" path="users.usersGen" value="F" />
														<label class="Lbl check_custom check_off" for="sms_receive_fl"> <span>여자</span>
													</label>
													</span>

												</div>
											</div>
										</li>
									</ul>
									</div>
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="users.usersGen" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								
								</div>

								<input type="hidden" name="" id="cellnum"> <input
									type="hidden" name="" id="email_id">

								<!-- 휴대폰  -->
								<div class="item" id="phone_certi_list"
									name="phone_certi_list">
									<label for="sms_cellnum"><strong>휴대폰</strong></label>
									<div class="TypoBox">
											<form:input type="text"
											id="sms_cellnum" path="memTel"
											placeholder="'-' 빼고 숫자만 입력"
											class="Typo SizeL join_input defalt" />
									</div>
									
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="memTel" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
									
								</div>

								<!--이메일 -->
								<li class="item identify_phone"><label for="sms_email_id"><strong>이메일</strong></label>
									<div class="TypoBox">
										<form:input type="text" id="sms_email_id" path="memMail"
											style="ime-mode: inactive" class="Typo SizeL defalt"
											placeholder="email@jobja.co.kr" />
									</div> <!-- 자동리스트 영역 -->
									<ul class="auto_list_area email_list" style="display: none;">
										<li class="auto_list"><a href="javascript:;"
											onclick="return false;" class="email_domain"><strong
												class="txt_input"></strong>@naver.com</a></li>
										<li class="auto_list"><a href="javascript:;"
											onclick="return false;" class="email_domain"><strong
												class="txt_input"></strong>@gmail.com</a></li>
										<li class="auto_list"><a href="javascript:;"
											onclick="return false;" class="email_domain"><strong
												class="txt_input"></strong>@daum.net</a></li>
										<li class="auto_list"><a href="javascript:;"
											onclick="return false;" class="email_domain"><strong
												class="txt_input"></strong>@nate.com</a></li>
										<li class="auto_list"><a href="javascript:;"
											onclick="return false;" class="email_domain"><strong
												class="txt_input"></strong>@outlook.com</a></li>
									</ul> 
									<p class="alert_column good_txt" id="msg_email2"
										style="display: none">인증되었습니다</p>
									<div class="wrap_collection_basis">
										<em class="msgInvalid" id="cyr_msg"> <form:errors
												path="memMail" element="span" id="password1_warning_txt"
												cssClass="errors" class="alert_column good_txt"></form:errors>
										</em>
									</div></li>
									
								<!--주소  우편번호 넣을까말까...-->
								<div class="item adress_column" id="address_area">
									<label for="address_main" class=""><strong> 주소</strong></label>
									<div class="input_collect TypoBox">
										<form:input path="memZip" id="address_zip" type="text"
											class="Typo SizeL defalt from_address _searchArea"
											maxlength="" autocapitalize="off" autocomplete="off"
											placeholder="우편번호" />
									</div>
									<div class="input_collect TypoBox">
										<form:input path="memAddr1" id="address_main" type="text"  
											class="Typo SizeL defalt from_address _searchArea"
											maxlength="" autocapitalize="off" autocomplete="off"
											placeholder="주소찾기" />

									</div>
									<button type="button" id="searchAddressBtn"
										class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>찾기</span>
									</button>



									<div class="TypoBox input_sebu_address">
										<form:input path="memAddr2" id="address_sebu" type="text"
											class="Typo SizeL defalt" maxlength="" autocapitalize="off"
											autocomplete="off" placeholder="상세주소" />
									</div>
									<em class="msgInvalid" id="cyr_msg" >
											<form:errors path="memZip" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
											<form:errors path="memAddr1" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
											<form:errors path="memAddr2" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
									</em>
								</div>



<!-- 								 약관  
							<div class="cont_division">
								<span class="terms_agree"><strong>약관</strong></span>
								<div class="agree_box">
									<ul class="agree_article">
										<li>
											<div class="InpBox">
												<span class="Chk SizeL"> <input type="checkbox"
													class="check_mail" id="agreeAllPersonal"> <label
													class="check_all check_off Lbl" for="agreeAllPersonal">
														<strong class="all_agree">전체 동의</strong>
												</label> <input type="hidden" name="" value="0"
													id="hidden_check_all">
												</span>
											</div>
											<p class="agree_txt">위치기반 서비스 이용약관(선택), 마케팅 정보 수신
												동의(이메일,SMS/MMS)(선택) 동의를 포함합니다.</p>
										</li>
									</ul>
									<ul class="agree_article depth2">
										<li>
											<div class="agree_desc">
												<div class="InpBox">
													<span class="Chk"> <input type="checkbox"
														id="agree_rule1"> <label
														class="Lbl check_custom check_off" for="agree_rule1">
															<span><strong>(필수) 개인회원 약관에 동의</strong></span>
													</label>
													</span>

												</div>
											</div> <a href="/zf_user/help/terms-of-service/person"
											class="view_indetail" target="_blank"> <span
												class="blind">개인회원 약관 상세보기</span>
										</a>
										</li>
										<li>
											<div class="agree_desc">
												<div class="InpBox">
													<span class="Chk"> <input type="checkbox"
														id="agree_take1"> <label
														class="Lbl check_custom check_off" for="agree_take1">
															<span><strong>(필수) 개인정보 수집 및 이용에 동의</strong></span>
													</label>
													</span>

												</div>
											</div> <a id="popupClausePrivacyPerson"
											href="/zf_user/popup/privacy-policy?category=person_privacy_req"
											class="view_indetail popup_clause_open" target="_blank">
												<span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
										</a>
										</li>
									</ul>
								</div>
							</div>
							-->
							
							

							<div class="btn_join">
									<button type="submit" id="usersJoinBtn" class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>회원가입 완료</span>
									</button>
							</div>
						</div>
						</div>
					</fieldset>
				</form:form>

				<!-- 중복가입 알림 레이어 -->
				<div id="dimmed" class="sri_dimmed" style="display: none"></div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
// memZip 디폴트값이 0이라서 0일 떼 강제 클리어!   
if($("[name=memZip]").val()==0){
	 $("[name=memZip]").val("");
}
    
 $(document).ready(function() {
	
	 //자동완성
	 $("#testAutoInsert").on("click",function(){
		 
		 $("#password").val("ddit123!@#");
		 $("#passCheck").val("ddit123!@#");
		 $("#user_nm").val("김민지");
		 $("#birth_date").val("2000-12-12");
		 $("input:radio[name='users.usersGen'][value='M']").prop("checked", true);
		 $("#sms_cellnum").val("010-1234-1234");
		 $("#sms_email_id").val("ddit@naver.com");
		 $("#address_zip").val("45687");
		 $("#address_main").val("대전 서구 갈마로 4");
		 $("#address_sebu").val("118-56");
		 
	 });
	
	//아이디 중복 체크
	$("#checkIdBtn").on("click",function(){
		let memId = $("#memId").val();
		//console.log(memId);

		let url ="<%=request.getContextPath()%>"+"/users/"+memId+"/checkId";
	
		let idreg = /^[a-z0-9]{5,15}$/
		if(!(idreg.test(memId))){
			alert("id형식 오류입니다");
			return false; 
		}
		$.ajax({
			type:"post",
			url:`\${url}`,
			//contentType:"application/x-www-form-urlencoded",
			data: {"memId": memId} ,
			dataType:"text",
			success:function(resp){
				console.log("체크",resp)
				let okmsg = "사용 가능한 아이디 입니다";
				let ngmsg ="사용 불가능한 아이디 입니다"
				if(resp=="OK"){
					$("#idCheckMsg1").html(okmsg).css('color','green');	
					$("#usersJoinBtn").prop("disabled", false);
					isIdConfirmed = true;
				}else{
					$("#idCheckMsg1").html(ngmsg).css('color','red');
					 $("#usersJoinBtn").prop("disabled", true);
					 sIdConfirmed = false;
				}
			},
			error:function(xhr){
				console.log("오류",xhr.status)
			}
		});//ajax
		
	});//click
	
	//비밀번호 일치 확인
	$("#passCheckBtn").on("click",function(){
	   let passCheck = $("#passCheck").val();
	   let password = $("#password").val();
				if(passCheck == password){
					alert("비밀번호가 일치합니다")
					isPasswordConfirmed = true;
					  $("#usersJoinBtn").prop("disabled", false);
					
				}else{
					alert("비밀번호가 일치 하지 않습니다")
					isPasswordConfirmed = false;
					 $("#usersJoinBtn").prop("disabled", true);
				}
			});
	
	 // 비밀번호 입력 시 실시간으로 비밀번호 일치 여부 확인
    $("#password").on("input", function() {
        isPasswordConfirmed = false;
        $("#usersJoinBtn").prop("disabled", true);
    });
	 
    $("#passCheck").on("input", function() {
        isPasswordConfirmed = false;
        $("#usersJoinBtn").prop("disabled", true);
    });
	 
    $("#memId").on("input", function() {
    	isIdConfirmed = false;
        $("#usersJoinBtn").prop("disabled", true);
    });
	//우편번호 검색 API
	$('#searchAddressBtn').on('click', function() {

		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#address_zip").value = data.zonecode;
				document.querySelector("#address_main").value = data.address;
			}
		}).open();
	});//onclick
	
	
});	
// 	});





</script>