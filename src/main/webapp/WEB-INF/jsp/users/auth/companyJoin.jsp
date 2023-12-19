<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div id="sri_section">
	<div id="sri_wrap">

		<div id="join_wrapper" class="join_cont_wrap">
			<div id="member_personal" class="member_cate">
				<form:form name="frm" id="frm" method="post"  enctype="multipart/form-data"
					action="${pageContext.request.contextPath}/company/new" modelAttribute="member" >
					<fieldset>
						<div class="cont_division">
							<div class="write_base">

								<!-- 기업인증 - 파일선택 (기본) -->
								<div class="cont_division">
									<h3 class="tit_join_member">기업회원 회원가입</h3>

									<strong class="cont_tit">사업자등록번호</strong><br>

									<div class="input_collect TypoBox c">
<!-- 									 사업자등록번호 -->
										<form:input path="company.companyNum" id="companyNum" type="text" 
											class="Typo SizeL defalt from_address _searchArea"
											maxlength="10" autocapitalize="off" autocomplete="off"
											placeholder="숫자 10자리" style="width: 360px;" />
									</div>
									<!-- 									사업자 등록번호 오류시텍스트 -->
									<em class="msgInvalid" id="cyr_msg"> <form:errors
												path="company.companyNum" element="span" cssClass="errors"
												class="alert_column good_txt"></form:errors>
										</em>

									<div class="area_corp_certification companyFile" style="height: 300px !important;">

										<!-- 일반 사번 -->
										<div id="normal_corp_code_certification_notice">
											<p class="corp_certification_tit">
												<strong>사업자등록증명원</strong>을 첨부해주세요
											</p>
											<div class="corp_certification_exam">
				                                <div class="box_exam exam_certification">
				                                    <strong class="exam_tit">사업자등록<span class="txt_blue">증명원</span></strong>
				                                    <span class="blind">은 올바른 파일 입니다.</span>
				                                </div>
				                                <div class="box_exam exam_license">
				                                    <strong class="exam_tit">사업자등록증</strong>
				                                    <span class="blind">은 올바른 파일이 아닙니다.</span>
				                                </div>
				                            </div>
										</div>
<!-- 										사업자등록증명원파일 -->
										<div class="box_file_upload" id="box_file_upload">
											<input type="file" id="confirm_document_file"
												name="company.companyImage" class="file_input"> <label
												for="confirm_document_file" class="file_label"  style="height: 30px !important;"
												id="confirm_document_file_label"> <span
												class="blind">파일찾기</span>
											</label>
											<!-- 오류시텍스트 -->
										<em class="msgInvalid" id="cyr_msg"> <form:errors
												path="company.companyImage" element="span" cssClass="errors"
												class="alert_column good_txt"></form:errors>
										</em>
										</div>
									</div>
								</div>
								<div class="item">
									<!-- 									아이디 -->
									<label for="sms_cellnum"><strong>아이디</strong></label>
									<div class="input_collect TypoBox">
										<form:input type="text" id="memId" path="memId" 
											maxlength="15" placeholder="영문 소문자 및 숫자 (5-15자)"
											class="Typo SizeL join_input defalt" />
									</div>
									<button type="button" id="checkIdBtn"
										class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>중복확인</span>
									</button>
									<em class="msgInvalid" id="idCheckMsg1"></em>
									<p class="alert_column focus_txt" id="idFocusMsg"
										style="display: none">4 ~ 20자의 영문, 숫자와 특수문자'_'만 사용해주세요.
									</p>
									<!-- 오류 시 텍스트 -->
									<em class="msgInvalid" id="cyr_msg"> <form:errors
											path="memId" element="span" cssClass="errors"
											class="alert_column good_txt"></form:errors>
									</em>
									<!-- 완료 시 텍스트 -->
								</div>

								<!-- 비밀번호 -->
								<div class="item">
									<label for="password1"><strong>비밀번호</strong></label>
									<div class="TypoBox pass_box">
										<input autocapitalize="off" name="memPass"
											class="Typo SizeL defalt" id="password" type="password"
											maxlength="20" autocomplete="off"
											placeholder="영문자 + 숫자 + 특수문자  (8-20자)">
									</div>
									<!-- 오류 시 텍스트 -->
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="memPass" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								</div>

								<!-- 비밀번호확인 -->

								<div class="item">

									<label for="sms_cellnum"><strong>비밀번호 확인</strong></label>
									<div class="input_collect TypoBox">
										<input type="password" id="passCheck" name=""
											maxlength="20" placeholder="비밀번호 확인"
											class="Typo SizeL join_input defalt">
									</div>
									<button type="button" id="passCheckBtn"
										class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>확인</span>
									</button>
								</div>



								<!-- 이름 -->
								<div class="item">
									<label for="user_nm"><strong>담당자 이름</strong></label>
									<div class="TypoBox">
										<form:input type="text" path="company.companyDnm" id="user_nm" 
											class="Typo SizeL defalt" style="ime-mode: active"
											autocapitalize="off" placeholder="이름 입력" />
									</div>
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="company.companyDnm" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								</div>
								
								<!-- 기업명 -->
								<div class="item">
									<label for="user_nm"><strong>기업명</strong></label>
									<div class="TypoBox">
										<form:input type="text" path="company.companyNm" id="user_nm"
											class="Typo SizeL defalt" style="ime-mode: active" 
											autocapitalize="off" placeholder="기업명 입력" />
									</div>
									<em class="msgInvalid" id="cyr_msg" >
									<form:errors path="company.companyNm" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								</div>

								<!-- 개업일 -->
								<div class="item">
									<label for="birth_date"><strong>개업일</strong></label>
									<div class="TypoBox">
										<form:input type="date" path="company.companyDate" id="birth_date"
											maxlength="8" autocapitalize="off" placeholder="YYYYMMDD"
											class="Typo SizeL defalt" />
									</div>
									<em class="msgInvalid" id="cyr_msg" >
										<form:errors path="company.companyDate" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
									</em>
								
								</div>
								<!-- 휴대폰 -->
								<div class="item" id="phone_certi_list" name="phone_certi_list">
									<label for="sms_cellnum"><strong>휴대폰</strong></label>
									<div class="TypoBox">
										<form:input type="text" id="sms_cellnum" path="memTel"
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
									<div class="wrap_collection_basis">
										<em class="msgInvalid" id="cyr_msg"> <form:errors
												path="memMail" element="span" id="password1_warning_txt"
												cssClass="errors" class="alert_column good_txt"></form:errors>
										</em>
									</div>
									</li>
								
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
											value="${member.memAddr1}"
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



								<!-- 약관 
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
													</label> <input type="hidden" name="hidden_check_all" value="0"
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
											<li>
												<div class="agree_desc">
													<div class="InpBox">
														<span class="Chk"> <input type="checkbox"
															id="locationBased" name="locationBased" value="y">
															<label class="Lbl check_custom check_off"
															for="locationBased"> <span>(선택) 위치기반서비스
																	이용약관에 동의</span>
														</label>
														</span>

													</div>
												</div> <a id="popupTermsAgreeLb"
												href="/zf_user/help/terms-of-service/location-based"
												class="view_indetail popup_clause_open" target="_blank">
													<span class="blind">위치기반서비스 이용약관에 동의 상세보기</span>
											</a>
											</li>
											<li>
												<div class="agree_desc">
													<div class="InpBox">
														<span class="Chk"> <input type="checkbox"
															class="check_mail" id="termsAgree" name="termsAgree"
															value="y"> <label
															class="Lbl check_custom check_off" for="termsAgree">
																<span>(선택) 마케팅 정보 수신 동의 - 이메일</span>
														</label>
														</span>
													</div>
												</div> <a id="popupEmailReceive"
												href="/zf_user/popup/privacy-policy?category=person_email_opt"
												class="view_indetail popup_clause_open" target="_blank">
													<span class="blind">마케팅 정보 수신 동의 - 이메일 약관 상세보기</span>
											</a>
											</li>
											<li>
												<div class="agree_desc">
													<div class="InpBox">
														<span class="Chk"> <input type="checkbox"
															id="sms_receive_fl" name="sms_receive_fl" value="y">
															<label class="Lbl check_custom check_off"
															for="sms_receive_fl"> <span>(선택) 마케팅 정보 수신
																	동의 - SMS/MMS</span>
														</label>
														</span>

													</div>
												</div> <a id="popupSmsReceive"
												href="/zf_user/popup/privacy-policy?category=person_sms_opt"
												class="view_indetail popup_clause_open" target="_blank">
													<span class="blind">마케팅 정보 수신 동의 - SMS/MMS 약관 상세보기</span>
											</a>
											</li>
										</ul>
									</div>
								</div>
							-->
								<div class="btn_join">
									<button type="submit" id="usersJoinBtn"
										class="BtnType SizeL defalt btn_cert_pop collet_btn">
										<span>회원가입 완료</span>
									</button>
								</div>
							</div>
					</fieldset>
				</form:form>

				<!-- 중복가입 알림 레이어 -->
				<div class="member_nudge ModalBox" id="p_member_nudge"
					style="display: none">
					<h3 class="Tit">이미 가입된 정보입니다</h3>
					<div class="ModalCont">
						<p class="txt_info">가입된 아이디에 회원님의 소중한 이력서와 입사지원 내역 등이 있을 수
							있어요!</p>
						<div class="id_already">
							<span>아이디</span> <strong id="p_already_id">%nbsp;</strong>
						</div>
						<div class="BtmArea">
							<a href="/zf_user/helpdesk/idpw-find"
								class="BtnType SizeM search_user">아이디/비밀번호 찾기</a> <a
								href="/zf_user/auth" class="BtnType SizeM">로그인</a>
						</div>
					</div>
					<button type="button" class="btnClose BtnClose close_btn"
						onclick="$('#p_member_nudge').hide();$('#dimmed').hide();">
						<span class="blind">닫기</span>
					</button>
				</div>
				<div id="dimmed" class="sri_dimmed" style="display: none"></div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
if($("#companyNum").val()==0){
	 $("#companyNum").val("");
}
if($("[name=memZip]").val()==0){
	 $("[name=memZip]").val("");
}
 $(document).ready(function() {
	
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