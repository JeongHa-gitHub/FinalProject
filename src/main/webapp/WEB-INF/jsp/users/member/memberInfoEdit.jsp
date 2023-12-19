<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div class="memberInfo">
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
                <li class="only selected">
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
                <li class="only">
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
        <!-- 데이터 -->
        <div id="sri_wrap">
            <div id="content">
                <script type="text/javascript" src="/js/ui-component.js?v=20231114103235"></script>
                <script type="text/javascript" src="/js/httpRequest.js"></script>
                <div class="wrapper_narrow">
                    <h1 class="wrap_title">개인정보 관리</h1>
                    <form id="frm" name="frm" method="post" action="/FinalProject/user/editPost"
                    enctype="multipart/form-data">
                        <div class="person_update">
                            <div class="person_update_sidearea">
                                <div class="photo_wrap">
                                    <span class="photo" id="myhome_profile_photo"><img id="jyImg" alt="" src="">
                                        <img id="jyImg" alt="" src="<%=request.getContextPath()%>/recruit/usersInfo${member.users.usersImg}" />
                                    </span>
                                    <span class="photo_border"></span>
                                    <input type="file" id="jyFile" name="uploadFiles" style="display:none">
                                    <button type="button" onclick="fChgImg()" class="btn_photo" aria-label="프로필 편집/삭제" aria-haspopup="menu"></button>
                                </div>
                            </div>
                            <div class="person_update_main">
                                <div class="person_field_wrap">
                                    <h2 class="person_field_legend">기본정보</h2>
                                    <table class="person_field_table">
                                        <tr class="person_field active">
                                            <th>아이디</th>
                                            <td>
                                                ${member.memId }
                                                <input type="hidden" name="memId" value="${member.memId}" />
                                            </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th>새 비밀번호</th>
                                            <td><input type="password" name="memPass" class="form-control" value="" /> </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th>비밀번호 확인</th>
                                            <td><input type="password" name="connewmemPass" class="form-control" value="" /> </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">이름</th>
                                            <td><input type="text" name="users.usersNm" class="form-control" value="${member.users.usersNm }">
                                            </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">생년월일</th>
                                            <td>
                                                <input type="date" name="users.usersBir" class="form-control" value="${member.users.usersBir }">
                                            </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">성별</th>
                                            <td>
                                                <div class="person_field_body person_field_edit radiogroup">
                                                    <div class="InpBox">
                                                        <span class="Rdo">
                                                            <input type="radio" name="users.usersGen" id="sexMale" value="M" ${member.users.usersGen=='M' ? 'checked' : '' }>
                                                            <label class="Lbl" for="sexMale">남성</label>
                                                        </span>
                                                    </div>
                                                    <div class="InpBox">
                                                        <span class="Rdo">
                                                            <input type="radio" name="users.usersGen" id="sexFemale" value="F" ${member.users.usersGen=='F' ? 'checked' : '' }>
                                                            <label class="Lbl" for="sexFemale">여성</label>
                                                        </span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="person_field_wrap">
                                    <h2 class="person_field_legend">연락처 정보</h2>
                                    <table class="person_field_table">
                                        <tbody>
                                            <tr class="person_field person_field_cell">
                                                <th scope="row">휴대폰</th>
                                                <td><input type="text" name="memTel" class="form-control" value="${member.memTel }"> </td>
                                            </tr>
                                            <tr class="person_field person_field_mail">
                                                <th scope="row">이메일</th>
                                                <td><input type="email" name="memMail" class="form-control" value="${member.memMail }"></td>
                                            </tr>
                                            <tr class="person_field active">
                                                <th scope="row">주소</th>
                                                <td>
                                                    <div class="person_field_body person_field_edit">
                                                        <div class="TypoBox">
                                                            <input type="text" id="sample6_postcode" name="memZip" class="Typo address_domestic _searchArea" value="${member.memZip }" style="width: 100px;">
                                                        </div>
                                                        <input type="button" onclick="sample6_execDaumPostcode()" class="BtnType SizeL defalt btn_cert_pop collet_btn" value="우편번호 찾기"><br>
                                                        <div class="TypoBox">
                                                            <input type="text" id="sample6_address" name="memAddr1" class="Typo address_domestic _searchArea" value="${member.memAddr1 }" style="width: 305px;">
                                                        </div>
                                                        <div class="TypoBox">
                                                            <input type="text" id="sample6_detailAddress" name="memAddr2" class="Typo address_domestic _searchArea" value="${member.memAddr2 }" style="width: 305px;">
                                                        </div>
                                                        <div>
                                                            <input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <input type="submit" value="저장" class="btn btn-primary" />
                                                    <a href="<c:url value='/user/info'/>" class="btn btn-danger">취소</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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
            const jyFile = document.querySelector("#jyFile");
            const jyImg = document.querySelector("#jyImg");
            console.log(jyFile);
            jyFile.addEventListener("change", () => {
                console.log("log", jyFile.files[0]);

                let fileReader = new FileReader();
                fileReader.readAsDataURL(jyFile.files[0]);
                fileReader.onload = function() {
                    jyImg.src = fileReader.result;
                    
                    $("#myhome_profile_photo").children("img").last().remove();
                }
            })

            function fChgImg() {
                jyFile.click();
            }

            (function($) {
                $("#btnSubmit").on("click", function() {
                    //비밀번호 체킹
                    let memPass = $("#memPass").val();
                    let memPassConfirm = $("#memPassConfirm").val();

                    if (memPass == memPassConfirm) {
                        console.log("일치!");
                        $("#frm").submit();
                    } else {
                        alert("비밀번호를 확인해주세요");
                        return;
                    }
                });

                var processFlag = '';

            })(jQuery);
        </script>
        <script>
            //우편번호 api
            function sample6_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수

                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }

                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                        if (data.userSelectedType === 'R') {
                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if (data.bname !== '' &&
                                /[동|로|가]$/g.test(data.bname)) {
                                extraAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if (data.buildingName !== '' &&
                                data.apartment === 'Y') {
                                extraAddr += (extraAddr !== '' ? ', ' +
                                    data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if (extraAddr !== '') {
                                extraAddr = ' (' + extraAddr + ')';
                            }
                            // 조합된 참고항목을 해당 필드에 넣는다.
                            document.getElementById("sample6_extraAddress").value = extraAddr;

                        } else {
                            document.getElementById("sample6_extraAddress").value = '';
                        }

                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('sample6_postcode').value = data.zonecode;
                        document.getElementById("sample6_address").value = addr;

                        // 상세주소 초기화
                        document.getElementById("sample6_detailAddress").value = '';

                        // 커서를 상세주소 필드로 이동한다.
                        document.getElementById("sample6_detailAddress")
                            .focus();

                    }
                }).open();
            }
        </script>