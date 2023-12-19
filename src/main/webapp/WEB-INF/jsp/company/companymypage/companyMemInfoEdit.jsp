<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="<%=request.getContextPath()%>/resources/js/app/company/companyMypage/companyMypageList.js"></script>

<div class="cmpnyMemInfo">
<div id="sri_section" class="">
             <div id="content" class="basic">
 <div id="sri_gnb_wrap">
                <ul class="gnb">
                 <li class="only"><a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_15"></use>
                            </svg> <span class="txt"></span>
                        </a></li>
                    <li class="only  selected"><a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_15"></use>
                            </svg> <span class="txt">기업정보</span>
                        </a></li>
                    <li class="only"><a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg> <span class="txt">대표 기업정보</span>
                    <li class="only"><a href="<c:url value='/scrap'/>" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'scrap', '')">
                            <svg>
                                <use xlink:href="#svg_my_18"></use>
                            </svg> <span class="txt">알림</span>
                        </a></li>
                    <li class="only"><a href="/zf_user/persons/scrap-recruit" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'alarm', '')">
                            <svg>
                                <use xlink:href="#svg_my_19"></use>
                            </svg> <span class="txt">내 프로모션</span>
                        </a></li>
                        </ul>
                    </li>
                </ul>
            </div>           



<div class="wrap_content">
    <div id="divTitle" class="wrap_title">
        <h1 class="title_common">기업정보 관리</h1>
    </div>

            <ul class="tabList companyinfo_tab_list">
            <li class="select"><button type="button" class="inTab" onclick="location.href='/zf_user/company-join/edit?tabType=basic_info'; return false;"><span>기본정보</span></button></li>
            <li>
                                    <div class="txt_box updown">직접 등록해보세요!</div>
                                <button type="button" class="inTab" onclick="location.href='/zf_user/company-join/edit?tabType=main_company'; return false;"><span>대표 기업정보</span></button>
                            </li>
            
        </ul>
    
    <div class="companyinfo_modify_wrap">
                    <!-- //수정 : 201911 -->
<script>
    </script>
<!-- 계정 정보 -->
<h2 class="non_blank">
    계정정보
    <span class="required"><b>*</b> 표시는 필수입니다.</span>
</h2>
<div class="tblWrap tblRow tblBorder">
<form id="frm" name="frm" method="post" action="/FinalProject/companyMemInfo/editPost">
    <table>
        <caption class="blind">계정정보 내용</caption>
        <colgroup>
            <col style="width:200px">
            <col style="*">
            <col style="width:300px">
        </colgroup>
        <tbody>
        <tr>
            <th scope="row">
                아이디
            </th>
            <td colspan="2" class="txtLeft">
             	${member.memId }
             	<input type="hidden" name="memId" value="${member.memId}" />
            </td>
        </tr>
        <tr>
            <th scope="row">
                새 비밀번호
            </th>
            <td colspan="2" class="txtLeft">
             	<input type="password" name="memPass" id="memPass" value="" class="form-controller" />
            </td>
        </tr>
        <tr>
            <th scope="row">
                비밀번호 확인
            </th>
            <td colspan="2" class="txtLeft">
             	<input type="password" id="memPassConfirm" required  class="form-controller" />
            </td>
        </tr>
        <tr>
            <th scope="row">
                사업자등록번호
            </th>
            <td colspan="2" class="txtLeft">
                ${member.company.companyNum }
            </td>
        </tr>
        <tr>
            <th scope="row">기업 인증</th>
									<td>
										<c:set var="companyPermission" value="${member.company.companyPermission}" />
										<c:choose>
            <c:when test="${companyPermission eq 'Y'}">
                승인
            </c:when>
            <c:when test="${companyPermission eq 'N'}">
                미승인
            </c:when>
            <c:otherwise>
                기타 상태
            </c:otherwise>
        </c:choose>
									</td>
        </tr>
        <tr>
            <th scope="row">
                <span class="required"><b>*</b> 이름</span>
            </th>
            <td colspan="2" class="txtLeft">
             	<input type="text" name="company.companyDnm" class="form-controller" value="${member.company.companyDnm }">
            </td>
        </tr>
        <tr>
            <th scope="row">
                <span class="required"><b>*</b> 연락처</span>
            </th>
            <td class="txtLeft">
            	<input type="text" name="memTel" class="form-controller" value="${member.memTel }">
            </td>
        </tr>
        <tr>
            <th scope="row">
                <span class="required"><b>*</b> 이메일</span>
                 </th>
                 <td class="txtLeft">
                <input type="email" name="memMail" class="form-controller" value="${member.memMail }">
                </td>
        </tr>
        <tr>
             <td colspan="2">
             	<input type="button" id="btnSubmit" value="저장" class="btn btn-primary" /> 
                 <a href="<c:url value='/companyMemInfo'/>" class="btn btn-danger">취소</a>
             </td>
         </tr>
        </tbody>
    </table>
    </form>
</div>
<div class="dimmed" style="display: none;"></div>
<br>
<br>
    
    <div class="companyinfo_modify">
        
    </div>
<script>
    (function($) {
    	$("#btnSubmit").on("click",function(){
    		//비밀번호 체킹
    		let memPass = $("#memPass").val();
    		let memPassConfirm = $("#memPassConfirm").val();
    		
    		if(memPass == memPassConfirm){
    			console.log("일치!");
    			$("#frm").submit();
    		}else{
    			alert("비밀번호를 확인해주세요");
    			return;
    		}
    	});
    	
        var processFlag = '';
        $("input[name='agency_file_nm_certification'], input[name='file_nm_certification'], input[name='agency_file_nm']").bind("change", function(){

            if(ie_flag() < 10 && ie_flag() != false){
                return false;
            }

            var name = $(this).attr('name');
            var classNm = '#'+name + '_txt';
            var reader = new FileReader();
            var file = $(this).get(0).files[0];

            if(file && /\.(jpe?g|gif|png)$/i.test(file.name)
                && file.size < 1000000){
                reader.readAsDataURL(file);
                reader.onload = function () {
                    var tmp = reader.result;
                    $(classNm).val(file.name);
                }
            }else{
                if(file) alert("첨부한 파일의 확장자/용량을 확인해주세요.\n" +
                    "*최대 용량 : 1MB 이하\n" +
                    "*파일 확장자 : jpg, jpeg, png, gif 권장");
                $(this).val("");
                return false;
            }
        });

        var clearId = '';
        $('#sendCodeEmail').on('click',function(){
            if($('#email_id').val() === ''|| $('#email_dm').val() === ''){
                alert('이메일 값을 입력 해주세요.');
            }
            var email = $('#email_id').val()+'@'+$('#email_dm').val();
            sendCode('',email);

        });

        $('#btnEditEmail').on('click',function(){
            maskingMode();
        });

        $('#btnEditEmailCancle').on('click',function(){
            maskingMode('masking');
        });

        $('#masking_email').on('keyup', function() {
            setButtonColor(this, 'btnMaskingEmailCompare');
        });

        $('#change_email').on('keyup', function() {
            setButtonColor(this, 'btnSendEmail');
        });

        $('#mailCertNum').on('keyup', function() {
            setButtonColor(this, 'btnCertConfirmMail');
        });

        $('#btnMaskingEmailCompare').on('click',function(){
            maskingEmailCompare();
        });

        $('#btnSendEmail').on('click',function(){
            sendChangeEmail();
        });

        $('#sms_corp_charge').on('change', function () {
            if ($('#sms_corp_charge').val() === 'y' && $('#fit_masking_fl').val() === 'y') {
                $('#maskingCompareForm').css("display", "none");
                $('#sendEmailForm').css("display", "block");
                $('#privacy_guide_email').css("display", "none");
            }
        });

        $('#sendEmailCancel').on('click',function(){
            maskingMode('masking');
        });
        $('#sendEmailCodeCancel').on('click',function(){
            $('#sendEmailCodeForm').hide();
            $('#sendEmailBtnForm').show();
            $('#sendEmailCodeBtnForm').hide();
            $('#domainForm').show();
            sendCodeMode();
            stopSmsConfirm();
        });
        $('#btnCertConfirmMail').on('click',function(){
            certConfirm();
        });
        $('#req_certification').on('click',function(){
            window.open('/zf_user/memcom/certification/', '_blank');
            return false;
            //window.location.href = '/zf_user/memcom/certification/';
        });

        function setButtonColor(el, id) {
            if ($(el).val().length > 0) {
                setActiveButton(id, true);
            } else {
                setActiveButton(id, false);
            }
        }

        function setActiveButton(id, active) {
            if (active) {
                if ($('#' + id).hasClass('colorWhite')) {
                    $('#' + id).removeClass('colorWhite');
                }
                if (!$('#' + id).hasClass('colorBlue')) {
                    $('#' + id).addClass('colorBlue');
                }
            } else {
                if ($('#' + id).hasClass('colorBlue')) {
                    $('#' + id).removeClass('colorBlue');
                }
                if (!$('#' + id).hasClass('colorWhite')) {
                    $('#' + id).addClass('colorWhite');
                }
            }
        }

        function maskingMode(type){
            if(type === 'masking'){
                resetEmailChangeForm();

                $('#maskingCompareForm').css("display", "none");
                $('#sendEmailForm').css("display", "none");
                $('#sendEmailCodeForm').css("display", "none");

                $('#btnEditEmail').show();
                $('#btnEditEmailCancle').hide();
                $('#privacy_guide_email').hide();
            } else {
                if ($('#maskingEmailForm').text().trim().length < 1 || $('#maskingEmailForm').text().trim() === '-') {
                    $('#fit_masking_fl').val('y');
                    $('#maskingCompareForm').css("display", "none");
                    $('#sendEmailForm').css("display", "block");
                    $('#btnEditEmail').hide();
                    $('#btnEditEmailCancle').show();
                    $('#privacy_guide_email').show();
                } else {
                    $('#maskingCompareForm').css("display", "block");
                    $('#btnEditEmail').hide();
                    $('#btnEditEmailCancle').show();
                    $('#privacy_guide_email').show();
                }
            }
        }

        function resetEmailChangeForm() {
            $('#fit_masking_fl').val('n');
            $('#masking_email').val('');
            $('#change_email').val('');
            $('#mailCertNum').val('');
            $('#change_email').prop('readonly', false);
            $('#btnSendEmail').prop('disabled', false);
            setActiveButton('btnMaskingEmailCompare', false);
            setActiveButton('btnSendEmail', false);
            setActiveButton('btnCertConfirmMail', false);
            stopSmsConfirm();
            stopSmsConfirmAfter();
        }

        function maskingEmailCompare() {
            if ($('#masking_email').val() === '') {
                alert('현재 이메일을 입력해주세요.');
                $('#masking_email').focus();
                return false;
            }

            if (processFlag !== '') {
                alert('다른 작업을 수행중입니다. 잠시후 다시시도 바랍니다.');
                return false;
            }

            const paramData = {
                type : 'email',
                value : $('#masking_email').val()
            };
            $.ajax({
                url: '/zf_user/member/fit-masking/fit-cell-email',
                type: 'POST',
                data: paramData,
                dataType: 'json',
                beforeSend: function () {
                    processFlag = 'maskingEmailCompare';
                },
                success: function (res) {
                    processFlag = '';
                    $('#fit_masking_fl').val('n');
                    if (res.result === 'fail') {
                        alert(res.message);
                        $('#masking_email').focus();
                        return false;
                    }
                    if (res.result === 'success') {
                        $('#fit_masking_fl').val('y');
                        $('#maskingCompareForm').css("display", "none");
                        $('#sendEmailForm').css("display", "block");
                        $('#privacy_guide_email').css("display", "none");
                    }
                },
                error: function (error) {
                    alert('요청에 실패하였습니다. 새로고침 후 다시 시도해주세요.');
                }
            });
        }

        function sendChangeEmail() {
            const email_reg = /^[0-9a-z._+-]+@([0-9a-z_-]+\.)+[a-z]{2,10}$/i;
            const changeEmail = $('#change_email').val();

            //이메일 벨리데이션
            if ($('#fit_masking_fl').val() !== 'y') {
                alert('정상적인 이메일 변경이 아닙니다. 다시 확인해주세요.');
                window.location.reload();
                return false;
            }
            if (changeEmail.length < 1 || changeEmail == '') {
                alert('변경할 이메일을 입력해주세요.');
                $('#change_email').focus();
                return false;
            }

            if (!email_reg.test(changeEmail)) {
                alert("잘못된 이메일 주소입니다. 이메일 주소를 정확하게 입력해주세요.");
                $('#change_email').focus();
                return false;
            }

            if (!checkDuplicateEmail(changeEmail)) {
                sendCode('', changeEmail);
            }
        }

        function getEmailData() {
            $.ajax({
                url: '/zf_user/company-join/get-company-info-data',
                type: 'POST',
                data: {
                    type: 'email'
                },
                dataType: 'json',
                success: function (res) {
                    if (res.status === 'need_login') {
                        alert('로그인 후 이용해주세요.');
                        location.reload();
                        return;
                    }

                    if (!!res.result.email_account) {
                        $('#email_id').val(res.result.email_account);
                    }

                    $('#maskingEmailForm').hide();
                    $('#sendEmailForm').show();
                    $('#sendEmailBtnForm').show();
                },
                error: function (error) {
                    alert('요청에 실패하였습니다. 새로고침 후 다시 시도해주세요.');
                }
            });
        }

        function sendCodeMode(type){
            if(type === 'send') {
                $('#change_email').prop('readonly', true);
                $('#sendEmailCodeForm').show();
            }else if(type === 'send_btn'){
                $('#btnSendEmail').prop('disabled',true);
            }else if(type === 'timeout_btn'){
                $('#sendEmailCodeForm').hide();
                $('#change_email').prop('readonly', false);
                $('#btnSendEmail').prop('disabled',false);
            } else {
                $('#sendEmailCodeForm').hide();
                $('#change_email').prop('readonly', false);
            }
        }

        function checkDuplicateEmail(email) {
            var result = false;

            $.ajax('/zf_user/company-join/check-duplicate-email', {
                type: 'POST',
                data: {email: email},
                dataType: 'json',
                async: false,
                success: function (res) {
                    if (res.status === 'already_joined') {
                        alert(res.message || '이미 가입된 멤버입니다.');
                        result = true;
                    } else if (res.status === 'need_login') {
                        alert('로그인 후 이용해주세요.');
                        location.reload();
                    }
                },
                error: function (e) {
                }
            });

            return result;
        }

        function sendCode(cell, email) {
            if ($('#fit_masking_fl').val() !== 'y') {
                alert('정상적인 수정 프로세스가 아닙니다. 다시 시도해주세요.');
                window.location.reload();
                return;
            }

            $.ajax('/zf_user/persons/send-code', {
                type: 'POST',
                data: {
                    phone: cell,
                    email: email,
                    channel: 'mail'
                },
                dataType: 'json',
                success: function (json) {
                    if (json.code === 'limit.send') {
                        return alert(json.msg);
                    }
                    if (json === "invalid_phone") {
                        return alert("휴대폰번호가 올바르지 않습니다.");
                    }
                    if (json === "invalid_email") {
                        return alert("이메일주소가 올바르지 않습니다.");
                    }
                    if (json === 'confirms.duplication') {
                        return alert("현재 등록된 정보와 동일합니다.");
                    }
                    if (json.code === "certification_notice") {
                        return alert("일시적인 오류로 인하여 "+ json.message +" 이용이 불가능합니다. 잠시 후 다시 이용해주세요.");
                    }
                    startSmsConfirm();
                    alert("인증번호가 발송되었습니다.");
                    sendCodeMode('send');
                    sendCodeMode('send_btn');
                },
                error: function (e) {
                    if (window.console) {
                        console.log(e);
                    }
                }
            });
        }

        function startSmsConfirm() {
            var minute = 3;
            var second = 0;

            setTimeText(minute, second);
            stopSmsConfirm();

            clearId = setInterval(lap, 1000);

            function setTimeText(minute, second) {
                var second_text = (second / 10) < 1 ? "0" + second : second;
                $('#remain_time_mail').html(minute + ':' + second_text);
            }

            function lap() {
                if (second === 0 && minute > 0) {
                    second = 59;
                    minute -= 1;
                } else {
                    second -= 1;
                }

                setTimeText(minute, second);

                if (minute === 0 && second === 0) {
                    alert('입력시간이 만료되었습니다. 인증번호를 다시 발송해주세요.');
                    stopSmsConfirm();
                    stopSmsConfirmAfter();
                    sendCodeMode('timeout_btn');
                }
            }
        }
        function stopSmsConfirmAfter() {
            $('#remain_time_mail').html('00:00');
        }


        function stopSmsConfirm() {
            if (clearId) {
                clearInterval(clearId);
                clearId = '';
            }
        }

        function certConfirm() {
            var certNum = '',
                email =  $('#change_email').val(),
                certNum = $('#mailCertNum').val();

            if (certNum === '') {
                return alert("인증번호를 입력해주세요.");
            }

            $.ajax({
                url: '/zf_user/persons/validate-code',
                type: 'POST',
                data: {
                    category: 'edit',
                    seq: $('#seq').val(),
                    code: certNum,
                    channel: 'mail',
                    phone: '',
                    email: email
                },
                dataType: 'json',
                success: function (json) {
                    if (json === 'limit.cert') {
                        return alert('본인 인증이 5회 이상 실패하여 24시간 동안 인증이 제한됩니다.\n제한해제를 원하실 경우, 고객센터로 문의해주세요.')
                    }

                    if (json === 'confirms.verified') {
                        $('#mail_confirm_complete').val('y');
                        stopSmsConfirm();
                        alert("인증되었습니다.");
                        saveEmail();
                        return;
                    }
                    $('#mail_confirm_complete').val('n');
                    alert("인증번호가 틀렸습니다. 다시 입력해주세요.");
                    return;
                },

                error: function (error) {
                    stopSmsConfirm();
                    alert("인증번호 확인 오류. 다시 확인해주세요.");
                    return;
                },
                complete: function (json) {
                    if (window.console) {
                        console.log('complete');
                    }
                }
            });
        }

        function saveEmail(){
            var params = {'type': 'email'},
                emailVal = $('#change_email').val().split('@'),
                emailIdValue = emailVal[0] || '',
                emailDmValue = emailVal[1] || '';
            if (emailIdValue === '' || emailDmValue === '') {
                alert('이메일이 입력되지 않았습니다.');
                return false;
            }
            params.email_id = emailIdValue;
            params.email_dm = emailDmValue;
            params.change_security = 'y';
            params.info_item = 'email';
            params.seq = $('#seq').val();

            $.ajax({
                url: '/zf_user/company-join/update-item',
                method: 'post',
                data: params,
                dataType: 'json',
                async : false
            }).done(function (data) {
                if (data.result === 'not_authorized') {
                    alert('세션이 종료되었습니다.\n다시 로그인 하여 주시기 바랍니다.');
                    location.reload();
                    return false;
                } else if (data.result === 'invalid_code') {
                    alert('이메일 인증을 다시 시도해 주시기 바랍니다.');
                    location.reload();
                    return false;
                }

                alert('변경되었습니다.');
                location.reload();
            }).fail(function () {
                alert('변경 실패하였습니다.\n잠시 후 다시 시도해 주시기 바랍니다.');
                location.reload();
            });
        }

    })(jQuery);

    var isPendingDeferredPaymentCompany = false;
    function pendingDeferredPayment() {
        if (confirm('미결제 살태인 후불 가상계좌 상품이 존재합니다.\n확인버튼 클릭 후 결제완료 시 탈퇴가 가능 합니다.')) {
            location.href = '/zf_user/memcom/service-manage/payment-history';
        }
    }

    function requestChangeCompanyNm() {
        openMembercompanyAppicationForm('name_modify');
    }
</script>                    </div>
</div>
<script type="text/template" id="data_industry">
    {"1":{"bcode":"1","name":"\uc11c\ube44\uc2a4\uc5c5","code":{"108":{"kcode":"7906","tcode":"8","mcode":"8","bcode":"1","code":"108","name":"\ud638\ud154\u00b7\uc5ec\ud589\u00b7\ud56d\uacf5","keyword":{"10803":{"kcode":"8087","tcode":"23","mcode":"1","bcode":"108","code":"10803","name":"\ud638\ud154"},"10804":{"kcode":"8088","tcode":"23","mcode":"1","bcode":"108","code":"10804","name":"\ucf58\ub3c4"},"10805":{"kcode":"8089","tcode":"23","mcode":"1","bcode":"108","code":"10805","name":"\uce74\uc9c0\ub178"},"10806":{"kcode":"8090","tcode":"23","mcode":"1","bcode":"108","code":"10806","name":"\uc5ec\ud589\uc0ac"},"10807":{"kcode":"8091","tcode":"23","mcode":"1","bcode":"108","code":"10807","name":"\ud56d\uacf5\uc0ac"},"10813":{"kcode":"8092","tcode":"23","mcode":"1","bcode":"108","code":"10813","name":"\uad00\uad11"},"10814":{"kcode":"8093","tcode":"23","mcode":"1","bcode":"108","code":"10814","name":"\uad00\uad11\ud1b5\uc5ed"},"10818":{"kcode":"8094","tcode":"23","mcode":"1","bcode":"108","code":"10818","name":"\uba74\uc138\uc810"},"10819":{"kcode":"26611","tcode":"23","mcode":"1","bcode":"108","code":"10819","name":"\uc720\ud559\u00b7\uc774\ubbfc"}}},"109":{"kcode":"7907","tcode":"8","mcode":"8","bcode":"1","code":"109","name":"\uc678\uc2dd\uc5c5\u00b7\uc2dd\uc74c\ub8cc","keyword":{"10901":{"kcode":"8096","tcode":"23","mcode":"1","bcode":"109","code":"10901","name":"\uc74c\uc2dd\ub8cc"},"10902":{"kcode":"8097","tcode":"23","mcode":"1","bcode":"109","code":"10902","name":"\uc2dd\ud488\u00b7\ud478\ub4dc"},"10906":{"kcode":"8098","tcode":"23","mcode":"1","bcode":"109","code":"10906","name":"\ud55c\uc2dd\ub2f9"},"10907":{"kcode":"8099","tcode":"23","mcode":"1","bcode":"109","code":"10907","name":"\uc77c\uc2dd\ub2f9"},"10908":{"kcode":"8100","tcode":"23","mcode":"1","bcode":"109","code":"10908","name":"\uc591\uc2dd\ub2f9"},"10909":{"kcode":"8101","tcode":"23","mcode":"1","bcode":"109","code":"10909","name":"\uc911\uc2dd\ub2f9"},"10910":{"kcode":"8102","tcode":"23","mcode":"1","bcode":"109","code":"10910","name":"\uc81c\uacfc\uc81c\ube75\uc810"},"10911":{"kcode":"8103","tcode":"23","mcode":"1","bcode":"109","code":"10911","name":"\ucd9c\uc7a5\uc694\ub9ac"},"10912":{"kcode":"8104","tcode":"23","mcode":"1","bcode":"109","code":"10912","name":"\ucf00\uc774\ud130\ub9c1"},"10917":{"kcode":"8105","tcode":"23","mcode":"1","bcode":"109","code":"10917","name":"\ud504\ub79c\ucc28\uc774\uc988"},"10918":{"kcode":"8106","tcode":"23","mcode":"1","bcode":"109","code":"10918","name":"\ud69f\uc9d1\u00b7\ucd08\ubc25\u00b7\uc2a4\uc2dc"},"10919":{"kcode":"8107","tcode":"23","mcode":"1","bcode":"109","code":"10919","name":"\ubdd4\ud398"},"10920":{"kcode":"8108","tcode":"23","mcode":"1","bcode":"109","code":"10920","name":"\ud4e8\uc804\ud478\ub4dc"},"10926":{"kcode":"8112","tcode":"23","mcode":"1","bcode":"109","code":"10926","name":"\uad6c\ub0b4\uc2dd\ub2f9"},"10927":{"kcode":"8113","tcode":"23","mcode":"1","bcode":"109","code":"10927","name":"\ud53c\uc790\u00b7\uc2a4\ud30c\uac8c\ud2f0"},"10930":{"kcode":"8115","tcode":"23","mcode":"1","bcode":"109","code":"10930","name":"\ud504\ub791\uc2a4\uc694\ub9ac"},"10931":{"kcode":"8116","tcode":"23","mcode":"1","bcode":"109","code":"10931","name":"\uc774\ud0dc\ub9ac\uc694\ub9ac"},"10932":{"kcode":"22046","tcode":"23","mcode":"1","bcode":"109","code":"10932","name":"\uce58\ud0a8\u00b7\ud1b5\ub2ed"},"10933":{"kcode":"22047","tcode":"23","mcode":"1","bcode":"109","code":"10933","name":"\ud328\ubc00\ub9ac\ub808\uc2a4\ud1a0\ub791"},"10934":{"kcode":"22048","tcode":"23","mcode":"1","bcode":"109","code":"10934","name":"\uc0d0\ub7ec\ub4dc\ubc14"},"10935":{"kcode":"22049","tcode":"23","mcode":"1","bcode":"109","code":"10935","name":"\ud14c\uc774\ud06c\uc544\uc6c3"},"10936":{"kcode":"22050","tcode":"23","mcode":"1","bcode":"109","code":"10936","name":"\ub3c8\uae4c\uc2a4\u00b7\uc6b0\ub3d9"},"10937":{"kcode":"22051","tcode":"23","mcode":"1","bcode":"109","code":"10937","name":"\ud328\uc2a4\ud2b8\ud478\ub4dc"}}},"111":{"kcode":"7913","tcode":"8","mcode":"8","bcode":"1","code":"111","name":"\uc2dc\uc124\uad00\ub9ac\u00b7\uacbd\ube44\u00b7\uc6a9\uc5ed","keyword":{"11103":{"kcode":"8175","tcode":"23","mcode":"1","bcode":"111","code":"11103","name":"\uc6a9\uc5ed\uc5c5\uccb4"},"11106":{"kcode":"8178","tcode":"23","mcode":"1","bcode":"111","code":"11106","name":"\ubcf4\uc548\u00b7\uacbd\ube44\uc5c5\uccb4"},"11111":{"kcode":"8180","tcode":"23","mcode":"1","bcode":"111","code":"11111","name":"\uccad\uc18c\u00b7\ubc29\uc5ed"},"11113":{"kcode":"8181","tcode":"23","mcode":"1","bcode":"111","code":"11113","name":"\uc8fc\ucc28\uad00\uc81c"},"11114":{"kcode":"8182","tcode":"23","mcode":"1","bcode":"111","code":"11114","name":"\uae30\uacc4\u00b7\uc7a5\ube44\uad00\ub9ac"},"11115":{"kcode":"8183","tcode":"23","mcode":"1","bcode":"111","code":"11115","name":"\uc804\uae30\u00b7\uac00\uc2a4\u00b7\uc218\ub3c4"},"11116":{"kcode":"8184","tcode":"23","mcode":"1","bcode":"111","code":"11116","name":"\uc18c\ubc29\u00b7\ubc29\uc7ac"},"11117":{"kcode":"8185","tcode":"23","mcode":"1","bcode":"111","code":"11117","name":"\uc2dc\uc124\uad00\ub9ac"},"11118":{"kcode":"8186","tcode":"23","mcode":"1","bcode":"111","code":"11118","name":"\uc544\uc6c3\uc18c\uc2f1"},"11119":{"kcode":"26612","tcode":"23","mcode":"1","bcode":"111","code":"11119","name":"\uc11c\uce58\ud38c"},"11120":{"kcode":"26613","tcode":"23","mcode":"1","bcode":"111","code":"11120","name":"\ud5e4\ub4dc\ud5cc\ud305"},"11121":{"kcode":"26614","tcode":"23","mcode":"1","bcode":"111","code":"11121","name":"\ud30c\uacac\ub300\ud589"}}},"115":{"kcode":"7908","tcode":"8","mcode":"8","bcode":"1","code":"115","name":"\ub808\uc800\u00b7\uc2a4\ud3ec\uce20\u00b7\uc5ec\uac00","keyword":{"11501":{"kcode":"8117","tcode":"23","mcode":"1","bcode":"115","code":"11501","name":"\uc2a4\ud3ec\uce20"},"11502":{"kcode":"8118","tcode":"23","mcode":"1","bcode":"115","code":"11502","name":"\ub808\uc800"},"11503":{"kcode":"8119","tcode":"23","mcode":"1","bcode":"115","code":"11503","name":"\ub180\uc774\uacf5\uc6d0"},"11504":{"kcode":"8120","tcode":"23","mcode":"1","bcode":"115","code":"11504","name":"\uc11c\ubc14\uc774\ubc8c\uac8c\uc784"},"11505":{"kcode":"8121","tcode":"23","mcode":"1","bcode":"115","code":"11505","name":"\ub798\ud504\ud305"},"11506":{"kcode":"8122","tcode":"23","mcode":"1","bcode":"115","code":"11506","name":"\uc2a4\ud3ec\uce20\uc13c\ud130"},"11507":{"kcode":"8123","tcode":"23","mcode":"1","bcode":"115","code":"11507","name":"\uace8\ud504\uc7a5CC"},"11508":{"kcode":"8124","tcode":"23","mcode":"1","bcode":"115","code":"11508","name":"\uc218\uc601\uc7a5"},"11509":{"kcode":"8125","tcode":"23","mcode":"1","bcode":"115","code":"11509","name":"\ub9ac\uc870\ud2b8"},"11510":{"kcode":"8126","tcode":"23","mcode":"1","bcode":"115","code":"11510","name":"\ud39c\uc158"},"11511":{"kcode":"8127","tcode":"23","mcode":"1","bcode":"115","code":"11511","name":"\ubbfc\ubc15"},"11512":{"kcode":"8128","tcode":"23","mcode":"1","bcode":"115","code":"11512","name":"\ubc29\uac08\ub85c"},"11513":{"kcode":"8129","tcode":"23","mcode":"1","bcode":"115","code":"11513","name":"\ud718\ud2b8\ub2c8\uc2a4\uc13c\ud130"},"11514":{"kcode":"8130","tcode":"23","mcode":"1","bcode":"115","code":"11514","name":"\ubcfc\ub9c1\uc7a5"},"11515":{"kcode":"8131","tcode":"23","mcode":"1","bcode":"115","code":"11515","name":"\uc624\ub77d\u00b7PC\ubc29"},"11520":{"kcode":"8136","tcode":"23","mcode":"1","bcode":"115","code":"11520","name":"\uc694\uac00\ud559\uc6d0"},"11521":{"kcode":"8137","tcode":"23","mcode":"1","bcode":"115","code":"11521","name":"\ub304\uc2a4\ud559\uc6d0"},"11522":{"kcode":"22056","tcode":"23","mcode":"1","bcode":"115","code":"11522","name":"E-\uc2a4\ud3ec\uce20"},"11523":{"kcode":"22057","tcode":"23","mcode":"1","bcode":"115","code":"11523","name":"\ud14c\ub9c8\ud30c\ud06c"},"11524":{"kcode":"22058","tcode":"23","mcode":"1","bcode":"115","code":"11524","name":"\uc2a4\ud0a4\uc7a5"},"11525":{"kcode":"22059","tcode":"23","mcode":"1","bcode":"115","code":"11525","name":"\ub2f9\uad6c\uc7a5"},"11526":{"kcode":"22060","tcode":"23","mcode":"1","bcode":"115","code":"11526","name":"\ubb34\uc220\u00b7\uaca9\ud22c"}}},"118":{"kcode":"7912","tcode":"8","mcode":"8","bcode":"1","code":"118","name":"AS\u00b7\uce74\uc13c\ud130\u00b7\uc8fc\uc720","keyword":{"11801":{"kcode":"8170","tcode":"23","mcode":"1","bcode":"118","code":"11801","name":"\uacbd\uc815\ube44"},"11802":{"kcode":"8171","tcode":"23","mcode":"1","bcode":"118","code":"11802","name":"\uc911\uc815\ube44"},"11803":{"kcode":"8172","tcode":"23","mcode":"1","bcode":"118","code":"11803","name":"\uac80\uc0ac\uc18c"},"11804":{"kcode":"8173","tcode":"23","mcode":"1","bcode":"118","code":"11804","name":"\uce74\uc13c\ud130"},"11805":{"kcode":"8174","tcode":"23","mcode":"1","bcode":"118","code":"11805","name":"A\u00b7S\uc13c\ud130"},"11807":{"kcode":"22061","tcode":"23","mcode":"1","bcode":"118","code":"11807","name":"\uc8fc\uc720\u00b7LPG"}}},"119":{"kcode":"7909","tcode":"8","mcode":"8","bcode":"1","code":"119","name":"\ub80c\ud0c8\u00b7\uc784\ub300","keyword":{"11901":{"kcode":"8138","tcode":"23","mcode":"1","bcode":"119","code":"11901","name":"\ub80c\ud0c8\uc0f5"},"11902":{"kcode":"8139","tcode":"23","mcode":"1","bcode":"119","code":"11902","name":"\uc784\ub300"},"11903":{"kcode":"8140","tcode":"23","mcode":"1","bcode":"119","code":"11903","name":"\ub300\uc5ec\uc810(\ucc45,DVD)"},"11904":{"kcode":"8141","tcode":"23","mcode":"1","bcode":"119","code":"11904","name":"\ub80c\ud130\uce74"},"11905":{"kcode":"8142","tcode":"23","mcode":"1","bcode":"119","code":"11905","name":"\uc624\ud1a0\ub9ac\uc2a4"}}},"120":{"kcode":"7910","tcode":"8","mcode":"8","bcode":"1","code":"120","name":"\uc6e8\ub529\u00b7\uc7a5\ub840\u00b7\uc774\ubca4\ud2b8","keyword":{"12001":{"kcode":"8143","tcode":"23","mcode":"1","bcode":"120","code":"12001","name":"\uc608\uc2dd\uc7a5\u00b7\uc6e8\ub529\ud640"},"12002":{"kcode":"8144","tcode":"23","mcode":"1","bcode":"120","code":"12002","name":"\uacb0\ud63c\uc815\ubcf4\ud68c\uc0ac"},"12003":{"kcode":"8145","tcode":"23","mcode":"1","bcode":"120","code":"12003","name":"\ucee4\ud50c\ub9e4\ub2c8\uc800"},"12004":{"kcode":"22062","tcode":"23","mcode":"1","bcode":"120","code":"12004","name":"\uc774\ubca4\ud2b8\u00b7\uacf5\uc5f0"},"12005":{"kcode":"22063","tcode":"23","mcode":"1","bcode":"120","code":"12005","name":"\uc7a5\ub840\u00b7\uc0c1\uc870"},"12006":{"kcode":"26615","tcode":"23","mcode":"1","bcode":"120","code":"12006","name":"\uc6e8\ub529\ucee8\uc124\ud305"}}},"121":{"kcode":"7916","tcode":"8","mcode":"8","bcode":"1","code":"121","name":"\uae30\ud0c0\uc11c\ube44\uc2a4\uc5c5","keyword":{"12102":{"kcode":"8225","tcode":"23","mcode":"1","bcode":"121","code":"12102","name":"\ud3ec\uc7a5"},"12104":{"kcode":"8227","tcode":"23","mcode":"1","bcode":"121","code":"12104","name":"\uaf43\uc9d1"},"12108":{"kcode":"8231","tcode":"23","mcode":"1","bcode":"121","code":"12108","name":"\uc138\ud0c1\uc18c"},"12113":{"kcode":"21787","tcode":"23","mcode":"1","bcode":"121","code":"12113","name":"\uc0ac\uc801\uc9c0\uad00\ub9ac"},"12114":{"kcode":"21788","tcode":"23","mcode":"1","bcode":"121","code":"12114","name":"\uc2dd\ubb3c\uc6d0\u00b7\ub3d9\ubb3c\uc6d0"},"12115":{"kcode":"21789","tcode":"23","mcode":"1","bcode":"121","code":"12115","name":"\ub178\ub798\uc5f0\uc2b5\uc2e4"},"12116":{"kcode":"21790","tcode":"23","mcode":"1","bcode":"121","code":"12116","name":"\ubcf5\uad8c\ubc1c\ud589"},"12117":{"kcode":"22095","tcode":"23","mcode":"1","bcode":"121","code":"12117","name":"\ub3c5\uc11c\uc2e4"},"12118":{"kcode":"22979","tcode":"23","mcode":"1","bcode":"121","code":"12118","name":"\uc560\uacac\uc13c\ud130 \ud6c8\ub828"}}},"122":{"kcode":"22064","tcode":"8","mcode":"8","bcode":"1","code":"122","name":"\ubdf0\ud2f0\u00b7\ubbf8\uc6a9","keyword":{"12201":{"kcode":"22065","tcode":"23","mcode":"1","bcode":"122","code":"12201","name":"\ud5e4\uc5b4\uc0f5"},"12202":{"kcode":"22066","tcode":"23","mcode":"1","bcode":"122","code":"12202","name":"\ud53c\ubd80\uad00\ub9ac"},"12203":{"kcode":"22067","tcode":"23","mcode":"1","bcode":"122","code":"12203","name":"\ub450\ud53c\uad00\ub9ac"},"12204":{"kcode":"22068","tcode":"23","mcode":"1","bcode":"122","code":"12204","name":"\ub2e4\uc774\uc5b4\ud2b8"},"12205":{"kcode":"22069","tcode":"23","mcode":"1","bcode":"122","code":"12205","name":"\uc2a4\ud30c\u00b7\ucc1c\uc9c8\ubc29"},"12206":{"kcode":"22070","tcode":"23","mcode":"1","bcode":"122","code":"12206","name":"\ub9c8\uc0ac\uc9c0"},"12207":{"kcode":"22071","tcode":"23","mcode":"1","bcode":"122","code":"12207","name":"\uc560\uacac\ubbf8\uc6a9"},"12208":{"kcode":"22094","tcode":"23","mcode":"1","bcode":"122","code":"12208","name":"\ub124\uc77c\uc544\ud2b8"},"12209":{"kcode":"8371","tcode":"23","mcode":"1","bcode":"122","code":"12209","name":"\uba54\uc774\ud06c\uc5c5"}}}}},"2":{"bcode":"2","name":"\uc81c\uc870\u00b7\ud654\ud559","code":{"201":{"kcode":"7917","tcode":"8","mcode":"8","bcode":"2","code":"201","name":"\uc804\uae30\u00b7\uc804\uc790\u00b7\uc81c\uc5b4","keyword":{"20101":{"kcode":"8254","tcode":"23","mcode":"2","bcode":"201","code":"20101","name":"Micom"},"20102":{"kcode":"8255","tcode":"23","mcode":"2","bcode":"201","code":"20102","name":"\uae30\uad6c\uc124\uacc4"},"20103":{"kcode":"8256","tcode":"23","mcode":"2","bcode":"201","code":"20103","name":"Microprocessor"},"20104":{"kcode":"8257","tcode":"23","mcode":"2","bcode":"201","code":"20104","name":"SMT"},"20105":{"kcode":"8236","tcode":"23","mcode":"2","bcode":"201","code":"20105","name":"\uc804\uae30"},"20106":{"kcode":"8237","tcode":"23","mcode":"2","bcode":"201","code":"20106","name":"\ud68c\ub85c\uc124\uacc4"},"20107":{"kcode":"8238","tcode":"23","mcode":"2","bcode":"201","code":"20107","name":"\uc804\uae30\uc124\ube44"},"20108":{"kcode":"8239","tcode":"23","mcode":"2","bcode":"201","code":"20108","name":"\uc804\uae30\uc124\uacc4"},"20109":{"kcode":"8240","tcode":"23","mcode":"2","bcode":"201","code":"20109","name":"\uc804\uae30\uae30\uc220"},"20110":{"kcode":"8241","tcode":"23","mcode":"2","bcode":"201","code":"20110","name":"\uc804\uae30\uacf5\uc0ac"},"20112":{"kcode":"8243","tcode":"23","mcode":"2","bcode":"201","code":"20112","name":"\uc790\ub3d9\uc81c\uc5b4"},"20113":{"kcode":"8244","tcode":"23","mcode":"2","bcode":"201","code":"20113","name":"PLC"},"20114":{"kcode":"8245","tcode":"23","mcode":"2","bcode":"201","code":"20114","name":"\uc804\uc790"},"20117":{"kcode":"8248","tcode":"23","mcode":"2","bcode":"201","code":"20117","name":"RF"},"20119":{"kcode":"8250","tcode":"23","mcode":"2","bcode":"201","code":"20119","name":"SEM\u00b7TEM"},"20121":{"kcode":"8252","tcode":"23","mcode":"2","bcode":"201","code":"20121","name":"Hardware"},"20122":{"kcode":"8253","tcode":"23","mcode":"2","bcode":"201","code":"20122","name":"Firmware"},"20123":{"kcode":"8258","tcode":"23","mcode":"2","bcode":"201","code":"20123","name":"HMI\u00b7MMI"},"20124":{"kcode":"22160","tcode":"23","mcode":"2","bcode":"201","code":"20124","name":"\uac00\uc804\uc81c\ud488"}}},"202":{"kcode":"7920","tcode":"8","mcode":"8","bcode":"2","code":"202","name":"\uae30\uacc4\u00b7\uc124\ube44\u00b7\uc790\ub3d9\ucc28","keyword":{"20205":{"kcode":"8302","tcode":"23","mcode":"2","bcode":"202","code":"20205","name":"\uae30\uacc4"},"20206":{"kcode":"8303","tcode":"23","mcode":"2","bcode":"202","code":"20206","name":"\uae30\uacc4\uc124\ube44"},"20207":{"kcode":"8304","tcode":"23","mcode":"2","bcode":"202","code":"20207","name":"\uae30\uacc4\uc124\uacc4"},"20208":{"kcode":"8305","tcode":"23","mcode":"2","bcode":"202","code":"20208","name":"CAD\u00b7CAM"},"20210":{"kcode":"8306","tcode":"23","mcode":"2","bcode":"202","code":"20210","name":"\uba54\uce74\ud2b8\ub85c\ub2c9\uc2a4"},"20211":{"kcode":"8307","tcode":"23","mcode":"2","bcode":"202","code":"20211","name":"\uc790\ub3d9\ucc28\uc815\ube44"},"20212":{"kcode":"8308","tcode":"23","mcode":"2","bcode":"202","code":"20212","name":"\uc790\ub3d9\ucc28"},"20214":{"kcode":"8309","tcode":"23","mcode":"2","bcode":"202","code":"20214","name":"\uc790\ub3d9\ucc28\ubd80\ud488"}}},"204":{"kcode":"7924","tcode":"8","mcode":"8","bcode":"2","code":"204","name":"\uc11d\uc720\u00b7\ud654\ud559\u00b7\uc5d0\ub108\uc9c0","keyword":{"20401":{"kcode":"8327","tcode":"23","mcode":"2","bcode":"204","code":"20401","name":"\uc8fc\uc720"},"20402":{"kcode":"8328","tcode":"23","mcode":"2","bcode":"204","code":"20402","name":"\uc815\uc720"},"20403":{"kcode":"8329","tcode":"23","mcode":"2","bcode":"204","code":"20403","name":"\uc11d\uc720\ud654\ud559"},"20404":{"kcode":"8330","tcode":"23","mcode":"2","bcode":"204","code":"20404","name":"\ud654\ud559"},"20405":{"kcode":"8331","tcode":"23","mcode":"2","bcode":"204","code":"20405","name":"\ud654\uacf5"},"20406":{"kcode":"8332","tcode":"23","mcode":"2","bcode":"204","code":"20406","name":"\uc5d0\ub108\uc9c0"},"20412":{"kcode":"8338","tcode":"23","mcode":"2","bcode":"204","code":"20412","name":"\ud504\ub77c\uc2a4\ud2f1\uc81c\uc870"},"20414":{"kcode":"8339","tcode":"23","mcode":"2","bcode":"204","code":"20414","name":"\uc0ac\ucd9c\u00b7\uc555\ucd9c"},"20415":{"kcode":"8340","tcode":"23","mcode":"2","bcode":"204","code":"20415","name":"\ud3f4\ub9ac\uba38"},"20417":{"kcode":"8341","tcode":"23","mcode":"2","bcode":"204","code":"20417","name":"\uc6d0\uc790\ub825"},"20418":{"kcode":"8342","tcode":"23","mcode":"2","bcode":"204","code":"20418","name":"\ub3c4\ub8cc"},"20419":{"kcode":"8343","tcode":"23","mcode":"2","bcode":"204","code":"20419","name":"\uc720\uae30\ud569\uc131"},"20420":{"kcode":"8344","tcode":"23","mcode":"2","bcode":"204","code":"20420","name":"\uace0\ubb34"}}},"205":{"kcode":"7925","tcode":"8","mcode":"8","bcode":"2","code":"205","name":"\uc12c\uc720\u00b7\uc758\ub958\u00b7\ud328\uc158","keyword":{"20501":{"kcode":"8345","tcode":"23","mcode":"2","bcode":"205","code":"20501","name":"\uc12c\uc720"},"20503":{"kcode":"8346","tcode":"23","mcode":"2","bcode":"205","code":"20503","name":"\uc758\ub958\u00b7\uc758\uc0c1"},"20504":{"kcode":"8348","tcode":"23","mcode":"2","bcode":"205","code":"20504","name":"\ub514\uc2a4\ud50c\ub808\uc774"},"20506":{"kcode":"8347","tcode":"23","mcode":"2","bcode":"205","code":"20506","name":"\ud328\uc158"},"20508":{"kcode":"8349","tcode":"23","mcode":"2","bcode":"205","code":"20508","name":"\ucf54\ub514\ub124\uc774\ud130"},"20509":{"kcode":"8350","tcode":"23","mcode":"2","bcode":"205","code":"20509","name":"\uc545\uc138\uc11c\ub9ac"},"20511":{"kcode":"8351","tcode":"23","mcode":"2","bcode":"205","code":"20511","name":"\ub0a8\uc131\uc758\ub958"},"20512":{"kcode":"8352","tcode":"23","mcode":"2","bcode":"205","code":"20512","name":"\uc5ec\uc131\uc758\ub958"},"20513":{"kcode":"8353","tcode":"23","mcode":"2","bcode":"205","code":"20513","name":"\uc720\uc544\uc758\ub958"},"20514":{"kcode":"8354","tcode":"23","mcode":"2","bcode":"205","code":"20514","name":"\uc774\ub108\uc6e8\uc5b4"},"20515":{"kcode":"8355","tcode":"23","mcode":"2","bcode":"205","code":"20515","name":"\uc12c\uc720\uacf5\ud559"},"20516":{"kcode":"8356","tcode":"23","mcode":"2","bcode":"205","code":"20516","name":"\uc96c\uc5bc\ub9ac"},"20517":{"kcode":"8357","tcode":"23","mcode":"2","bcode":"205","code":"20517","name":"\uc7a1\ud654"}}},"207":{"kcode":"7928","tcode":"8","mcode":"8","bcode":"2","code":"207","name":"\ud654\uc7a5\ud488\u00b7\ubdf0\ud2f0","keyword":{"20701":{"kcode":"8370","tcode":"23","mcode":"2","bcode":"207","code":"20701","name":"\ud654\uc7a5\ud488"},"20704":{"kcode":"8373","tcode":"23","mcode":"2","bcode":"207","code":"20704","name":"\ubdf0\ud2f0"}}},"208":{"kcode":"7929","tcode":"8","mcode":"8","bcode":"2","code":"208","name":"\uc0dd\ud65c\uc6a9\ud488\u00b7\uc18c\ube44\uc7ac\u00b7\uc0ac\ubb34","keyword":{"20801":{"kcode":"8376","tcode":"23","mcode":"2","bcode":"208","code":"20801","name":"\uc18c\ube44\uc7ac"},"20804":{"kcode":"8377","tcode":"23","mcode":"2","bcode":"208","code":"20804","name":"\uc0dd\ud65c\uc6a9\ud488"},"20805":{"kcode":"8378","tcode":"23","mcode":"2","bcode":"208","code":"20805","name":"\uc644\uad6c"},"20806":{"kcode":"8379","tcode":"23","mcode":"2","bcode":"208","code":"20806","name":"\uc0ac\ubb34\uc6a9\ud488"},"20808":{"kcode":"8381","tcode":"23","mcode":"2","bcode":"208","code":"20808","name":"\ubb38\uad6c\u00b7\ud32c\uc2dc"}}},"209":{"kcode":"7923","tcode":"8","mcode":"8","bcode":"2","code":"209","name":"\uac00\uad6c\u00b7\ubaa9\uc7ac\u00b7\uc81c\uc9c0","keyword":{"20901":{"kcode":"8322","tcode":"23","mcode":"2","bcode":"209","code":"20901","name":"\ubaa9\uc7ac"},"20902":{"kcode":"8323","tcode":"23","mcode":"2","bcode":"209","code":"20902","name":"\uc81c\uc9c0"},"20903":{"kcode":"8324","tcode":"23","mcode":"2","bcode":"209","code":"20903","name":"\uac00\uad6c"},"20904":{"kcode":"8325","tcode":"23","mcode":"2","bcode":"209","code":"20904","name":"\ubd80\uc5cc\uac00\uad6c"},"20905":{"kcode":"8326","tcode":"23","mcode":"2","bcode":"209","code":"20905","name":"\uc0ac\ubb34\uc6a9\uac00\uad6c"}}},"210":{"kcode":"7930","tcode":"8","mcode":"8","bcode":"2","code":"210","name":"\ub18d\uc5c5\u00b7\uc5b4\uc5c5\u00b7\uad11\uc5c5\u00b7\uc784\uc5c5","keyword":{"21001":{"kcode":"8382","tcode":"23","mcode":"2","bcode":"210","code":"21001","name":"\ub18d\uc5c5"},"21002":{"kcode":"8383","tcode":"23","mcode":"2","bcode":"210","code":"21002","name":"\uc5b4\uc5c5"},"21003":{"kcode":"8384","tcode":"23","mcode":"2","bcode":"210","code":"21003","name":"\ucd95\uc0b0"},"21004":{"kcode":"8385","tcode":"23","mcode":"2","bcode":"210","code":"21004","name":"\uc218\uc0b0\uc5c5"},"21005":{"kcode":"8386","tcode":"23","mcode":"2","bcode":"210","code":"21005","name":"\uc784\uc5c5"},"21006":{"kcode":"8387","tcode":"23","mcode":"2","bcode":"210","code":"21006","name":"\uad11\uc5c5"}}},"211":{"kcode":"7922","tcode":"8","mcode":"8","bcode":"2","code":"211","name":"\uae08\uc18d\u00b7\uc7ac\ub8cc\u00b7\ucca0\uac15\u00b7\uc694\uc5c5","keyword":{"21101":{"kcode":"8314","tcode":"23","mcode":"2","bcode":"211","code":"21101","name":"\uae08\uc18d"},"21102":{"kcode":"8315","tcode":"23","mcode":"2","bcode":"211","code":"21102","name":"\uae08\uc18d\uc7ac\ub8cc"},"21103":{"kcode":"8321","tcode":"23","mcode":"2","bcode":"211","code":"21103","name":"\uc694\uc5c5"},"21104":{"kcode":"8316","tcode":"23","mcode":"2","bcode":"211","code":"21104","name":"\uc138\ub77c\ubbf9\uc2a4"},"21105":{"kcode":"8317","tcode":"23","mcode":"2","bcode":"211","code":"21105","name":"\ucca0\uac15"},"21106":{"kcode":"8319","tcode":"23","mcode":"2","bcode":"211","code":"21106","name":"\uc81c\ub828\u00b7\uc81c\uac15"},"21107":{"kcode":"8320","tcode":"23","mcode":"2","bcode":"211","code":"21107","name":"\uc2e0\uc18c\uc7ac"},"21108":{"kcode":"8318","tcode":"23","mcode":"2","bcode":"211","code":"21108","name":"\uc81c\ucca0"}}},"212":{"kcode":"7921","tcode":"8","mcode":"8","bcode":"2","code":"212","name":"\uc870\uc120\u00b7\ud56d\uacf5\u00b7\uc6b0\uc8fc","keyword":{"21201":{"kcode":"8310","tcode":"23","mcode":"2","bcode":"212","code":"21201","name":"\uc870\uc120"},"21202":{"kcode":"8311","tcode":"23","mcode":"2","bcode":"212","code":"21202","name":"\ud56d\uacf5"},"21203":{"kcode":"8312","tcode":"23","mcode":"2","bcode":"212","code":"21203","name":"\uc6b0\uc8fc"},"21204":{"kcode":"8313","tcode":"23","mcode":"2","bcode":"212","code":"21204","name":"\uc120\ubc15"}}},"213":{"kcode":"7931","tcode":"8","mcode":"8","bcode":"2","code":"213","name":"\uae30\ud0c0\uc81c\uc870\uc5c5","keyword":{"21301":{"kcode":"8388","tcode":"23","mcode":"2","bcode":"213","code":"21301","name":"\uae30\ud0c0\uc81c\uc870\uc5c5"},"21302":{"kcode":"21791","tcode":"23","mcode":"2","bcode":"213","code":"21302","name":"\uc9c0\ub3c4\uc81c\uc791\uc5c5"},"21303":{"kcode":"21792","tcode":"23","mcode":"2","bcode":"213","code":"21303","name":"\uc81c\uc870\uc5c5 \ud68c\uc0ac\ubcf8\uc0ac"}}},"214":{"kcode":"7926","tcode":"8","mcode":"8","bcode":"2","code":"214","name":"\uc2dd\ud488\uac00\uacf5\u00b7\uac1c\ubc1c","keyword":{"21401":{"kcode":"8358","tcode":"23","mcode":"2","bcode":"214","code":"21401","name":"\uc2dd\uc74c\ub8cc"},"21402":{"kcode":"8359","tcode":"23","mcode":"2","bcode":"214","code":"21402","name":"\uc2dd\ud488\uac00\uacf5"},"21403":{"kcode":"8360","tcode":"23","mcode":"2","bcode":"214","code":"21403","name":"\uc81c\uacfc\uc81c\ube75"}}},"215":{"kcode":"7918","tcode":"8","mcode":"8","bcode":"2","code":"215","name":"\ubc18\ub3c4\uccb4\u00b7\uad11\ud559\u00b7LCD","keyword":{"21501":{"kcode":"8259","tcode":"23","mcode":"2","bcode":"215","code":"21501","name":"\ubc18\ub3c4\uccb4"},"21502":{"kcode":"8260","tcode":"23","mcode":"2","bcode":"215","code":"21502","name":"PCB"},"21503":{"kcode":"8261","tcode":"23","mcode":"2","bcode":"215","code":"21503","name":"IC\uc124\uacc4"},"21506":{"kcode":"8264","tcode":"23","mcode":"2","bcode":"215","code":"21506","name":"LCD"},"21507":{"kcode":"8265","tcode":"23","mcode":"2","bcode":"215","code":"21507","name":"TFT"},"21508":{"kcode":"8266","tcode":"23","mcode":"2","bcode":"215","code":"21508","name":"DVD"},"21509":{"kcode":"8267","tcode":"23","mcode":"2","bcode":"215","code":"21509","name":"\ub514\uc2a4\ud50c\ub808\uc774"},"21510":{"kcode":"8268","tcode":"23","mcode":"2","bcode":"215","code":"21510","name":"PDP"},"21511":{"kcode":"8269","tcode":"23","mcode":"2","bcode":"215","code":"21511","name":"\uc815\ubc00\uad11\ud559"},"21512":{"kcode":"8270","tcode":"23","mcode":"2","bcode":"215","code":"21512","name":"\ubc1c\uad11\ub2e4\uc774\uc624\ub4dc"},"21513":{"kcode":"8271","tcode":"23","mcode":"2","bcode":"215","code":"21513","name":"LED\u00b7AMOLED"}}},"216":{"kcode":"22154","tcode":"8","mcode":"8","bcode":"2","code":"216","name":"\ud658\uacbd","keyword":{"21601":{"kcode":"22155","tcode":"23","mcode":"2","bcode":"216","code":"21601","name":"\ud658\uacbd"},"21602":{"kcode":"22156","tcode":"23","mcode":"2","bcode":"216","code":"21602","name":"\uc218\uc9c8\ud658\uacbd"},"21603":{"kcode":"22157","tcode":"23","mcode":"2","bcode":"216","code":"21603","name":"\ub300\uae30\ud658\uacbd"},"21604":{"kcode":"22158","tcode":"23","mcode":"2","bcode":"216","code":"21604","name":"\ud3d0\uae30\ubb3c\ucc98\ub9ac"},"21605":{"kcode":"22159","tcode":"23","mcode":"2","bcode":"216","code":"21605","name":"\uc18c\uc74c\uc9c4\ub3d9"}}}}},"3":{"bcode":"3","name":"IT\u00b7\uc6f9\u00b7\ud1b5\uc2e0","code":{"301":{"kcode":"7939","tcode":"8","mcode":"8","bcode":"3","code":"301","name":"\uc194\ub8e8\uc158\u00b7SI\u00b7ERP\u00b7CRM","keyword":{"30101":{"kcode":"8452","tcode":"23","mcode":"3","bcode":"301","code":"30101","name":"SI\u00b7\uc2dc\uc2a4\ud15c\ud1b5\ud569"},"30102":{"kcode":"8453","tcode":"23","mcode":"3","bcode":"301","code":"30102","name":"ERP"},"30103":{"kcode":"8454","tcode":"23","mcode":"3","bcode":"301","code":"30103","name":"CRM"},"30104":{"kcode":"8455","tcode":"23","mcode":"3","bcode":"301","code":"30104","name":"DRM"},"30105":{"kcode":"8456","tcode":"23","mcode":"3","bcode":"301","code":"30105","name":"DW"},"30106":{"kcode":"8457","tcode":"23","mcode":"3","bcode":"301","code":"30106","name":"KMS"},"30107":{"kcode":"8458","tcode":"23","mcode":"3","bcode":"301","code":"30107","name":"NI\u00b7\ub124\ud2b8\uc6cc\ud06c\ud1b5\ud569"},"30108":{"kcode":"8459","tcode":"23","mcode":"3","bcode":"301","code":"30108","name":"DataMining"},"30110":{"kcode":"8461","tcode":"23","mcode":"3","bcode":"301","code":"30110","name":"OLAP"},"30111":{"kcode":"8462","tcode":"23","mcode":"3","bcode":"301","code":"30111","name":"SCM"},"30112":{"kcode":"8463","tcode":"23","mcode":"3","bcode":"301","code":"30112","name":"DBMS"},"30113":{"kcode":"8464","tcode":"23","mcode":"3","bcode":"301","code":"30113","name":"\uc2dc\uc2a4\ud15c\uad00\ub9ac"},"30114":{"kcode":"8465","tcode":"23","mcode":"3","bcode":"301","code":"30114","name":"BPR"},"30115":{"kcode":"8466","tcode":"23","mcode":"3","bcode":"301","code":"30115","name":"BSC"},"30116":{"kcode":"22161","tcode":"23","mcode":"3","bcode":"301","code":"30116","name":"\uc194\ub8e8\uc158\uc5c5\uccb4"},"30117":{"kcode":"22162","tcode":"23","mcode":"3","bcode":"301","code":"30117","name":"ASP"},"30118":{"kcode":"22163","tcode":"23","mcode":"3","bcode":"301","code":"30118","name":"\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c"},"30119":{"kcode":"26616","tcode":"23","mcode":"3","bcode":"301","code":"30119","name":"SEM"},"30120":{"kcode":"26617","tcode":"23","mcode":"3","bcode":"301","code":"30120","name":"SM"}}},"302":{"kcode":"7932","tcode":"8","mcode":"8","bcode":"3","code":"302","name":"\uc6f9\uc5d0\uc774\uc83c\uc2dc","keyword":{"30201":{"kcode":"8389","tcode":"23","mcode":"3","bcode":"302","code":"30201","name":"\uc6f9\uc5d0\uc774\uc804\uc2dc"},"30202":{"kcode":"8390","tcode":"23","mcode":"3","bcode":"302","code":"30202","name":"\uc6f9\ud504\ub85c\ub355\uc158"},"30203":{"kcode":"8391","tcode":"23","mcode":"3","bcode":"302","code":"30203","name":"\uc6f9\uc2a4\ud29c\ub514\uc624"}}},"304":{"kcode":"7934","tcode":"8","mcode":"8","bcode":"3","code":"304","name":"\uc1fc\ud551\ubab0\u00b7\uc624\ud508\ub9c8\ucf13","keyword":{"30401":{"kcode":"8408","tcode":"23","mcode":"3","bcode":"304","code":"30401","name":"\uc804\uc790\uc0c1\uac70\ub798"},"30403":{"kcode":"8410","tcode":"23","mcode":"3","bcode":"304","code":"30403","name":"\uc1fc\ud551\ubab0"},"30404":{"kcode":"8411","tcode":"23","mcode":"3","bcode":"304","code":"30404","name":"B2B"},"30405":{"kcode":"8412","tcode":"23","mcode":"3","bcode":"304","code":"30405","name":"\uc625\uc158\u00b7\uacbd\ub9e4"},"30406":{"kcode":"8413","tcode":"23","mcode":"3","bcode":"304","code":"30406","name":"B2C"},"30407":{"kcode":"8414","tcode":"23","mcode":"3","bcode":"304","code":"30407","name":"\uc624\ud508\ub9c8\ucf13"},"30408":{"kcode":"8415","tcode":"23","mcode":"3","bcode":"304","code":"30408","name":"\uac00\uaca9\ube44\uad50"}}},"305":{"kcode":"7933","tcode":"8","mcode":"8","bcode":"3","code":"305","name":"\ud3ec\ud138\u00b7\uc778\ud130\ub137\u00b7\ucee8\ud150\uce20","keyword":{"30501":{"kcode":"8392","tcode":"23","mcode":"3","bcode":"305","code":"30501","name":"\uc885\ud569\ud3ec\ud138"},"30502":{"kcode":"8393","tcode":"23","mcode":"3","bcode":"305","code":"30502","name":"\ucee8\ud150\uce20\uc81c\uacf5"},"30503":{"kcode":"8394","tcode":"23","mcode":"3","bcode":"305","code":"30503","name":"\ucde8\uc5c5\ud3ec\ud138"},"30504":{"kcode":"8395","tcode":"23","mcode":"3","bcode":"305","code":"30504","name":"\uc5ec\uc131\ud3ec\ud138"},"30505":{"kcode":"8396","tcode":"23","mcode":"3","bcode":"305","code":"30505","name":"\uc778\ud130\ub137\uc601\ud654"},"30506":{"kcode":"8397","tcode":"23","mcode":"3","bcode":"305","code":"30506","name":"\uc778\ud130\ub137\ubc29\uc1a1"},"30507":{"kcode":"8398","tcode":"23","mcode":"3","bcode":"305","code":"30507","name":"\uc778\ud130\ub137\uae08\uc735"},"30508":{"kcode":"8399","tcode":"23","mcode":"3","bcode":"305","code":"30508","name":"\uc778\ud130\ub137\uad50\uc721"},"30509":{"kcode":"8400","tcode":"23","mcode":"3","bcode":"305","code":"30509","name":"\uc778\ud130\ub137\ub9cc\ud654"},"30510":{"kcode":"8401","tcode":"23","mcode":"3","bcode":"305","code":"30510","name":"\uc778\ud130\ub137\ubd80\ub3d9\uc0b0"},"30512":{"kcode":"8403","tcode":"23","mcode":"3","bcode":"305","code":"30512","name":"\uac8c\uc784\ud3ec\ud138"},"30513":{"kcode":"8404","tcode":"23","mcode":"3","bcode":"305","code":"30513","name":"\uc778\ud130\ub137\uc5ec\ud589"},"30514":{"kcode":"8405","tcode":"23","mcode":"3","bcode":"305","code":"30514","name":"\uc778\ud130\ub137\ubc95\ub960"},"30515":{"kcode":"8406","tcode":"23","mcode":"3","bcode":"305","code":"30515","name":"\uc778\ud130\ub137\uc0dd\ud65c\uc815\ubcf4"},"30516":{"kcode":"8407","tcode":"23","mcode":"3","bcode":"305","code":"30516","name":"\ucee4\ubba4\ub2c8\ud2f0"},"30517":{"kcode":"22164","tcode":"23","mcode":"3","bcode":"305","code":"30517","name":"\uc778\ud130\ub137\ub274\uc2a4\u00b7\uc2e0\ubb38"},"30518":{"kcode":"22165","tcode":"23","mcode":"3","bcode":"305","code":"30518","name":"\uc778\ud130\ub137\uac74\uac15\u00b7\uc758\ud559"},"30519":{"kcode":"22166","tcode":"23","mcode":"3","bcode":"305","code":"30519","name":"\uc885\uad50\ud3ec\ud138"},"30520":{"kcode":"22167","tcode":"23","mcode":"3","bcode":"305","code":"30520","name":"\uc778\ud130\ub137\uc11c\uc810"},"30521":{"kcode":"22168","tcode":"23","mcode":"3","bcode":"305","code":"30521","name":"\uc778\ud130\ub137\uc74c\uc545"}}},"306":{"kcode":"7936","tcode":"8","mcode":"8","bcode":"3","code":"306","name":"\ub124\ud2b8\uc6cc\ud06c\u00b7\ud1b5\uc2e0\u00b7\ubaa8\ubc14\uc77c","keyword":{"30601":{"kcode":"8418","tcode":"23","mcode":"3","bcode":"306","code":"30601","name":"\ub124\ud2b8\uc6cd\uad6c\ucd95"},"30602":{"kcode":"8419","tcode":"23","mcode":"3","bcode":"306","code":"30602","name":"\ud1b5\uc2e0"},"30603":{"kcode":"8420","tcode":"23","mcode":"3","bcode":"306","code":"30603","name":"\ud154\ub808\ucf64"},"30607":{"kcode":"8424","tcode":"23","mcode":"3","bcode":"306","code":"30607","name":"\uc640\uc774\ube0c\ub85c"},"30608":{"kcode":"8425","tcode":"23","mcode":"3","bcode":"306","code":"30608","name":"\ubaa8\ubc14\uc77c"},"30609":{"kcode":"8426","tcode":"23","mcode":"3","bcode":"306","code":"30609","name":"\uc720\ube44\ucffc\ud130\uc2a4"},"30610":{"kcode":"8427","tcode":"23","mcode":"3","bcode":"306","code":"30610","name":"\ube14\ub8e8\ud22c\uc2a4"},"30612":{"kcode":"8429","tcode":"23","mcode":"3","bcode":"306","code":"30612","name":"WIPI"},"30613":{"kcode":"8430","tcode":"23","mcode":"3","bcode":"306","code":"30613","name":"WAP"},"30614":{"kcode":"8431","tcode":"23","mcode":"3","bcode":"306","code":"30614","name":"PDA\u00b7\uc2a4\ub9c8\ud2b8\ud3f0"},"30615":{"kcode":"8432","tcode":"23","mcode":"3","bcode":"306","code":"30615","name":"\ubaa8\ubc14\uc77c\uac8c\uc784"},"30616":{"kcode":"22169","tcode":"23","mcode":"3","bcode":"306","code":"30616","name":"\ubc45\ud0b9\u00b7\ube4c\ub9c1"},"30617":{"kcode":"26618","tcode":"23","mcode":"3","bcode":"306","code":"30617","name":"CDN"},"30618":{"kcode":"26619","tcode":"23","mcode":"3","bcode":"306","code":"30618","name":"\uc6f9\ud638\uc2a4\ud305"},"30619":{"kcode":"26620","tcode":"23","mcode":"3","bcode":"306","code":"30619","name":"\uc778\ud130\ub137\uc804\ud654"},"30620":{"kcode":"26621","tcode":"23","mcode":"3","bcode":"306","code":"30620","name":"\uc544\uc774\ud3f0"},"30621":{"kcode":"26622","tcode":"23","mcode":"3","bcode":"306","code":"30621","name":"\uc548\ub4dc\ub85c\uc774\ub4dc"},"30622":{"kcode":"26623","tcode":"23","mcode":"3","bcode":"306","code":"30622","name":"\uc708\ub3c4\uc6b0\ubaa8\ubc14\uc77c"},"30623":{"kcode":"26624","tcode":"23","mcode":"3","bcode":"306","code":"30623","name":"\ud154\ub808\ub9e4\ud2f1\uc2a4"},"30624":{"kcode":"26625","tcode":"23","mcode":"3","bcode":"306","code":"30624","name":"HDML"},"30625":{"kcode":"26626","tcode":"23","mcode":"3","bcode":"306","code":"30625","name":"mHTML"},"30626":{"kcode":"26627","tcode":"23","mcode":"3","bcode":"306","code":"30626","name":"cHTML"},"30627":{"kcode":"26628","tcode":"23","mcode":"3","bcode":"306","code":"30627","name":"GSM\u00b7GVM"},"30628":{"kcode":"26629","tcode":"23","mcode":"3","bcode":"306","code":"30628","name":"SKVM"},"30629":{"kcode":"26630","tcode":"23","mcode":"3","bcode":"306","code":"30629","name":"BREW"},"30630":{"kcode":"33010","tcode":"23","mcode":"3","bcode":"306","code":"30630","name":"CDMA"},"30631":{"kcode":"33011","tcode":"23","mcode":"3","bcode":"306","code":"30631","name":"\ubaa8\ubc14\uc77cAPP"},"30632":{"kcode":"33012","tcode":"23","mcode":"3","bcode":"306","code":"30632","name":"Phone"},"30633":{"kcode":"33013","tcode":"23","mcode":"3","bcode":"306","code":"30633","name":"\ubb34\uc120\ud1b5\uc2e0"}}},"307":{"kcode":"7937","tcode":"8","mcode":"8","bcode":"3","code":"307","name":"\ud558\ub4dc\uc6e8\uc5b4\u00b7\uc7a5\ube44","keyword":{"30701":{"kcode":"8433","tcode":"23","mcode":"3","bcode":"307","code":"30701","name":"\ud558\ub4dc\uc6e8\uc5b4"},"30702":{"kcode":"8434","tcode":"23","mcode":"3","bcode":"307","code":"30702","name":"\ud38c\uc6e8\uc5b4"},"30703":{"kcode":"8435","tcode":"23","mcode":"3","bcode":"307","code":"30703","name":"\uc7a5\ube44\uad6c\ucd95"},"30704":{"kcode":"8436","tcode":"23","mcode":"3","bcode":"307","code":"30704","name":"\uc720\uc9c0\ubcf4\uc218"},"30705":{"kcode":"8437","tcode":"23","mcode":"3","bcode":"307","code":"30705","name":"\ucf54\ub371\u00b7\uc778\ucf54\ub529"},"30706":{"kcode":"8438","tcode":"23","mcode":"3","bcode":"307","code":"30706","name":"\uc2a4\ud1a0\ub9ac\uc9c0"},"30707":{"kcode":"26631","tcode":"23","mcode":"3","bcode":"307","code":"30707","name":"AS"}}},"308":{"kcode":"7938","tcode":"8","mcode":"8","bcode":"3","code":"308","name":"\uc815\ubcf4\ubcf4\uc548\u00b7\ubc31\uc2e0","keyword":{"30801":{"kcode":"8439","tcode":"23","mcode":"3","bcode":"308","code":"30801","name":"\ubcf4\uc548"},"30802":{"kcode":"8440","tcode":"23","mcode":"3","bcode":"308","code":"30802","name":"\ubc31\uc2e0"},"30803":{"kcode":"8441","tcode":"23","mcode":"3","bcode":"308","code":"30803","name":"\ubc29\ud654\ubcbd"},"30804":{"kcode":"8442","tcode":"23","mcode":"3","bcode":"308","code":"30804","name":"IDS\u00b7IPS"},"30805":{"kcode":"8443","tcode":"23","mcode":"3","bcode":"308","code":"30805","name":"\ubcf4\uc548\ucee8\uc124\ud305"},"30806":{"kcode":"8444","tcode":"23","mcode":"3","bcode":"308","code":"30806","name":"ESM"},"30808":{"kcode":"8446","tcode":"23","mcode":"3","bcode":"308","code":"30808","name":"SSL"},"30809":{"kcode":"8447","tcode":"23","mcode":"3","bcode":"308","code":"30809","name":"\ubc14\uc774\ub7ec\uc2a4"},"30810":{"kcode":"8448","tcode":"23","mcode":"3","bcode":"308","code":"30810","name":"\ub124\ud2b8\uc6cc\ud06c\ubcf4\uc548"},"30811":{"kcode":"8449","tcode":"23","mcode":"3","bcode":"308","code":"30811","name":"\uc815\ubcf4\ubcf4\uc548"},"30812":{"kcode":"8450","tcode":"23","mcode":"3","bcode":"308","code":"30812","name":"\ud574\ud0b9"},"30813":{"kcode":"8451","tcode":"23","mcode":"3","bcode":"308","code":"30813","name":"\uc2a4\ud338\u00b7\uc6dc"},"30814":{"kcode":"26632","tcode":"23","mcode":"3","bcode":"308","code":"30814","name":"\ubcf4\uc548ASP"}}},"313":{"kcode":"7940","tcode":"8","mcode":"8","bcode":"3","code":"313","name":"IT\ucee8\uc124\ud305","keyword":{"31301":{"kcode":"8467","tcode":"23","mcode":"3","bcode":"313","code":"31301","name":"IT\ucee8\uc124\ud305"},"31302":{"kcode":"8468","tcode":"23","mcode":"3","bcode":"313","code":"31302","name":"\uc778\ud050\ubca0\uc774\ud305"},"31303":{"kcode":"22170","tcode":"23","mcode":"3","bcode":"313","code":"31303","name":"\uc14b\uc5c5"},"31304":{"kcode":"26633","tcode":"23","mcode":"3","bcode":"313","code":"31304","name":"IFRS"},"31305":{"kcode":"26634","tcode":"23","mcode":"3","bcode":"313","code":"31305","name":"SAP"},"31306":{"kcode":"26635","tcode":"23","mcode":"3","bcode":"313","code":"31306","name":"ERP"},"31307":{"kcode":"26636","tcode":"23","mcode":"3","bcode":"313","code":"31307","name":"SCM"},"31308":{"kcode":"26637","tcode":"23","mcode":"3","bcode":"313","code":"31308","name":"CRM"},"31309":{"kcode":"26638","tcode":"23","mcode":"3","bcode":"313","code":"31309","name":"Oracle"},"31310":{"kcode":"26639","tcode":"23","mcode":"3","bcode":"313","code":"31310","name":"BPM"},"31311":{"kcode":"26640","tcode":"23","mcode":"3","bcode":"313","code":"31311","name":"KMS"},"31312":{"kcode":"26641","tcode":"23","mcode":"3","bcode":"313","code":"31312","name":"DW"}}},"314":{"kcode":"21812","tcode":"8","mcode":"8","bcode":"3","code":"314","name":"\uac8c\uc784","keyword":{"31401":{"kcode":"21793","tcode":"23","mcode":"3","bcode":"314","code":"31401","name":"\uac8c\uc784\uac1c\ubc1c"},"31402":{"kcode":"21794","tcode":"23","mcode":"3","bcode":"314","code":"31402","name":"\uac8c\uc784\uae30\ud68d\u00b7\ub9c8\ucf00\ud305"},"31403":{"kcode":"21795","tcode":"23","mcode":"3","bcode":"314","code":"31403","name":"\uac8c\uc784\ub514\uc790\uc778"},"31404":{"kcode":"21796","tcode":"23","mcode":"3","bcode":"314","code":"31404","name":"\uac8c\uc784\uc74c\ud5a5"},"31405":{"kcode":"21797","tcode":"23","mcode":"3","bcode":"314","code":"31405","name":"\uac8c\uc784\uc6b4\uc601"},"31406":{"kcode":"21798","tcode":"23","mcode":"3","bcode":"314","code":"31406","name":"\uac8c\uc784"},"31407":{"kcode":"26642","tcode":"23","mcode":"3","bcode":"314","code":"31407","name":"GM\u00b7CS"},"31408":{"kcode":"26643","tcode":"23","mcode":"3","bcode":"314","code":"31408","name":"\uac8c\uc784\uc2dc\ub098\ub9ac\uc624"},"31409":{"kcode":"26644","tcode":"23","mcode":"3","bcode":"314","code":"31409","name":"3D\uc628\ub77c\uc778\uac8c\uc784"},"31410":{"kcode":"26645","tcode":"23","mcode":"3","bcode":"314","code":"31410","name":"RPG"},"31411":{"kcode":"26646","tcode":"23","mcode":"3","bcode":"314","code":"31411","name":"2D\uc628\ub77c\uc778\uac8c\uc784"},"31412":{"kcode":"26647","tcode":"23","mcode":"3","bcode":"314","code":"31412","name":"Flash\uac8c\uc784"},"31413":{"kcode":"26648","tcode":"23","mcode":"3","bcode":"314","code":"31413","name":"\uc6f9\uac8c\uc784"},"31414":{"kcode":"26649","tcode":"23","mcode":"3","bcode":"314","code":"31414","name":"\ubca0\ud0c0\ud14c\uc2a4\ud130"}}}}},"4":{"bcode":"4","name":"\uc740\ud589\u00b7\uae08\uc735\uc5c5","code":{"401":{"kcode":"7941","tcode":"8","mcode":"8","bcode":"4","code":"401","name":"\uc740\ud589\u00b7\uae08\uc735\u00b7\uc800\ucd95","keyword":{"40101":{"kcode":"8469","tcode":"23","mcode":"4","bcode":"401","code":"40101","name":"\uae08\uc735\uae30\uad00"},"40102":{"kcode":"8470","tcode":"23","mcode":"4","bcode":"401","code":"40102","name":"\uc77c\ubc18\uc740\ud589"},"40114":{"kcode":"22174","tcode":"23","mcode":"4","bcode":"401","code":"40114","name":"\uc9c0\ubc29\uc740\ud589"},"40115":{"kcode":"22175","tcode":"23","mcode":"4","bcode":"401","code":"40115","name":"\uc678\uad6d\uc740\ud589"},"40116":{"kcode":"22176","tcode":"23","mcode":"4","bcode":"401","code":"40116","name":"\ud2b9\uc218\uc740\ud589"},"40117":{"kcode":"22177","tcode":"23","mcode":"4","bcode":"401","code":"40117","name":"\ub18d\ud611\u00b7\uc218\ud611\u00b7\ucd95\ud611"},"40118":{"kcode":"22178","tcode":"23","mcode":"4","bcode":"401","code":"40118","name":"\uc800\ucd95\uc740\ud589"},"40119":{"kcode":"22179","tcode":"23","mcode":"4","bcode":"401","code":"40119","name":"\uc2e0\uc6a9\ud611\ub3d9\uc870\ud569"},"40120":{"kcode":"22180","tcode":"23","mcode":"4","bcode":"401","code":"40120","name":"\uc885\ud569\uae08\uc735"},"40121":{"kcode":"22181","tcode":"23","mcode":"4","bcode":"401","code":"40121","name":"\uad6d\uc81c\uae08\uc735"},"40122":{"kcode":"22182","tcode":"23","mcode":"4","bcode":"401","code":"40122","name":"\ud154\ub7ec"},"40123":{"kcode":"26650","tcode":"23","mcode":"4","bcode":"401","code":"40123","name":"\ubd80\ub3d9\uc0b0\ud22c\uc790"},"40124":{"kcode":"26651","tcode":"23","mcode":"4","bcode":"401","code":"40124","name":"\ubd80\ub3d9\uc0b0\uc6b4\uc6a9"},"40125":{"kcode":"26652","tcode":"23","mcode":"4","bcode":"401","code":"40125","name":"\uc790\uc0b0\uad00\ub9ac"},"40126":{"kcode":"26653","tcode":"23","mcode":"4","bcode":"401","code":"40126","name":"\ud22c\uc790\uc0c1\ub2f4"}}},"402":{"kcode":"7942","tcode":"8","mcode":"8","bcode":"4","code":"402","name":"\ub300\ucd9c\u00b7\uce90\ud53c\ud0c8\u00b7\uc5ec\uc2e0","keyword":{"40201":{"kcode":"8478","tcode":"23","mcode":"4","bcode":"402","code":"40201","name":"\uce90\ud53c\ud0c8"},"40205":{"kcode":"22183","tcode":"23","mcode":"4","bcode":"402","code":"40205","name":"\uc2e0\uc6a9\ub300\ucd9c"},"40206":{"kcode":"22184","tcode":"23","mcode":"4","bcode":"402","code":"40206","name":"\ub2f4\ubcf4\ub300\ucd9c"},"40207":{"kcode":"22185","tcode":"23","mcode":"4","bcode":"402","code":"40207","name":"\ud559\uc790\uae08\ub300\ucd9c"},"40208":{"kcode":"22186","tcode":"23","mcode":"4","bcode":"402","code":"40208","name":"\uc5ec\uc2e0"}}},"405":{"kcode":"21813","tcode":"8","mcode":"8","bcode":"4","code":"405","name":"\uae30\ud0c0\uae08\uc735","keyword":{"40501":{"kcode":"21799","tcode":"23","mcode":"4","bcode":"405","code":"40501","name":"\ube44\uae08\uc735\uc9c0\uc8fc\ud68c\uc0ac"}}},"406":{"kcode":"22171","tcode":"8","mcode":"8","bcode":"4","code":"406","name":"\uc99d\uad8c\u00b7\ubcf4\ud5d8\u00b7\uce74\ub4dc","keyword":{"40601":{"kcode":"8471","tcode":"23","mcode":"4","bcode":"406","code":"40601","name":"\uc99d\uad8c\uc0ac"},"40602":{"kcode":"8472","tcode":"23","mcode":"4","bcode":"406","code":"40602","name":"\uc2e0\uc6a9\uce74\ub4dc\uc0ac"},"40603":{"kcode":"8473","tcode":"23","mcode":"4","bcode":"406","code":"40603","name":"\uc0dd\uba85\ubcf4\ud5d8"},"40604":{"kcode":"8474","tcode":"23","mcode":"4","bcode":"406","code":"40604","name":"\ud654\uc7ac\ubcf4\ud5d8"},"40605":{"kcode":"8475","tcode":"23","mcode":"4","bcode":"406","code":"40605","name":"\ud380\ub4dc\ub9e4\ub2c8\uc800"},"40606":{"kcode":"8476","tcode":"23","mcode":"4","bcode":"406","code":"40606","name":"\uc560\ub110\ub9ac\uc2a4\ud2b8"},"40607":{"kcode":"8477","tcode":"23","mcode":"4","bcode":"406","code":"40607","name":"\ud3ec\uc778\ud2b8\uce74\ub4dc"},"40608":{"kcode":"22172","tcode":"23","mcode":"4","bcode":"406","code":"40608","name":"\uc790\ub3d9\ucc28\ubcf4\ud5d8"},"40609":{"kcode":"22173","tcode":"23","mcode":"4","bcode":"406","code":"40609","name":"\ubcf4\ud5d8\uc0ac"},"40610":{"kcode":"26654","tcode":"23","mcode":"4","bcode":"406","code":"40610","name":"\uc190\ud574\uc0ac\uc815"}}}}},"5":{"bcode":"5","name":"\ubbf8\ub514\uc5b4\u00b7\ub514\uc790\uc778","code":{"501":{"kcode":"7945","tcode":"8","mcode":"8","bcode":"5","code":"501","name":"\uc2e0\ubb38\u00b7\uc7a1\uc9c0\u00b7\uc5b8\ub860\uc0ac","keyword":{"50101":{"kcode":"8512","tcode":"23","mcode":"5","bcode":"501","code":"50101","name":"\uc2e0\ubb38\uc0ac"},"50102":{"kcode":"8513","tcode":"23","mcode":"5","bcode":"501","code":"50102","name":"\uc7a1\uc9c0\uc0ac"},"50103":{"kcode":"8514","tcode":"23","mcode":"5","bcode":"501","code":"50103","name":"\uc5b8\ub860\uc0ac"},"50104":{"kcode":"22187","tcode":"23","mcode":"5","bcode":"501","code":"50104","name":"\uc77c\uac04\uc9c0"},"50105":{"kcode":"22188","tcode":"23","mcode":"5","bcode":"501","code":"50105","name":"\uacbd\uc81c\uc2e0\ubb38"},"50106":{"kcode":"22189","tcode":"23","mcode":"5","bcode":"501","code":"50106","name":"\uc2a4\ud3ec\uce20\uc2e0\ubb38"},"50107":{"kcode":"22190","tcode":"23","mcode":"5","bcode":"501","code":"50107","name":"\uc778\ud130\ub137\uc2e0\ubb38"},"50108":{"kcode":"22191","tcode":"23","mcode":"5","bcode":"501","code":"50108","name":"\uc9c0\uc5ed\uc2e0\ubb38"},"50109":{"kcode":"22192","tcode":"23","mcode":"5","bcode":"501","code":"50109","name":"\uc804\ubb38\uc2e0\ubb38"}}},"502":{"kcode":"7946","tcode":"8","mcode":"8","bcode":"5","code":"502","name":"\ubc29\uc1a1\uc0ac\u00b7\ucf00\uc774\ube14","keyword":{"50201":{"kcode":"8515","tcode":"23","mcode":"5","bcode":"502","code":"50201","name":"\uacf5\uc911\ud30c\ubc29\uc1a1"},"50202":{"kcode":"8516","tcode":"23","mcode":"5","bcode":"502","code":"50202","name":"\ucf00\uc774\ube14\ubc29\uc1a1"},"50203":{"kcode":"8517","tcode":"23","mcode":"5","bcode":"502","code":"50203","name":"\uc704\uc131\ubc29\uc1a1"},"50204":{"kcode":"8518","tcode":"23","mcode":"5","bcode":"502","code":"50204","name":"\uc778\ud130\ub137\ubc29\uc1a1"},"50205":{"kcode":"8519","tcode":"23","mcode":"5","bcode":"502","code":"50205","name":"\uc885\ud569\uc720\uc120\ubc29\uc1a1"},"50206":{"kcode":"8520","tcode":"23","mcode":"5","bcode":"502","code":"50206","name":"DMB\ubc29\uc1a1"},"50207":{"kcode":"8521","tcode":"23","mcode":"5","bcode":"502","code":"50207","name":"\ub77c\ub514\uc624\ubc29\uc1a1"},"50209":{"kcode":"8523","tcode":"23","mcode":"5","bcode":"502","code":"50209","name":"\ud648\uc1fc\ud551"},"50210":{"kcode":"8524","tcode":"23","mcode":"5","bcode":"502","code":"50210","name":"\ubc29\uc1a1\ud611\ud68c"},"50211":{"kcode":"8525","tcode":"23","mcode":"5","bcode":"502","code":"50211","name":"\ubbf8\ub514\uc5b4"},"50212":{"kcode":"22193","tcode":"23","mcode":"5","bcode":"502","code":"50212","name":"\ubc29\uc1a1\uc7a5\ube44"},"50213":{"kcode":"22194","tcode":"23","mcode":"5","bcode":"502","code":"50213","name":"IPTV"}}},"503":{"kcode":"7947","tcode":"8","mcode":"8","bcode":"5","code":"503","name":"\uc5f0\uc608\u00b7\uc5d4\ud130\ud14c\uc778\uba3c\ud2b8","keyword":{"50301":{"kcode":"8526","tcode":"23","mcode":"5","bcode":"503","code":"50301","name":"\uc5f0\uc608"},"50302":{"kcode":"8527","tcode":"23","mcode":"5","bcode":"503","code":"50302","name":"\uc5f0\uc608\uae30\ud68d\uc0ac"},"50303":{"kcode":"8528","tcode":"23","mcode":"5","bcode":"503","code":"50303","name":"\uc2a4\ud29c\ub514\uc624"},"50304":{"kcode":"8529","tcode":"23","mcode":"5","bcode":"503","code":"50304","name":"\ub9e4\ub2c8\uc9c0\uba3c\ud2b8"},"50306":{"kcode":"8530","tcode":"23","mcode":"5","bcode":"503","code":"50306","name":"\uc5d4\ud130\ud14c\uc778\uba3c\ud2b8"},"50307":{"kcode":"8531","tcode":"23","mcode":"5","bcode":"503","code":"50307","name":"\ud504\ub85c\ub355\uc158"}}},"504":{"kcode":"7948","tcode":"8","mcode":"8","bcode":"5","code":"504","name":"\uad11\uace0\u00b7\ud64d\ubcf4\u00b7\uc804\uc2dc","keyword":{"50401":{"kcode":"8532","tcode":"23","mcode":"5","bcode":"504","code":"50401","name":"\uad11\uace0\uae30\ud68d\uc0ac"},"50404":{"kcode":"8536","tcode":"23","mcode":"5","bcode":"504","code":"50404","name":"\uad11\uace0\ub300\ud589\uc0ac"},"50405":{"kcode":"8537","tcode":"23","mcode":"5","bcode":"504","code":"50405","name":"\ud64d\ubcf4\ub300\ud589\uc0ac"},"50406":{"kcode":"8535","tcode":"23","mcode":"5","bcode":"504","code":"50406","name":"\uad11\uace0\uc601\uc5c5"},"50408":{"kcode":"8539","tcode":"23","mcode":"5","bcode":"504","code":"50408","name":"\uc804\uc2dc\uae30\ud68d"},"50410":{"kcode":"8541","tcode":"23","mcode":"5","bcode":"504","code":"50410","name":"\ucee8\ubca4\uc158"},"50411":{"kcode":"8542","tcode":"23","mcode":"5","bcode":"504","code":"50411","name":"\uad6d\uc81c\ud68c\uc758"},"50412":{"kcode":"8543","tcode":"23","mcode":"5","bcode":"504","code":"50412","name":"\uc774\ubca4\ud2b8\ub300\ud589"},"50413":{"kcode":"8544","tcode":"23","mcode":"5","bcode":"504","code":"50413","name":"ATL"},"50414":{"kcode":"8545","tcode":"23","mcode":"5","bcode":"504","code":"50414","name":"BTL"},"50415":{"kcode":"26655","tcode":"23","mcode":"5","bcode":"504","code":"50415","name":"\ud504\ub85c\ubaa8\uc158\ub300\ud589\uc0ac"}}},"505":{"kcode":"7949","tcode":"8","mcode":"8","bcode":"5","code":"505","name":"\uc601\ud654\u00b7\ubc30\uae09\u00b7\uc74c\uc545","keyword":{"50501":{"kcode":"8546","tcode":"23","mcode":"5","bcode":"505","code":"50501","name":"\uc601\ud654\uae30\ud68d\uc0ac"},"50502":{"kcode":"8547","tcode":"23","mcode":"5","bcode":"505","code":"50502","name":"\uc601\ud654\uc81c\uc791\uc0ac"},"50503":{"kcode":"8548","tcode":"23","mcode":"5","bcode":"505","code":"50503","name":"\ubc30\uae09\uc720\ud1b5\uc0ac"},"50504":{"kcode":"8549","tcode":"23","mcode":"5","bcode":"505","code":"50504","name":"\ud22c\uc790\uc0ac"},"50505":{"kcode":"8550","tcode":"23","mcode":"5","bcode":"505","code":"50505","name":"\uc601\ud654\uad00"},"50506":{"kcode":"8551","tcode":"23","mcode":"5","bcode":"505","code":"50506","name":"\uc74c\ubc18\uae30\ud68d\uc0ac"},"50507":{"kcode":"8552","tcode":"23","mcode":"5","bcode":"505","code":"50507","name":"\uc2a4\ud29c\ub514\uc624"},"50508":{"kcode":"8553","tcode":"23","mcode":"5","bcode":"505","code":"50508","name":"\ub179\uc74c\uc2e4"},"50509":{"kcode":"8554","tcode":"23","mcode":"5","bcode":"505","code":"50509","name":"\ud3b8\uc9d1\uc2e4"},"50510":{"kcode":"22197","tcode":"23","mcode":"5","bcode":"505","code":"50510","name":"\uc601\ud654\ud64d\ubcf4\ub300\ud589"}}},"506":{"kcode":"7950","tcode":"8","mcode":"8","bcode":"5","code":"506","name":"\uacf5\uc5f0\u00b7\uc608\uc220\u00b7\ubb38\ud654","keyword":{"50601":{"kcode":"8555","tcode":"23","mcode":"5","bcode":"506","code":"50601","name":"\ubb38\ud654\uae30\ud68d"},"50602":{"kcode":"8556","tcode":"23","mcode":"5","bcode":"506","code":"50602","name":"\uacf5\uc5f0\uae30\ud68d"},"50603":{"kcode":"8557","tcode":"23","mcode":"5","bcode":"506","code":"50603","name":"\ucf58\uc11c\ud2b8\ud640"},"50604":{"kcode":"8558","tcode":"23","mcode":"5","bcode":"506","code":"50604","name":"\uadf9\ub2e8"},"50605":{"kcode":"8559","tcode":"23","mcode":"5","bcode":"506","code":"50605","name":"\uc18c\uadf9\uc7a5"},"50606":{"kcode":"8560","tcode":"23","mcode":"5","bcode":"506","code":"50606","name":"\uc624\ud398\ub77c\u00b7\ubba4\uc9c0\uceec"},"50607":{"kcode":"8561","tcode":"23","mcode":"5","bcode":"506","code":"50607","name":"\ubb38\ud654\uc608\uc220\ud68c\uad00"},"50608":{"kcode":"8562","tcode":"23","mcode":"5","bcode":"506","code":"50608","name":"\uc544\uce74\ub370\ubbf8"},"50609":{"kcode":"26656","tcode":"23","mcode":"5","bcode":"506","code":"50609","name":"\uacf5\uc5f0\uc608\uc220"}}},"509":{"kcode":"7953","tcode":"8","mcode":"8","bcode":"5","code":"509","name":"\ucd9c\ud310\u00b7\uc778\uc1c4\u00b7\uc0ac\uc9c4","keyword":{"50901":{"kcode":"8592","tcode":"23","mcode":"5","bcode":"509","code":"50901","name":"\ucd9c\ud310\uc0ac"},"50902":{"kcode":"8593","tcode":"23","mcode":"5","bcode":"509","code":"50902","name":"\uc778\uc1c4\u00b7\uc81c\ubcf8"},"50903":{"kcode":"8594","tcode":"23","mcode":"5","bcode":"509","code":"50903","name":"\ud3b8\uc9d1"},"50906":{"kcode":"8597","tcode":"23","mcode":"5","bcode":"509","code":"50906","name":"\uc804\uc790\ucd9c\ud310"},"50908":{"kcode":"8599","tcode":"23","mcode":"5","bcode":"509","code":"50908","name":"\ubcf5\uc0ac"},"50910":{"kcode":"8601","tcode":"23","mcode":"5","bcode":"509","code":"50910","name":"\uc0ac\uc9c4\u00b7\ucd2c\uc601"}}},"510":{"kcode":"21814","tcode":"8","mcode":"8","bcode":"5","code":"510","name":"\uce90\ub9ad\ud130\u00b7\uc560\ub2c8\uba54\uc774\uc158","keyword":{"51001":{"kcode":"21802","tcode":"23","mcode":"5","bcode":"510","code":"51001","name":"\uce90\ub9ad\ud130"},"51002":{"kcode":"21803","tcode":"23","mcode":"5","bcode":"510","code":"51002","name":"\uc560\ub2c8\uba54\uc774\uc158"},"51003":{"kcode":"22198","tcode":"23","mcode":"5","bcode":"510","code":"51003","name":"\ub9cc\ud654"},"51004":{"kcode":"22199","tcode":"23","mcode":"5","bcode":"510","code":"51004","name":"\uba40\ud2f0\u00b7\ub3d9\uc601\uc0c1"},"51005":{"kcode":"26657","tcode":"23","mcode":"5","bcode":"510","code":"51005","name":"\ud50c\ub798\uc2dc\uce90\ub9ad\ud130"},"51006":{"kcode":"26658","tcode":"23","mcode":"5","bcode":"510","code":"51006","name":"\ubb34\uc120\uce90\ub9ad\ud130"}}},"511":{"kcode":"21815","tcode":"8","mcode":"8","bcode":"5","code":"511","name":"\ub514\uc790\uc778\u00b7\uc124\uacc4","keyword":{"51101":{"kcode":"21804","tcode":"23","mcode":"5","bcode":"511","code":"51101","name":"\ub514\uc790\uc778\ud68c\uc0ac"},"51102":{"kcode":"21805","tcode":"23","mcode":"5","bcode":"511","code":"51102","name":"\uc124\uacc4\u00b7CAD"},"51103":{"kcode":"21806","tcode":"23","mcode":"5","bcode":"511","code":"51103","name":"\uc2dc\uac01\ub514\uc790\uc778"},"51104":{"kcode":"21807","tcode":"23","mcode":"5","bcode":"511","code":"51104","name":"\uc0b0\uc5c5\ub514\uc790\uc778"},"51105":{"kcode":"21808","tcode":"23","mcode":"5","bcode":"511","code":"51105","name":"\ud658\uacbd\ub514\uc790\uc778"},"51106":{"kcode":"21809","tcode":"23","mcode":"5","bcode":"511","code":"51106","name":"\uacf5\uc608\ub514\uc790\uc778"},"51108":{"kcode":"22195","tcode":"23","mcode":"5","bcode":"511","code":"51108","name":"\uad11\uace0\ub514\uc790\uc778"},"51109":{"kcode":"22196","tcode":"23","mcode":"5","bcode":"511","code":"51109","name":"\uc804\uc2dc\u00b7\uacf5\uac04\ub514\uc790\uc778"},"51110":{"kcode":"26659","tcode":"23","mcode":"5","bcode":"511","code":"51110","name":"\uba40\ud2f0\ubbf8\ub514\uc5b4\ub514\uc790\uc778"}}}}},"6":{"bcode":"6","name":"\uad50\uc721\uc5c5","code":{"601":{"kcode":"7951","tcode":"8","mcode":"8","bcode":"6","code":"601","name":"\ucd08\uc911\uace0\u00b7\ub300\ud559","keyword":{"60101":{"kcode":"8563","tcode":"23","mcode":"6","bcode":"601","code":"60101","name":"\uad50\uc721\uae30\uad00"},"60102":{"kcode":"8573","tcode":"23","mcode":"6","bcode":"601","code":"60102","name":"\ub300\ud559\uad50"},"60103":{"kcode":"8584","tcode":"23","mcode":"6","bcode":"601","code":"60103","name":"\ud2b9\uc218\ud559\uad50"},"60104":{"kcode":"8585","tcode":"23","mcode":"6","bcode":"601","code":"60104","name":"\uc678\uad6d\uc778\ud559\uad50"},"60105":{"kcode":"22200","tcode":"23","mcode":"6","bcode":"601","code":"60105","name":"\ucd08\ub4f1\ud559\uad50"},"60106":{"kcode":"22201","tcode":"23","mcode":"6","bcode":"601","code":"60106","name":"\uc911\ud559\uad50"},"60107":{"kcode":"22202","tcode":"23","mcode":"6","bcode":"601","code":"60107","name":"\uace0\ub4f1\ud559\uad50"}}},"602":{"kcode":"22203","tcode":"8","mcode":"8","bcode":"6","code":"602","name":"\ud559\uc6d0\u00b7\uc5b4\ud559\uc6d0","keyword":{"60201":{"kcode":"22207","tcode":"23","mcode":"6","bcode":"602","code":"60201","name":"IT\ud559\uc6d0"},"60202":{"kcode":"22208","tcode":"23","mcode":"6","bcode":"602","code":"60202","name":"\uc785\uc2dc\ud559\uc6d0"},"60203":{"kcode":"22209","tcode":"23","mcode":"6","bcode":"602","code":"60203","name":"\uace0\uc2dc\ud559\uc6d0"},"60204":{"kcode":"22210","tcode":"23","mcode":"6","bcode":"602","code":"60204","name":"\uc608\uccb4\ub2a5\ud559\uc6d0"},"60205":{"kcode":"22211","tcode":"23","mcode":"6","bcode":"602","code":"60205","name":"\ubcf4\uc2b5\ud559\uc6d0"},"60206":{"kcode":"22212","tcode":"23","mcode":"6","bcode":"602","code":"60206","name":"\uc5b4\ud559\uc6d0"},"60207":{"kcode":"22213","tcode":"23","mcode":"6","bcode":"602","code":"60207","name":"\ubbf8\uc220\ud559\uc6d0"},"60208":{"kcode":"22214","tcode":"23","mcode":"6","bcode":"602","code":"60208","name":"\uc74c\uc545\ud559\uc6d0"},"60209":{"kcode":"22215","tcode":"23","mcode":"6","bcode":"602","code":"60209","name":"\uc77c\ubcf8\uc5b4\ud559\uc6d0"},"60210":{"kcode":"22216","tcode":"23","mcode":"6","bcode":"602","code":"60210","name":"\uc911\uad6d\uc5b4\ud559\uc6d0"},"60211":{"kcode":"22217","tcode":"23","mcode":"6","bcode":"602","code":"60211","name":"\uc601\uc5b4\ud559\uc6d0"},"60212":{"kcode":"22218","tcode":"23","mcode":"6","bcode":"602","code":"60212","name":"\ud3b8\uc785\ud559\uc6d0"},"60213":{"kcode":"22219","tcode":"23","mcode":"6","bcode":"602","code":"60213","name":"\ub17c\uc220\ud559\uc6d0"},"60214":{"kcode":"22220","tcode":"23","mcode":"6","bcode":"602","code":"60214","name":"\uc720\ud559\uc6d0"}}},"603":{"kcode":"22204","tcode":"8","mcode":"8","bcode":"6","code":"603","name":"\uc720\uc544\u00b7\uc720\uce58\uc6d0","keyword":{"60301":{"kcode":"22221","tcode":"23","mcode":"6","bcode":"603","code":"60301","name":"\uc720\uc544\uc6d0"},"60302":{"kcode":"22222","tcode":"23","mcode":"6","bcode":"603","code":"60302","name":"\uc720\uce58\uc6d0"},"60303":{"kcode":"22223","tcode":"23","mcode":"6","bcode":"603","code":"60303","name":"\uc5b4\ub9b0\uc774\uc9d1"},"60304":{"kcode":"22224","tcode":"23","mcode":"6","bcode":"603","code":"60304","name":"\ubcf4\uc721\uc2dc\uc124"}}},"604":{"kcode":"22205","tcode":"8","mcode":"8","bcode":"6","code":"604","name":"\uad50\uc7ac\u00b7\ud559\uc2b5\uc9c0","keyword":{"60401":{"kcode":"22225","tcode":"23","mcode":"6","bcode":"604","code":"60401","name":"\uad50\uc7ac\uc81c\uc791\u00b7\ucd9c\ud310"},"60402":{"kcode":"22226","tcode":"23","mcode":"6","bcode":"604","code":"60402","name":"\ud559\uc2b5\uc9c0"},"60403":{"kcode":"22227","tcode":"23","mcode":"6","bcode":"604","code":"60403","name":"\ud1b5\uc2e0\uad50\uc721"},"60404":{"kcode":"22228","tcode":"23","mcode":"6","bcode":"604","code":"60404","name":"\uae30\uc5c5\uad50\uc721"},"60405":{"kcode":"22229","tcode":"23","mcode":"6","bcode":"604","code":"60405","name":"\uc804\ud654\uc601\uc5b4"},"60406":{"kcode":"26660","tcode":"23","mcode":"6","bcode":"604","code":"60406","name":"\uc0ac\ud68c\uad50\uc721"}}},"605":{"kcode":"22206","tcode":"8","mcode":"8","bcode":"6","code":"605","name":"\uc804\ubb38\u00b7\uae30\ub2a5\ud559\uc6d0","keyword":{"60501":{"kcode":"22230","tcode":"23","mcode":"6","bcode":"605","code":"60501","name":"\uae30\ub2a5\ud559\uc6d0"},"60502":{"kcode":"22231","tcode":"23","mcode":"6","bcode":"605","code":"60502","name":"\ud328\uc158\u00b7\ub514\uc790\uc778\ud559\uc6d0"},"60503":{"kcode":"22232","tcode":"23","mcode":"6","bcode":"605","code":"60503","name":"\uc790\ub3d9\ucc28\ud559\uc6d0"},"60504":{"kcode":"22233","tcode":"23","mcode":"6","bcode":"605","code":"60504","name":"\ubbf8\uc6a9\ud559\uc6d0"},"60505":{"kcode":"22234","tcode":"23","mcode":"6","bcode":"605","code":"60505","name":"\uc694\ub9ac\ud559\uc6d0"},"60506":{"kcode":"22235","tcode":"23","mcode":"6","bcode":"605","code":"60506","name":"\uc790\uaca9\uc99d\ud559\uc6d0"},"60507":{"kcode":"22236","tcode":"23","mcode":"6","bcode":"605","code":"60507","name":"\ubb34\uc6a9\u00b7\ub304\uc2a4\ud559\uc6d0"},"60508":{"kcode":"22237","tcode":"23","mcode":"6","bcode":"605","code":"60508","name":"\uc9c1\uc5c5\uc804\ubb38\ud559\uad50"}}}}},"7":{"bcode":"7","name":"\uc758\ub8cc\u00b7\uc81c\uc57d\u00b7\ubcf5\uc9c0","code":{"701":{"kcode":"22025","tcode":"8","mcode":"8","bcode":"7","code":"701","name":"\uc758\ub8cc(\uc9c4\ub8cc\uacfc\ubaa9\ubcc4)","keyword":{"70101":{"kcode":"8206","tcode":"23","mcode":"7","bcode":"701","code":"70101","name":"\ubcd1\uc6d0\u00b7\uc9c4\ub8cc"},"70102":{"kcode":"8207","tcode":"23","mcode":"7","bcode":"701","code":"70102","name":"\uc0b0\ubd80\uc778\uacfc"},"70103":{"kcode":"8208","tcode":"23","mcode":"7","bcode":"701","code":"70103","name":"\uce58\uacfc"},"70104":{"kcode":"8209","tcode":"23","mcode":"7","bcode":"701","code":"70104","name":"\uc548\uacfc"},"70105":{"kcode":"8210","tcode":"23","mcode":"7","bcode":"701","code":"70105","name":"\uc815\ud615\uc678\uacfc"},"70106":{"kcode":"8211","tcode":"23","mcode":"7","bcode":"701","code":"70106","name":"\uc774\ube44\uc778\ud6c4\uacfc"},"70107":{"kcode":"8212","tcode":"23","mcode":"7","bcode":"701","code":"70107","name":"\uc18c\uc544\uacfc"},"70108":{"kcode":"8213","tcode":"23","mcode":"7","bcode":"701","code":"70108","name":"\uc131\ud615\uc678\uacfc"},"70109":{"kcode":"8214","tcode":"23","mcode":"7","bcode":"701","code":"70109","name":"\uc784\uc0c1\ubcd1\ub9ac"},"70110":{"kcode":"8215","tcode":"23","mcode":"7","bcode":"701","code":"70110","name":"\ud55c\uc758\uc6d0"},"70111":{"kcode":"8216","tcode":"23","mcode":"7","bcode":"701","code":"70111","name":"\ub3d9\ubb3c\ubcd1\uc6d0"},"70112":{"kcode":"8217","tcode":"23","mcode":"7","bcode":"701","code":"70112","name":"\ub0b4\uacfc"},"70113":{"kcode":"8218","tcode":"23","mcode":"7","bcode":"701","code":"70113","name":"\uc678\uacfc"},"70115":{"kcode":"8220","tcode":"23","mcode":"7","bcode":"701","code":"70115","name":"\uc758\ub8cc\uae30\uae30"},"70116":{"kcode":"8221","tcode":"23","mcode":"7","bcode":"701","code":"70116","name":"\uc751\uae09\uad6c\uc870"},"70117":{"kcode":"8222","tcode":"23","mcode":"7","bcode":"701","code":"70117","name":"\ud53c\ubd80\uacfc"},"70118":{"kcode":"8223","tcode":"23","mcode":"7","bcode":"701","code":"70118","name":"\ubb3c\ub9ac\uce58\ub8cc"},"70119":{"kcode":"22028","tcode":"23","mcode":"7","bcode":"701","code":"70119","name":"\uac00\uc815\uc758\ud559\uacfc"},"70120":{"kcode":"22029","tcode":"23","mcode":"7","bcode":"701","code":"70120","name":"\uc2e0\uacbd\uc678\uacfc"},"70121":{"kcode":"22030","tcode":"23","mcode":"7","bcode":"701","code":"70121","name":"\ub300\uc7a5\ud56d\ubb38\uacfc"},"70122":{"kcode":"22031","tcode":"23","mcode":"7","bcode":"701","code":"70122","name":"\ube44\ub1e8\uae30\uacfc"},"70123":{"kcode":"22032","tcode":"23","mcode":"7","bcode":"701","code":"70123","name":"\uc2e0\uacbd\uc815\uc2e0\uacfc"},"70124":{"kcode":"22033","tcode":"23","mcode":"7","bcode":"701","code":"70124","name":"\uc7ac\ud65c\uc758\ud559\uacfc"},"70125":{"kcode":"22034","tcode":"23","mcode":"7","bcode":"701","code":"70125","name":"\uc601\uc0c1\uc758\ud559\uacfc"},"70126":{"kcode":"34376","tcode":"23","mcode":"7","bcode":"701","code":"70126","name":"\uc911\ud658\uc790\uc2e4"},"70127":{"kcode":"34377","tcode":"23","mcode":"7","bcode":"701","code":"70127","name":"\uc778\uacf5\uc2e0\uc7a5\uc2e4"}}},"702":{"kcode":"22026","tcode":"8","mcode":"8","bcode":"7","code":"702","name":"\uc758\ub8cc(\ubcd1\uc6d0\uc885\ub958\ubcc4)","keyword":{"70201":{"kcode":"22036","tcode":"23","mcode":"7","bcode":"702","code":"70201","name":"\ub300\ud559\ubcd1\uc6d0"},"70202":{"kcode":"22037","tcode":"23","mcode":"7","bcode":"702","code":"70202","name":"\uc885\ud569\ubcd1\uc6d0"},"70203":{"kcode":"22038","tcode":"23","mcode":"7","bcode":"702","code":"70203","name":"\uc804\ubb38\ubcd1\uc6d0"},"70204":{"kcode":"22039","tcode":"23","mcode":"7","bcode":"702","code":"70204","name":"\uac80\uc9c4\uc13c\ud130"},"70205":{"kcode":"22040","tcode":"23","mcode":"7","bcode":"702","code":"70205","name":"\uc815\uc2e0\ubcd1\uc6d0"},"70206":{"kcode":"22041","tcode":"23","mcode":"7","bcode":"702","code":"70206","name":"\uc694\uc591\ubcd1\uc6d0"},"70207":{"kcode":"22042","tcode":"23","mcode":"7","bcode":"702","code":"70207","name":"\uad6d\uacf5\ub9bd\ubcd1\uc6d0"},"70208":{"kcode":"22043","tcode":"23","mcode":"7","bcode":"702","code":"70208","name":"\ubcf4\uac74\uc18c"},"70209":{"kcode":"22044","tcode":"23","mcode":"7","bcode":"702","code":"70209","name":"\ub178\uc778\ubcd1\uc6d0"},"70210":{"kcode":"22045","tcode":"23","mcode":"7","bcode":"702","code":"70210","name":"\ud55c\ubc29\ubcd1\uc6d0"}}},"703":{"kcode":"22027","tcode":"8","mcode":"8","bcode":"7","code":"703","name":"\uc81c\uc57d\u00b7\ubcf4\uac74\u00b7\ubc14\uc774\uc624","keyword":{"70301":{"kcode":"8361","tcode":"23","mcode":"7","bcode":"703","code":"70301","name":"\uac74\uac15\ubcf4\uc870\uc2dd\ud488"},"70302":{"kcode":"8362","tcode":"23","mcode":"7","bcode":"703","code":"70302","name":"\uc758\uc57d\u00b7\uc81c\uc57d"},"70303":{"kcode":"8364","tcode":"23","mcode":"7","bcode":"703","code":"70303","name":"\uc758\ub8cc\u00b7\ubcf4\uac74"},"70304":{"kcode":"8365","tcode":"23","mcode":"7","bcode":"703","code":"70304","name":"\uc704\uc0dd"},"70305":{"kcode":"8366","tcode":"23","mcode":"7","bcode":"703","code":"70305","name":"\uc601\uc591\uc0ac"},"70306":{"kcode":"8367","tcode":"23","mcode":"7","bcode":"703","code":"70306","name":"\ubc14\uc774\uc624"},"70307":{"kcode":"8368","tcode":"23","mcode":"7","bcode":"703","code":"70307","name":"\uc0dd\uba85\uacf5\ud559"},"70308":{"kcode":"8369","tcode":"23","mcode":"7","bcode":"703","code":"70308","name":"\uc57d\uad6d"}}},"704":{"kcode":"31350","tcode":"8","mcode":"8","bcode":"7","code":"704","name":"\uc0ac\ud68c\ubcf5\uc9c0","keyword":{"70401":{"kcode":"31351","tcode":"23","mcode":"7","bcode":"704","code":"70401","name":"\ubcf5\uc9c0\uc2dc\uc124"},"70402":{"kcode":"31352","tcode":"23","mcode":"7","bcode":"704","code":"70402","name":"\ub178\uc778\ubcf5\uc9c0"},"70403":{"kcode":"31353","tcode":"23","mcode":"7","bcode":"704","code":"70403","name":"\uc694\uc591\ubcf4\ud638"},"70404":{"kcode":"31354","tcode":"23","mcode":"7","bcode":"704","code":"70404","name":"\uc7a5\uc560\uc2dc\uc124"}}}}},"8":{"bcode":"8","name":"\ud310\ub9e4\u00b7\uc720\ud1b5","code":{"801":{"kcode":"22052","tcode":"8","mcode":"8","bcode":"8","code":"801","name":"\ud310\ub9e4(\ub9e4\uc7a5\uc885\ub958\ubcc4)","keyword":{"80101":{"kcode":"8067","tcode":"23","mcode":"8","bcode":"801","code":"80101","name":"\ud560\uc778\uc810"},"80102":{"kcode":"8068","tcode":"23","mcode":"8","bcode":"801","code":"80102","name":"\ubc31\ud654\uc810"},"80103":{"kcode":"8069","tcode":"23","mcode":"8","bcode":"801","code":"80103","name":"\ud648\uc1fc\ud551"},"80104":{"kcode":"8082","tcode":"23","mcode":"8","bcode":"801","code":"80104","name":"\ub300\ud615\ub9c8\ud2b8"},"80105":{"kcode":"8086","tcode":"23","mcode":"8","bcode":"801","code":"80105","name":"\ud3b8\uc758\uc810"},"80106":{"kcode":"22096","tcode":"23","mcode":"8","bcode":"801","code":"80106","name":"\ub86f\ub370\ubc31\ud654\uc810"},"80107":{"kcode":"22097","tcode":"23","mcode":"8","bcode":"801","code":"80107","name":"\uc2e0\uc138\uacc4\ubc31\ud654\uc810"},"80108":{"kcode":"22098","tcode":"23","mcode":"8","bcode":"801","code":"80108","name":"\ud604\ub300\ubc31\ud654\uc810"},"80109":{"kcode":"22099","tcode":"23","mcode":"8","bcode":"801","code":"80109","name":"\uc774\ub9c8\ud2b8"},"80110":{"kcode":"22100","tcode":"23","mcode":"8","bcode":"801","code":"80110","name":"\ub86f\ub370\ub9c8\ud2b8"},"80111":{"kcode":"22101","tcode":"23","mcode":"8","bcode":"801","code":"80111","name":"\ud648\ud50c\ub7ec\uc2a4"},"80112":{"kcode":"8075","tcode":"23","mcode":"8","bcode":"801","code":"80112","name":"\uba74\uc138\uc810"},"80113":{"kcode":"22102","tcode":"23","mcode":"8","bcode":"801","code":"80113","name":"\uc1fc\ud551\ubab0"},"80114":{"kcode":"22103","tcode":"23","mcode":"8","bcode":"801","code":"80114","name":"\ub85c\ub4dc\uc0f5"}}},"802":{"kcode":"22053","tcode":"8","mcode":"8","bcode":"8","code":"802","name":"\ud310\ub9e4(\uc0c1\ud488\ud488\ubaa9\ubcc4)","keyword":{"80201":{"kcode":"22104","tcode":"23","mcode":"8","bcode":"802","code":"80201","name":"\ud310\ub9e4"},"80202":{"kcode":"22105","tcode":"23","mcode":"8","bcode":"802","code":"80202","name":"\ud654\uc7a5\ud488\ub9e4\uc7a5"},"80203":{"kcode":"22106","tcode":"23","mcode":"8","bcode":"802","code":"80203","name":"\uac00\uad6c\u00b7\uce68\uad6c\u00b7\uc18c\ud488"},"80204":{"kcode":"22107","tcode":"23","mcode":"8","bcode":"802","code":"80204","name":"\uaf43\uc9d1"},"80205":{"kcode":"22108","tcode":"23","mcode":"8","bcode":"802","code":"80205","name":"\uc2a4\ud3ec\uce20\u00b7\ub808\uc800\uc6a9\ud488"},"80206":{"kcode":"22109","tcode":"23","mcode":"8","bcode":"802","code":"80206","name":"\uc720\uc544\uc6a9\ud488"},"80207":{"kcode":"22110","tcode":"23","mcode":"8","bcode":"802","code":"80207","name":"\uc11c\uc801\u00b7\uc74c\ubc18"},"80208":{"kcode":"22111","tcode":"23","mcode":"8","bcode":"802","code":"80208","name":"IT\u00b7\ud1b5\uc2e0\uae30\uae30\ud310\ub9e4"},"80209":{"kcode":"22112","tcode":"23","mcode":"8","bcode":"802","code":"80209","name":"\uac00\uc804\u00b7\uc624\ub514\uc624\ud310\ub9e4"},"80210":{"kcode":"22113","tcode":"23","mcode":"8","bcode":"802","code":"80210","name":"\ubb38\uad6c\u00b7\ud32c\uc2dc"},"80211":{"kcode":"22114","tcode":"23","mcode":"8","bcode":"802","code":"80211","name":"\uc758\ub958\ub9e4\uc7a5"},"80212":{"kcode":"22115","tcode":"23","mcode":"8","bcode":"802","code":"80212","name":"\uc7a1\ud654\ub9e4\uc7a5"},"80213":{"kcode":"22116","tcode":"23","mcode":"8","bcode":"802","code":"80213","name":"\uad6c\ub450\u00b7\uc2e0\ubc1c"},"80214":{"kcode":"22117","tcode":"23","mcode":"8","bcode":"802","code":"80214","name":"\uc8fc\ubc29\uc6a9\ud488"},"80215":{"kcode":"22118","tcode":"23","mcode":"8","bcode":"802","code":"80215","name":"\uc790\ub3d9\ucc28\ub9e4\uc7a5"}}},"803":{"kcode":"22054","tcode":"8","mcode":"8","bcode":"8","code":"803","name":"\uc720\ud1b5\u00b7\ubb34\uc5ed\u00b7\uc0c1\uc0ac","keyword":{"80301":{"kcode":"22119","tcode":"23","mcode":"8","bcode":"803","code":"80301","name":"\uc720\ud1b5\uc5c5"},"80302":{"kcode":"22120","tcode":"23","mcode":"8","bcode":"803","code":"80302","name":"\ubb3c\ub958\uc5c5"},"80303":{"kcode":"22121","tcode":"23","mcode":"8","bcode":"803","code":"80303","name":"\ubb34\uc5ed\uc5c5"},"80304":{"kcode":"22122","tcode":"23","mcode":"8","bcode":"803","code":"80304","name":"\uc0c1\uc0ac"},"80305":{"kcode":"22123","tcode":"23","mcode":"8","bcode":"803","code":"80305","name":"\uc218\uc785\uc720\ud1b5"},"80306":{"kcode":"22124","tcode":"23","mcode":"8","bcode":"803","code":"80306","name":"\ubb3c\ub958\uc13c\ud130"},"80307":{"kcode":"22125","tcode":"23","mcode":"8","bcode":"803","code":"80307","name":"\ucee8\ud14c\uc774\ub108"}}},"804":{"kcode":"22055","tcode":"8","mcode":"8","bcode":"8","code":"804","name":"\uc6b4\uc1a1\u00b7\uc6b4\uc218\u00b7\ubb3c\ub958","keyword":{"80401":{"kcode":"8146","tcode":"23","mcode":"8","bcode":"804","code":"80401","name":"\uc721\uc0c1\uc6b4\uc1a1"},"80402":{"kcode":"8147","tcode":"23","mcode":"8","bcode":"804","code":"80402","name":"\ud574\uc0c1\uc6b4\uc1a1"},"80403":{"kcode":"8148","tcode":"23","mcode":"8","bcode":"804","code":"80403","name":"\ud56d\uacf5\uc6b4\uc1a1"},"80404":{"kcode":"8149","tcode":"23","mcode":"8","bcode":"804","code":"80404","name":"\ubcf4\uc138\uc6b4\uc1a1"},"80405":{"kcode":"8150","tcode":"23","mcode":"8","bcode":"804","code":"80405","name":"\ucca0\ub3c4"},"80406":{"kcode":"8151","tcode":"23","mcode":"8","bcode":"804","code":"80406","name":"\uc9c0\ud558\ucca0"},"80407":{"kcode":"8152","tcode":"23","mcode":"8","bcode":"804","code":"80407","name":"\ud0dd\uc2dc"},"80408":{"kcode":"8153","tcode":"23","mcode":"8","bcode":"804","code":"80408","name":"\uc2dc\ub0b4\ubc84\uc2a4"},"80409":{"kcode":"8154","tcode":"23","mcode":"8","bcode":"804","code":"80409","name":"\uace0\uc18d\ubc84\uc2a4"},"80410":{"kcode":"8155","tcode":"23","mcode":"8","bcode":"804","code":"80410","name":"\ubc30\uc1a1\u00b7\ud0dd\ubc30"},"80411":{"kcode":"8072","tcode":"23","mcode":"8","bcode":"804","code":"80411","name":"\ud035\uc11c\ube44\uc2a4"},"80412":{"kcode":"8074","tcode":"23","mcode":"8","bcode":"804","code":"80412","name":"\ud3ec\uc7a5\uc774\uc0ac"},"80413":{"kcode":"8162","tcode":"23","mcode":"8","bcode":"804","code":"80413","name":"\ucc3d\uace0\u00b7\ubcf4\uad00"},"80414":{"kcode":"8167","tcode":"23","mcode":"8","bcode":"804","code":"80414","name":"\uc6b4\uc1a1\u00b7\uc6b4\uc218"},"80415":{"kcode":"21785","tcode":"23","mcode":"8","bcode":"804","code":"80415","name":"\uc6b0\ud3b8\u00b7\uc6b0\uccb4\uad6d"}}}}},"9":{"bcode":"9","name":"\uac74\uc124\uc5c5","code":{"901":{"kcode":"7919","tcode":"8","mcode":"8","bcode":"9","code":"901","name":"\uac74\uc124\u00b7\uac74\ucd95\u00b7\ud1a0\ubaa9\u00b7\uc2dc\uacf5","keyword":{"90101":{"kcode":"8272","tcode":"23","mcode":"9","bcode":"901","code":"90101","name":"\uac74\uc124\ud68c\uc0ac"},"90102":{"kcode":"8273","tcode":"23","mcode":"9","bcode":"901","code":"90102","name":"\ud1a0\ubaa9\ud68c\uc0ac"},"90103":{"kcode":"8277","tcode":"23","mcode":"9","bcode":"901","code":"90103","name":"\uc2dc\uacf5\uc0ac"},"90104":{"kcode":"8287","tcode":"23","mcode":"9","bcode":"901","code":"90104","name":"\uac10\ub9ac\ud68c\uc0ac"},"90105":{"kcode":"22129","tcode":"23","mcode":"9","bcode":"901","code":"90105","name":"\ub3c4\ub85c\u00b7\ud56d\ub9cc"},"90106":{"kcode":"8284","tcode":"23","mcode":"9","bcode":"901","code":"90106","name":"\ud1a0\uc9c0\u00b7\uce21\ub7c9"},"90107":{"kcode":"8300","tcode":"23","mcode":"9","bcode":"901","code":"90107","name":"\uad50\ub7c9"},"90108":{"kcode":"22130","tcode":"23","mcode":"9","bcode":"901","code":"90108","name":"1\uad70\uac74\uc124"},"90109":{"kcode":"8288","tcode":"23","mcode":"9","bcode":"901","code":"90109","name":"\uac74\uc124\ud604\uc7a5"},"90110":{"kcode":"8274","tcode":"23","mcode":"9","bcode":"901","code":"90110","name":"\uac74\ucd95"}}},"902":{"kcode":"22126","tcode":"8","mcode":"8","bcode":"9","code":"902","name":"\uc2e4\ub0b4\u00b7\uc778\ud14c\ub9ac\uc5b4\u00b7\uc870\uacbd","keyword":{"90201":{"kcode":"8295","tcode":"23","mcode":"9","bcode":"902","code":"90201","name":"\uc2e4\ub0b4\uac74\ucd95"},"90202":{"kcode":"8298","tcode":"23","mcode":"9","bcode":"902","code":"90202","name":"\uc778\ud14c\ub9ac\uc5b4"},"90203":{"kcode":"22131","tcode":"23","mcode":"9","bcode":"902","code":"90203","name":"\uc0e4\uc2dc\u00b7\ubca0\ub780\ub2e4"},"90204":{"kcode":"22132","tcode":"23","mcode":"9","bcode":"902","code":"90204","name":"\ub9ac\ubaa8\ub378\ub9c1"},"90205":{"kcode":"22133","tcode":"23","mcode":"9","bcode":"902","code":"90205","name":"\ub3c4\ubc30\u00b7\ubcbd\uc9c0"},"90206":{"kcode":"8299","tcode":"23","mcode":"9","bcode":"902","code":"90206","name":"\uac74\ucd95\uc124\uacc4\u00b7CAD"},"90207":{"kcode":"8292","tcode":"23","mcode":"9","bcode":"902","code":"90207","name":"\uc870\uacbd"}}},"903":{"kcode":"22127","tcode":"8","mcode":"8","bcode":"9","code":"903","name":"\ud658\uacbd\u00b7\uc124\ube44","keyword":{"90301":{"kcode":"8291","tcode":"23","mcode":"9","bcode":"903","code":"90301","name":"\uc0c1\ud558\uc218\ub3c4"},"90302":{"kcode":"8301","tcode":"23","mcode":"9","bcode":"903","code":"90302","name":"\ubb3c\ud0f1\ud06c\u00b7\uc218\uc790\uc6d0"},"90303":{"kcode":"22134","tcode":"23","mcode":"9","bcode":"903","code":"90303","name":"\ud3d0\uc218\ucc98\ub9ac"},"90304":{"kcode":"8297","tcode":"23","mcode":"9","bcode":"903","code":"90304","name":"\uacf5\uc870\ub0c9\ub3d9"},"90305":{"kcode":"8290","tcode":"23","mcode":"9","bcode":"903","code":"90305","name":"\ud50c\ub79c\ud2b8"},"90306":{"kcode":"8294","tcode":"23","mcode":"9","bcode":"903","code":"90306","name":"\uc18c\ubc29\u00b7\ubc29\uc7ac"},"90307":{"kcode":"8278","tcode":"23","mcode":"9","bcode":"903","code":"90307","name":"\uc804\uae30\uc124\ube44"},"90308":{"kcode":"22135","tcode":"23","mcode":"9","bcode":"903","code":"90308","name":"\ud1b5\uc2e0\uc124\ube44"},"90309":{"kcode":"22136","tcode":"23","mcode":"9","bcode":"903","code":"90309","name":"\uac00\uc2a4\uc124\ube44"},"90310":{"kcode":"22137","tcode":"23","mcode":"9","bcode":"903","code":"90310","name":"\ub0c9\ub09c\ubc29\uc124\ube44"},"90311":{"kcode":"8296","tcode":"23","mcode":"9","bcode":"903","code":"90311","name":"\ube44\ud30c\uad34\uac80\uc0ac"},"90312":{"kcode":"8286","tcode":"23","mcode":"9","bcode":"903","code":"90312","name":"\ud658\uacbd"},"90313":{"kcode":"8280","tcode":"23","mcode":"9","bcode":"903","code":"90313","name":"\uc548\uc804\uad00\ub9ac"},"90314":{"kcode":"22138","tcode":"23","mcode":"9","bcode":"903","code":"90314","name":"\uc2dc\uc124"}}},"904":{"kcode":"22128","tcode":"8","mcode":"8","bcode":"9","code":"904","name":"\ubd80\ub3d9\uc0b0\u00b7\uc784\ub300\u00b7\uc911\uac1c","keyword":{"90401":{"kcode":"22139","tcode":"23","mcode":"9","bcode":"904","code":"90401","name":"\uacf5\uc778\uc911\uac1c\uc0ac"},"90402":{"kcode":"22140","tcode":"23","mcode":"9","bcode":"904","code":"90402","name":"\ubd80\ub3d9\uc0b0\uc911\uac1c"},"90403":{"kcode":"22141","tcode":"23","mcode":"9","bcode":"904","code":"90403","name":"\uc784\ub300\ucee8\uc124\ud305"},"90404":{"kcode":"22142","tcode":"23","mcode":"9","bcode":"904","code":"90404","name":"\ud1a0\uc9c0\uac1c\ubc1c"},"90405":{"kcode":"22143","tcode":"23","mcode":"9","bcode":"904","code":"90405","name":"\ubd80\ub3d9\uc0b0\uac1c\ubc1c"},"90406":{"kcode":"22144","tcode":"23","mcode":"9","bcode":"904","code":"90406","name":"\ud574\uc678\ubd80\ub3d9\uc0b0"},"90407":{"kcode":"22145","tcode":"23","mcode":"9","bcode":"904","code":"90407","name":"\ubd84\uc591\uc0ac\ubb34\uc18c"},"90408":{"kcode":"22146","tcode":"23","mcode":"9","bcode":"904","code":"90408","name":"\uacbd\ub9e4\u00b7\uacf5\ub9e4"},"90409":{"kcode":"22147","tcode":"23","mcode":"9","bcode":"904","code":"90409","name":"\uc0ac\ubb34\uc2e4"},"90410":{"kcode":"22148","tcode":"23","mcode":"9","bcode":"904","code":"90410","name":"\uc0c1\uac00"},"90411":{"kcode":"22149","tcode":"23","mcode":"9","bcode":"904","code":"90411","name":"\ube4c\ub529"},"90412":{"kcode":"22150","tcode":"23","mcode":"9","bcode":"904","code":"90412","name":"\ud1a0\uc9c0"},"90413":{"kcode":"22151","tcode":"23","mcode":"9","bcode":"904","code":"90413","name":"\uc544\ud30c\ud2b8"},"90414":{"kcode":"22152","tcode":"23","mcode":"9","bcode":"904","code":"90414","name":"\uc624\ud53c\uc2a4\ud154"},"90415":{"kcode":"22153","tcode":"23","mcode":"9","bcode":"904","code":"90415","name":"\ubaa8\ub378\ud558\uc6b0\uc2a4"}}}}},"10":{"bcode":"10","name":"\uae30\uad00\u00b7\ud611\ud68c","code":{"1001":{"kcode":"22016","tcode":"8","mcode":"8","bcode":"10","code":"1001","name":"\uc815\ubd80\u00b7\uacf5\uacf5\uae30\uad00\u00b7\uacf5\uae30\uc5c5","keyword":{"100101":{"kcode":"8187","tcode":"23","mcode":"10","bcode":"1001","code":"100101","name":"\uacf5\uacf5\uae30\uad00"},"100102":{"kcode":"8188","tcode":"23","mcode":"10","bcode":"1001","code":"100102","name":"\uacf5\uc0ac\u00b7\uacf5\uae30\uc5c5"},"100103":{"kcode":"8189","tcode":"23","mcode":"10","bcode":"1001","code":"100103","name":"\uacf5\ub2e8"},"100104":{"kcode":"8191","tcode":"23","mcode":"10","bcode":"1001","code":"100104","name":"\uacf5\ubb34\uc6d0"},"100105":{"kcode":"8198","tcode":"23","mcode":"10","bcode":"1001","code":"100105","name":"\uc601\uc0ac\uad00\u00b7\ub300\uc0ac\uad00"},"100106":{"kcode":"8199","tcode":"23","mcode":"10","bcode":"1001","code":"100106","name":"\uc678\uad6d\uad00\uad11\uccad"},"100107":{"kcode":"8200","tcode":"23","mcode":"10","bcode":"1001","code":"100107","name":"\uc911\uc559\uc815\ubd80\uae30\uad00"},"100108":{"kcode":"8201","tcode":"23","mcode":"10","bcode":"1001","code":"100108","name":"\uc9c0\ubc29\uc790\uce58\ub2e8\uccb4"},"100110":{"kcode":"8203","tcode":"23","mcode":"10","bcode":"1001","code":"100110","name":"\uc815\ub2f9"},"100111":{"kcode":"22021","tcode":"23","mcode":"10","bcode":"1001","code":"100111","name":"\ub3c4\uc11c\uad00"},"100112":{"kcode":"22022","tcode":"23","mcode":"10","bcode":"1001","code":"100112","name":"\ubc15\ubb3c\uad00\u00b7\ubbf8\uc220\uad00"},"100113":{"kcode":"22023","tcode":"23","mcode":"10","bcode":"1001","code":"100113","name":"\uad6d\ub9bd\uacf5\uc6d0"}}},"1002":{"kcode":"22017","tcode":"8","mcode":"8","bcode":"10","code":"1002","name":"\ud611\ud68c\u00b7\ub2e8\uccb4","keyword":{"100201":{"kcode":"8190","tcode":"23","mcode":"10","bcode":"1002","code":"100201","name":"\ud611\ud68c"},"100202":{"kcode":"8192","tcode":"23","mcode":"10","bcode":"1002","code":"100202","name":"\uc870\ud569"},"100203":{"kcode":"8193","tcode":"23","mcode":"10","bcode":"1002","code":"100203","name":"\uc885\uad50\ub2e8\uccb4"},"100204":{"kcode":"8194","tcode":"23","mcode":"10","bcode":"1002","code":"100204","name":"\uc7ac\ub2e8\ubc95\uc778"},"100205":{"kcode":"8195","tcode":"23","mcode":"10","bcode":"1002","code":"100205","name":"\uc0ac\ub2e8\ubc95\uc778"},"100206":{"kcode":"8196","tcode":"23","mcode":"10","bcode":"1002","code":"100206","name":"\uc5f0\ud569\ud68c"},"100207":{"kcode":"8197","tcode":"23","mcode":"10","bcode":"1002","code":"100207","name":"\uc5f0\ub9f9"},"100208":{"kcode":"8204","tcode":"23","mcode":"10","bcode":"1002","code":"100208","name":"\uc2dc\ubbfc\ub2e8\uccb4"},"100209":{"kcode":"8205","tcode":"23","mcode":"10","bcode":"1002","code":"100209","name":"NGO\u00b7\uc0ac\ud68c\uacf5\ud5cc"},"100210":{"kcode":"22035","tcode":"23","mcode":"10","bcode":"1002","code":"100210","name":"\uad6d\uc81c\uae30\uad6c"}}},"1003":{"kcode":"22018","tcode":"8","mcode":"8","bcode":"10","code":"1003","name":"\ubc95\ub960\u00b7\ubc95\ubb34\u00b7\ud2b9\ud5c8","keyword":{"100301":{"kcode":"8482","tcode":"23","mcode":"10","bcode":"1003","code":"100301","name":"\ubc95\ub960\uc0ac\ubb34\uc18c"},"100302":{"kcode":"8483","tcode":"23","mcode":"10","bcode":"1003","code":"100302","name":"\ubc95\ub960\uc0c1\ub2f4"},"100303":{"kcode":"8484","tcode":"23","mcode":"10","bcode":"1003","code":"100303","name":"\ub85c\ud38c"},"100304":{"kcode":"8485","tcode":"23","mcode":"10","bcode":"1003","code":"100304","name":"\ubcc0\ud638\uc0ac\uc0ac\ubb34\uc2e4"},"100305":{"kcode":"8486","tcode":"23","mcode":"10","bcode":"1003","code":"100305","name":"\ud2b9\ud5c8\uc0ac\ubb34\uc18c"},"100306":{"kcode":"8487","tcode":"23","mcode":"10","bcode":"1003","code":"100306","name":"\ubc95\ubb34\uc0ac\ubb34\uc18c"},"100307":{"kcode":"8488","tcode":"23","mcode":"10","bcode":"1003","code":"100307","name":"\ubc95\ubb34\ubc95\uc778"},"100308":{"kcode":"8489","tcode":"23","mcode":"10","bcode":"1003","code":"100308","name":"\ub178\ubb34\ubc95\uc778"},"100309":{"kcode":"22024","tcode":"23","mcode":"10","bcode":"1003","code":"100309","name":"\ubcc0\ub9ac\uc0ac\uc0ac\ubb34\uc18c"}}},"1004":{"kcode":"22019","tcode":"8","mcode":"8","bcode":"10","code":"1004","name":"\uc138\ubb34\u00b7\ud68c\uacc4","keyword":{"100401":{"kcode":"8490","tcode":"23","mcode":"10","bcode":"1004","code":"100401","name":"\uc138\ubb34\ud68c\uacc4\uc0ac\ubb34\uc18c"},"100402":{"kcode":"8491","tcode":"23","mcode":"10","bcode":"1004","code":"100402","name":"\uc138\ubb34\ubc95\uc778"},"100403":{"kcode":"8492","tcode":"23","mcode":"10","bcode":"1004","code":"100403","name":"\uc138\ubb34\ucee8\uc124\ud305"},"100404":{"kcode":"8493","tcode":"23","mcode":"10","bcode":"1004","code":"100404","name":"\ud68c\uacc4\ubc95\uc778"}}},"1005":{"kcode":"22020","tcode":"8","mcode":"8","bcode":"10","code":"1005","name":"\uc5f0\uad6c\uc18c\u00b7\ucee8\uc124\ud305\u00b7\uc870\uc0ac","keyword":{"100501":{"kcode":"8586","tcode":"23","mcode":"10","bcode":"1005","code":"100501","name":"\uc5f0\uad6c\uc18c"},"100502":{"kcode":"8587","tcode":"23","mcode":"10","bcode":"1005","code":"100502","name":"\ucee8\uc124\ud305"},"100503":{"kcode":"8588","tcode":"23","mcode":"10","bcode":"1005","code":"100503","name":"\uacbd\uc81c\uc5f0\uad6c\uc18c"},"100504":{"kcode":"8589","tcode":"23","mcode":"10","bcode":"1005","code":"100504","name":"\uacbd\uc601\uc5f0\uad6c\uc18c"},"100505":{"kcode":"8590","tcode":"23","mcode":"10","bcode":"1005","code":"100505","name":"\uc870\uc0ac\ubd84\uc11d"},"100506":{"kcode":"8591","tcode":"23","mcode":"10","bcode":"1005","code":"100506","name":"\uc5f0\uad6c\uc6d0"}}}}}}</script>
<script type="text/javascript">
    (function ($) {
        UPJONG_LAYER.init();
        if(document.getElementById("req_company_nm_verify")) {
            // 딤드 모달
            UI.Layer('#modal_compnay_nm', {
                btnOpen : '#req_company_nm_verify',
                dimLayer : '.dimmed'
            });
        }

        if(document.getElementById("branch_logo_btn")) {
            UI.Layer('#modal_inner_recruit_logo_main', {
                btnOpen : '#branch_logo_btn',
                dimLayer : '.dimmed'
            });
        }


        if(document.getElementById("req_verify")) {
            UI.Layer('#modal_compnay_nm', {
                btnOpen : '#req_verify',
                dimLayer : '.dimmed'
            });
        }


        UI.Accordion('#accordion1', {
            disableAccordion : true
        });

        UI.Accordion('#accordion_basic', {
            disableAccordion : true
        });

        $("input[name='file_nm_certification'], input[name='agency_file_nm']").bind("change", function(){

            if(ie_flag() < 10 && ie_flag() != false){
                return false;
            }

            var name = $(this).attr('name');
            var classNm = '#'+name + '_txt';
            var reader = new FileReader();
            var file = $(this).get(0).files[0];

            if(file && /\.(jpe?g|gif|png|pdf)$/i.test(file.name)
                && file.size < 1000000){
                reader.readAsDataURL(file);
                reader.onload = function () {
                    var tmp = reader.result;
                    $(classNm).val(file.name);
                }
            }else{
                if(file) alert("파일이 첨부되지 않았습니다. 파일 확장자/용량을 확인해주세요.");
                $(this).val("");
                return false;
            }
        });

        $("input[name='logo']").bind("change", function(){
            if(ie_flag() < 10 && ie_flag() != false){
                return false;
            }

            var name = $(this).attr('name');
            var classNm = '.'+ name + '_title';
            var reader = new FileReader();
            var file = $(this).get(0).files[0];
            var preview = '.preview_'+name;

            if(file && /\.(jpe?g|gif|png)$/i.test(file.name)
                && file.size < 1000000){
                reader.readAsDataURL(file);
                reader.onload = function () {
                    var tmp = reader.result;
                    var logoSrc = '<span><img src=' + tmp + ' width="188" height="79">';
                    $(preview).html(logoSrc);
                    $(classNm).val(file.name);
                }
            }else{
                if(file) alert("파일이 첨부되지 않았습니다. 파일 확장자/용량을 확인해주세요.");
                $(this).val("");
                return false;
            }
        });

        // 기업정보 뷰 팝업
        $('.company_info_view_btn').on('click', function() {
            window.open('/zf_user/company-info/view?csn=' + $(this).data('csn'),'');
            return false;
        });

        // Sample 기업정보 뷰 팝업
        $('.sample_company_info_view_btn').on('click', function() {
            window.open('/zf_user/company-info/view?csn=3810072663','');
            return false;
        });

        // 나이스 수정 요청 팝업
        $('.nice_request_btn').on('click', function() {
            window.open('https://minwon.dataline.co.kr/p06/A0601M001.nice?offer_id=206', "nice_popup", "width=1100,height=800,scrollbars=yes");
            return false;
        });

        // 이크레더블 평가 보고서
        $('.evaluation_report_url_btn').on('click', function() {
            window.open($(this).data('url'),'', 'width=1000,height=958,scrollbars=yes,status=no');
            return false;
        });

        // 이크레더블 수정 요청 팝업
        $('.ecredible_request_btn').on('click', function() {
            window.open('http://www.ecredible.co.kr/echome/customer/contact.jsp', "ecredible_popup", "width=1100,height=800,scrollbars=yes");
            return false;
        });

        // DART 수정 요청 팝업
        $('.dart_request_btn').on('click', function() {
            window.open('https://dart.fss.or.kr/', "dart_popup", "width=1100,height=800,scrollbars=yes");
            return false;
        });

        // row 추가
        $('#content').on('click', '.add_row_btn', function() {
            var $el = $(this),
                type = $el.data('type'),
                limit = $el.data('limit'),
                $rows = $('.' + type + '_row'),
                $lastRow = $rows.filter(':last');

            if ($rows.length >= limit) {
                alert('최대 ' + limit + '열까지만 추가가 가능 합니다.');
                return false;
            }

            var $clonedRow   = $lastRow.clone(),
                $headerFirst = $('#' + type + '_header').find('th:first'),
                rowspan      = $headerFirst.attr('rowspan');

            $clonedRow.find('input, select').val('');
            $clonedRow.find('.in_tablebot_txt').text('');
            $clonedRow.find('.grey').text('만원');

            $lastRow.find('.add_row_btn').remove();

            $clonedRow.insertAfter($lastRow);

            $headerFirst.attr('rowspan', rowspan + 1);
            return false;
        });

        // row 삭제
        $('#content').on('click', '.del_row_btn', function() {
            var $el = $(this),
                type = $el.data('type'),
                $row = $el.closest('tr.' + type + '_row'),
                $rows = $('.' + type + '_row'),
                $headerFirst = $('#' + type + '_header').find('th:first'),
                rowspan = $headerFirst.attr('rowspan');

            if ($rows.length <= 1) {
                alert('마지막 행은 삭제할 수 없습니다.');
                return false;
            }

            if ($row.next('tr.' + type + '_row').length === 0) {
                $row.find('.add_row_btn').clone().insertAfter($row.prev('tr.' + type + '_row').find('.del_row_btn'));
            }

            $row.remove();

            $headerFirst.attr('rowspan', rowspan - 1);
            return false;

        });

        // 지점 로고 삭제
        $('#branch_logo_delete_btn').on('click', function() {
            var mcom_idx = $(this).data('mcom_idx');
            if(confirm('삭제하시겠습니까?')) {
                location.href='/zf_user/company-photo/delete-logo/mcom_idx/' + mcom_idx;
            }
        });

        // 미리보기
        $('#preview_btn').on('click', function() {
            if (!overviewInfoCheck(document.frm)) {
                return false;
            }

            var $form = $('#frm'),
                previousFormAction = $form.attr('action'),
                targetWin = 'preview';

            $form.attr('action', '/zf_user/company-info/preview');

            var previewWindow = window.open('about:blank', targetWin);

            $form.attr('target', targetWin);

            $form.submit();
            previewWindow.focus();

            $form.attr('action', previousFormAction);
            $form.attr('target', '');

            return false;
        });

        // 수정
        $('#edit_btn').on('click', function() {
            if (!overviewInfoCheck(document.frm)) {
                return false;
            }

            $('#frm').submit();
            return false;
        });

        // 대표 기업 정보 수정
        $('#main_company_data_edit_btn').on('click', function() {
            if(!confirm('수정 하시겠습니까?')) {
                return false;
            }

            var $emptyInput = $('#workenvForm').find('input[id^=image_attachment_photo_]:not(:disabled)').filter(function () {
                return this.value.trim() === "";
            });

            if ($emptyInput.length > 0) {
                alert('사진에 대한 제목을 입력해주세요.');
                $emptyInput[0].focus();
                return false;
            }

            if ($('#first_reg_fl').val() == 'y') {
                if ($('#industry_code').val() == '') {
                    alert('업종을 입력해주세요.');
                    return false;
                } else {
                    $('#request_industry_code').val($('#industry_code').val());
                }

                if ($('input[name=new_address]').val() == '') {
                    alert('기업 주소를 입력해주세요.');
                    return false;
                }

                if ($('input[name=tel1]').val() == '') {
                    alert('대표 기업 전화를 입력해주세요.');
                    return false;
                }

                if ($('input[name=tel2]').val() == '' && $('input[name=tel3]').val() == '') {
                    alert('대표 기업 전화를 입력해주세요.');
                    return false;
                }
                $('#first_main_frm').submit();
            } else {
                $('#main_frm').submit();
            }
            return false;
        });

        // 브랜치 기업 정보 수정
        $('#member_data_edit_btn').on('click', function() {
            $('#within_frm').submit();
            return false;
        });

        //인증 신청
        $('#request_confirm_btn').on('click', function() {
            var $frm = jQuery('#request_confirm_frm');

            if (!$frm.find('#private_agree').is(":checked")) {
                alert('개인정보 수집 동의 버튼을 체크해주세요.');
                return false;
            }

            if ($frm.find('#email').val() == '') {
                alert('요청자 이메일을 확인하세요.');
                return false;
            }

            if($frm.find('#file_nm_certification').val() == "") {
                alert('증빙자료 이미지를 첨부해주세요.');
                return false;
            }

            $frm.submit();
            return false;
        });

        // 요청 하기
        $('#request_company_data_btn').on('click', function() {
            var $frm = jQuery('#request_frm');

            if (!$frm.find('#private_agree').is(":checked")) {
                alert('개인정보 수집 동의 버튼을 체크해주세요.');
                return false;
            }

            if ($frm.find('input[name=email_id]').val() == '') {
                alert('요청자 이메일은 필수 항목입니다.');
                return false;
            }

            if ($frm.find('#order_select').val() == '0' && $frm.find('input[name=email_dm]').val() == '') {
                alert('요청자 이메일은 필수 항목입니다.');
                return false;
            }

            if($frm.find('#image_attachment_evidence').val() == '') {
                alert('증빙자료 이미지를 첨부해주세요.');
                return false;
            }

            if (jQuery('.hope_jobs').text()) {
                jQuery('#request_upjong').val(jQuery('.hope_jobs').text());
            }

            $frm.submit();
            return false;
        });

        //기업명 신청
        $('#request_modify_company_nm_frm_btn').on('click', function() {
            var $frm = jQuery('#request_modify_company_nm_frm');

            if (!$frm.find('#private_agree').is(":checked")) {
                alert('개인정보 수집 동의 버튼을 체크해주세요.');
                return false;
            }

            if ($frm.find('#email').val() == '') {
                alert('요청자 이메일을 확인하세요.');
                return false;
            }

            if ($frm.find('#modify_company_nm').val() == '') {
                alert('기업명(변경)을 확인하세요.');
                return false;
            }

            if($frm.find('#file_nm_certification').val() == "") {
                alert('증빙자료 이미지를 첨부해주세요.');
                return false;
            }

            $frm.submit();
            return false;
        });

    })(jQuery);
</script>
<form name="certify-form" id="certify-form" action="https://check.namecheck.co.kr/checkplus_new_model4/checkplus.cb" method="post">
    <input type="hidden" name="m" value="checkplusSerivce" id="m">    <input type="hidden" name="EncodeData" value="AgAFRzMyMTY54cdgmuHmxAUI02A1d/sfD2Ek1B5X1He7hng4xOVNKENbcRpamqhnV8/TY1SItVcsh/vPQtvOfBRAeWXERyunAFt3fDEv2nVBzOkBzAniYDPjD+bMDJEPuUM68ko/uFaInFHDUA2IoAx/P+IA3PCxMftCbQQEMQKQ6FzTQgzuFShiRz73e6Q8WlK6LrMYCzrhO3eXXnF2pCWZ5EfWx10qchAwa7w5kjRNt/tD8kC6Ndz/VQAuOlwVrL8JwSXmxPKNoOh8kk6TCVQu1E9CkGzSvv36Rj02aHyXbyy3Kr2NQizFWHYTxE+SssqHY4i/mp6A5iiT65FnR0cfk184X6qE0jv6Srlqf8uFLttj+5YRw3EURm6qNvmSXnehYvmuJwlkl6hgBBDOYEGMflgQc2q8M5x8PGH6IClHPFQw/4ROD80FevsM0uamlVkMuyrraH4L55xNhdf0YWwR2fvAmX6MRGaU9f8pLOOE8p8nt+Sh5w==" id="EncodeData">    <input type="hidden" name="param_r1" value="/zf_user/member/opt-in/identification-verification" id="param_r1">    <input type="hidden" name="param_r2" value="/zf_user/member/opt-in/identification-verification" id="param_r2">    <input type="hidden" name="param_r3" value="" id="param_r3"></form>

<form name="certify-form2" id="certify-form2" action="https://check.namecheck.co.kr/checkplus_new_model4/checkplus.cb" method="post">
    <input type="hidden" name="m" value="checkplusSerivce" id="m">    <input type="hidden" name="EncodeData" value="AgAFRzMyMTY54cdgmuHmxAUI02A1d/sfD2Ek1B5X1He7hng4xOVNKENbcRpamqhnV8/TY1SItVcsh/vPQtvOfBRAeWXERyunAFt3fDEv2nVBzOkBzAniYDPjD+bMDJEPuUM68ko/uFaInFHDUA2IoAx/P+IA3PCxMftCbQQEMQKQ6FzTQgzuFShiRz73e6Q8WlK6LrMYCzrhO3eXXnF2pCWZ5EfWx10qchAwa7w5kjRNt/tD8kC6Ndz/VQAuOlwVrL8JwSXmxPKNoOh8kk6TCVQu1E9CkGzSvv36Rj02aHyXbyy3Kr2NQizFWHYTxE+SssqHY4i/mp6A5iiT65FnR0cfk184X6qE0jv6Srlqf8uFLttj+5YRw3EURm6qNvmSXnehYvmuJwlkl6hgBBDOYEGMflgQc2q8M5x8PGH6IClHPFQw/4ROD80FevsM0uamlVkMuyrraH4L55xNhdf0YWwR2fvAmX6MRGaU9f8pLOOE8p8nt+Sh5w==" id="EncodeData">    <input type="hidden" name="param_r1" value="/zf_user/company-join/edit" id="param_r1">    <input type="hidden" name="param_r2" value="/zf_user/company-join/edit" id="param_r2">    <input type="hidden" name="param_r3" value="" id="param_r3"></form>
<div class="lpop_wrap lpop_company_change" style="display: none; top:200px;">
    <h3 class="name_modify">기업명 변경 요청</h3>
    <h3 class="type_modify">기업구분 변경 요청</h3>
    <div class="desc_box">
        <p class="txt_noti">
            정확한 기업정보 제공을 위해 관리자 확인 후 변경을 도와드리고 있습니다.<br>
            아래 사항을 입력후 사업자등록증 사본을 첨부해 보내주시기 바랍니다.<br>
            업무시간 : 월-금 09:00~18:00 <span class="txt_date">(주말, 공휴일 휴무)</span>
        </p>
    </div>
    <div class="tblWrap tblRow">
        <form id="form_chang_company_info" name="form_chang_company_info" method="post" enctype="multipart/form-data">
            <input type="hidden" name="mcom_idx" value="" id="mcom_idx">            <input type="hidden" name="company_nm" value="" id="company_nm">            <input type="hidden" name="manager_nm" value="" id="manager_nm">            <input type="hidden" name="email" value="" id="email">            <input type="hidden" name="tel" value="" id="tel">            <input type="hidden" name="request_type" value="" id="request_type">            <table class="tbl_common">
                <caption class="blind"><span id="modify_title">기업명</span> 변경 요청 신청 작성</caption>
                <colgroup>
                    <col style="width:148px;">
                    <col style="">
                </colgroup>
                <tbody>
                <tr class="name_modify">
                    <th scope="row" class="txtLeft">기업명</th>
                    <td>
                        <input type="text" id="modify_company_nm" name="modify_company_nm" value="" placeholder="기업명" title="" class="inpTypo sizeS">
                        <input type="hidden" name="ori_company_nm" value="" id="ori_company_nm">                    </td>
                </tr>
                <tr class="name_modify">
                    <th scope="row" class="txtLeft">대표자명</th>
                    <td>
                        <input type="text" id="modify_ceo_nm" name="modify_ceo_nm" value="" placeholder="대표자명" title="" class="inpTypo sizeS">
                        <input type="hidden" name="ori_ceo_nm" value="" id="ori_ceo_nm">                    </td>
                </tr>
                <tr class="type_modify">
                    <th class="txtLeft">기업구분</th>
                    <td>
                        <div class="inpSel sizeS" style="width:100%">
                            <select name="modify_company_cd" id="modify_company_cd">
	<option value="" label="기업구분">기업구분</option>
	<option value="1" label="일반">일반</option>
	<option value="10" label="헤드헌팅">헤드헌팅</option>
	<option value="9" label="파견/도급/채용대행">파견/도급/채용대행</option>
</select>                            <input type="hidden" name="ori_company_cd" value="" id="ori_company_cd">                        </div>
                    </td>
                </tr>
                
                <tr>
                    <th class="txtLeft">변경사유</th>
                    <td><input type="text" id="modify_reason" name="modify_reason" value="" placeholder="사유입력" title="기업명 변경 사유 입력" class="inpTypo sizeS"></td>
                </tr>
                <tr>
                    <th class="txtLeft">사업자등록증 첨부</th>
                    <td>
                        <div class="filebox">
                            <input type="text" class="upload_name" value="" placeholder="파일선택" id="file_nm_txt" name="file_nm_txt" disabled="disabled" style="width:230px;">
                            <label for="file_nm"><span>파일 선택</span></label>
                            <input type="file" id="file_nm" name="file_nm" class="upload_hidden">
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
    <div class="btn_wrap">
        <button type="button" id="btn_close_request_compleate" class="btnSizeXL colorBlack">신청완료</button>
    </div>
    <button type="button" class="btn_close_lpop01" id="btn_close_request_ly">닫기</button>
</div>
<script language="javascript">
</script>

<iframe name="ifrm_chang_company" src="about:blank" width="500px" height="100px" border="0" style="border:0"></iframe>

            <!-- snb 영역 -->
                    </div>
        <!-- 공통 floating button -->
        <div class="wrap_floating" id="layout_wrap_floating">
            
            <a href="javascript:;" class="btn btn_list" title="지원자 리스트로 이동" style="display:none" id="applicant_manage_btn_list"><span class="blind">리스트</span></a>

                        <a href="javascript:void(0)" class="btn btn_top" title="페이지 최상단으로 이동"><span class="blind">TOP</span></a>
                    </div>
        <!-- footer -->
        <footer id="sri_footer" class="sri_footer">
    <div class="wrap_footer">
        <div class="links" role="navigation" aria-label="사람인 서비스 정책 및 이용문의">
    <ul>
        <li class="first"><a href="//www.saraminhr.co.kr/" target="_blank" rel="noopener" title="회사소개 새창열기">회사소개</a></li>
        <li><a href="//saraminhr.team" target="_blank" rel="noopener" title="인재채용 새창열기">인재채용</a></li>
        <li><a href="/zf_user/help/terms-of-service" title="회원약관 바로가기">회원약관</a></li>
        <li class="bold"><a href="/zf_user/help/privacy" title="개인정보처리방침 바로가기">개인정보처리방침</a></li>
        <li><a href="https://www.saramin.co.kr/zf_user/popup/email-refuse" onclick="window.open(this.href, '이메일무단수집거부', 'width=380,height=200,left=0,top=0'); return false;" rel="noopener" title="이메일무단수집거부 바로가기">이메일무단수집거부</a></li>
        <li><a href="https://oapi.saramin.co.kr/" target="_blank" rel="noopener" title="채용정보 API">채용정보 API</a></li>
        <li><a href="/zf_user/help/inquery/partnership-inquiry-write" target="_self" rel="noopener" title="제휴문의">제휴문의</a></li>
        <li><a href="http://www.saramin.co.kr/zf_user/help" title="고객센터 바로가기">고객센터</a></li>
    </ul>
</div>
        <div class="copyright">
    <div class="help_list">
        <dl>
            <dt>사람인 고객센터</dt>
            <dd>02-2025-4733 (평일 09:00~19:00, 주말공휴일 휴무)</dd>
        </dl>
        <dl>
            <dt>이메일</dt>
            <dd><a href="mailto:help@saramin.co.kr" target="_blank" title="이메일 바로가기">help@saramin.co.kr</a></dd>
        </dl>
        <dl>
            <dt>FAX</dt>
            <dd>02-6937-0039</dd>
        </dl>
    </div>
    <div class="link_channel">
        <a href="/zf_user/company-review-qst-and-ans" target="_blank" title="커뮤니티 바로가기" class="link_cont">프로들과 이야기하자! <strong>커뮤니티</strong></a>
        <dl>
            <dt>사람인 공식채널</dt>
            <dd><a href="https://www.instagram.com/saramin_official/?hl=ko" target="_blank"><span class="blind">사람인 인스타그램</span></a></dd>
            <dd><a href="https://blog.naver.com/saraminapp" target="_blank"><span class="blind">사람인 네이버 블로그</span></a></dd>
            <dd><a href="https://post.naver.com/my.nhn?memberNo=5661329" target="_blank"><span class="blind">사람인 네이버 포스트</span></a></dd>
            <dd><a href="https://ko-kr.facebook.com/saramin.dream/" target="_blank"><span class="blind">사람인 페이스북</span></a></dd>
            <dd><a href="https://www.youtube.com/@saramindream" target="_blank"><span class="blind">사람인 유튜브</span></a></dd>
        </dl>
    </div>

</div>    </div>
</footer>
    </div>
</div>