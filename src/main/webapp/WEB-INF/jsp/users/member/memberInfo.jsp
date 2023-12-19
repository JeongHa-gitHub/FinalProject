<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
            <div id="content" class="pl180">
                <div class="wrapper_narrow">
                    <h1 class="wrap_title">개인정보 관리</h1>
                    <div class="person_update">
                        <div class="person_update_sidearea">
                            <div class="photo_wrap">
                                <span class="photo" id="myhome_profile_photo">
                                	 <img id="jyImg" alt="" src="<%=request.getContextPath()%>/recruit/usersInfo${member.users.usersImg}" />
<%--                                     ${member.users.usersImg } --%>
                                </span>
                            </div>
                        </div>
                        <div class="person_update_main">
                            <div class="person_field_wrap">
                                <h2 class="person_field_legend">기본정보</h2>
                                <input type="hidden" name="memPass" id="memPassReal" value="${member.memPass}" />
                                    <table class="person_field_table">
                                        <tr class="person_field active">
                                            <th>아이디</th>
                                            <td>${member.memId }</td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">이름</th>
                                            <td>${member.users.usersNm }
                                            </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">생년월일</th>
                                            <td>
                                                <fmt:parseDate value="${member.users.usersBir}" pattern="yyyy.MM.dd" var="parsedDate" />
                                                <fmt:formatDate value="${parsedDate}" pattern="yyyy년 MM월 dd일" />
                                            </td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">성별</th>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${member.users.usersGen eq 'F'}">여성</c:when>
                                                    <c:when test="${member.users.usersGen eq 'M'}">남성</c:when>
                                                </c:choose>
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
                                            <td>${member.memTel }</td>
                                        </tr>
                                        <tr class="person_field person_field_mail">
                                            <th scope="row">이메일</th>
                                            <td>${member.memMail }</td>
                                        </tr>
                                        <tr class="person_field active">
                                            <th scope="row">주소</th>
                                            <td class="lineHeight1">
                                                (${member.memZip })
                                                ${member.memAddr1 }<br>
                                                ${member.memAddr2 }

                                            </td>
                                        </tr>
                                 <tr>
									<td colspan="2" class="textAlignCenter"><button type="button" id="btnEdit" 
										data-bs-toggle="modal" data-bs-target="#exampleModal"
										class="btn btn-primary">수정</button> <input type="hidden"
										name="_method" value="put"> 
										<button data-bs-toggle="modal" id="btnExit" 
										data-bs-target="#exampleModal" class="btn btn-danger">탈퇴</button>
									</td>
								</tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <form id="frmExit" action="/FinalProject/user/exitPost" hidden method="post">
					<input type="text" name="memId" value="${member.memId}" />
				</form>
            </div>
        </div>
        <!-- 데이터 끝 -->
    </div>
</div>
<script>
(function($) {
	//수정버튼 클릭
	$("#btnEdit").on("click",function(){
		$("#btnMemPassExitCheck").css("display","none");
		$("#btnMemPassCheck").css("display","block");
	});
	
	//탈퇴버튼 클릭
	$("#btnExit").on("click",function(){
		$("#btnMemPassExitCheck").css("display","block");
		$("#btnMemPassCheck").css("display","none");
	});
	
	//수정처리
	$(document).on("click","#btnMemPassCheck",function(){
		//모달창 비밀번호 확인
		let memPass = $("#memPass").val();//모달창 비번
		let memPassReal = $("#memPassReal").val();//DB의 member의 비번
		
		console.log("memPass : " + memPass + ", memPassReal : " + memPassReal);
		
		if(jQuery.trim(memPass)==""){	// trim으로 앞 뒤 공백제거
			alert("비밀번호를 입력해주세요");
			$("#memPass").focus();	// 커서 깜빡임
			
			return;//함수종료
		}
		
		if(memPass==memPassReal){
			location.href="/FinalProject/user/edit";
		}else{
			alert("비밀번호가 틀렸습니다. 다시 입력해주세요");
			return;
		}
	});
	
	//탈퇴처리
	$(document).on("click","#btnMemPassExitCheck",function(){
		//모달창 비밀번호 확인
		let memPass = $("#memPass").val();//모달창 비번
		let memPassReal = $("#memPassReal").val();//DB의 member의 비번
		
		console.log("memPass : " + memPass + ", memPassReal : " + memPassReal);
		
		if(jQuery.trim(memPass)==""){	// trim으로 앞 뒤 공백제거
			alert("비밀번호를 입력해주세요");
			$("#memPass").focus();	// 커서 깜빡임
			
			return;//함수종료
		}
		
		if(memPass==memPassReal){
			console.log("같다");
			
			$("#frmExit").submit();
		}else{
			alert("비밀번호가 틀렸습니다. 다시 입력해주세요");
			return;
		}
	});
	
	var processFlag = '';
	

})(jQuery);
</script>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">비밀번호 확인</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<label for="memPass">현재 비밀번호를 입력하세요.</label> 
				<input type="password" name="memPass" id="memPass" class="form-control" />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="button" id="btnMemPassCheck" class="btn btn-primary">확인</button>
				<button type="button" id="btnMemPassExitCheck" class="btn btn-primary" style="display:none;">탈퇴하기</button>
			</div>
		</div>
	</div>
</div>