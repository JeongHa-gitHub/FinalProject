<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="resumeDetailWrap">
    <div class="test">
        <div id="sri_section">
            <div id="sri_wrap">
                <div id="content">
                    <a href="<%=request.getContextPath() %>/user/resume/${resume.resumeNo}/edit" class="BtnType BtnTypeRd SizeML" id="updateBtn">이력서 수정하기</a>
                    <div id="resume_print_area" class="resume_print_area">
                        <div class="print_wrap">
                            <div class="resume-subject">${resume.resumeTitle }</div>
                            <h2 class="blind">이력서 VIEW</h2>
                            <section class="resume_basic">
                                <div class="resume_view">
                                    <div class="resume_top">
                                        <h1 class="user_name">${resume.users.usersNm }</h1>
                                        <c:if test="${empty carList}">
                                            <div class="user_state">신입</div>
                                        </c:if>
                                        <c:if test="${not empty carList}">
                                            <div class="user_state">경력</div>
                                        </c:if>
                                    </div>
                                    <p class="user_desc">${resume.users.usersGen},
                                        ${resume.users.usersBir }년 (나이 세)</p>
                                    <ul class="user_info">
                                        <li class="user_email">${resume.member.memMail }</li>
                                        <li class="user_phone"><span>${resume.member.memTel }</span></li>
                                        <li class="user_address">(${resume.member.memZip})
                                            ${resume.member.memAddr1 }</li>
                                    </ul>
                                    <div class="picture_box">
                                        <div class="picture">
                                            <img id="jyImg" alt="" src="<%=request.getContextPath()%>/recruit/usersInfo${resume.users.usersImg}" />
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <div class="resume_part">
                                <c:if test="${not empty carList}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">경력</h2>
                                            <!-- 										<span class="txt">총 1년 2개월</span> -->
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="car" items="${carList}">
                                                <div class="box_list">
                                                    <h3 class="tit">${car.crCompanynm}</h3>
                                                    <span class="date">
                                                        <fmt:parseDate var="carStartDate" value="${car.crStdate}" pattern="yyyyMMdd" />
                                                        <fmt:parseDate var="carEndDate" value="${car.crEndate}" pattern="yyyyMMdd" />
                                                        <fmt:formatDate value="${carStartDate}" pattern="yyyy.MM" /> ~
                                                        <fmt:formatDate value="${carEndDate}" pattern="yyyy.MM" />
                                                        <!-- 											<span  class="period">0개월</span>-->
                                                    </span>
                                                    <p class="desc"></p>
                                                    <p class="desc">${car.crContent }</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty eduList}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">학력</h2>
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="edu" items="${eduList}">
                                                <div class="box_list">
                                                    <h3 class="tit">
                                                        <span>${edu.eduSchoolnm }</span>
                                                    </h3>
                                                    <span class="date">
                                                        <fmt:parseDate var="startDate" value="${edu.eduStdate}" pattern="yyyyMMdd" />
                                                        <fmt:parseDate var="endDate" value="${edu.eduEndate}" pattern="yyyyMMdd" />
                                                        <fmt:formatDate value="${startDate}" pattern="yyyy.MM" /> ~
                                                        <fmt:formatDate value="${endDate}" pattern="yyyy.MM" /> (${edu.eduGraduate })
                                                    </span>
                                                    <p class="desc">${edu.eduMajornm }</p>
                                                    <c:if test="${edu.eduGrade ne 0.0 and edu.eduStandardGrade ne 0.0}">
                                                        <p class="desc">${edu.eduGrade}/
                                                            ${edu.eduStandardGrade}</p>
                                                    </c:if>
                                                    <br>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty inaList}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">경험/활동/교육</h2>
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="ina" items="${inaList}">
                                                <div class="box_list">
                                                    <h3 class="tit">
                                                        ${ina.iaName } <span class="txt"></span>
                                                    </h3>
                                                    <span class="date">
                                                        <fmt:parseDate var="iaStartDate" value="${ina.iaStdate}" pattern="yyyyMMdd" />
                                                        <fmt:parseDate var="iaEndDate" value="${ina.iaEndate}" pattern="yyyyMMdd" />
                                                        <fmt:formatDate value="${iaStartDate}" pattern="yyyy.MM" /> ~
                                                        <fmt:formatDate value="${iaEndDate}" pattern="yyyy.MM" />
                                                    </span>
                                                    <p class="desc">${ina.iaContent }</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty ostList}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">해외연수</h2>
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="ost" items="${ostList}">
                                                <div class="box_list">
                                                    <h3 class="tit">
                                                        ${ost.osCountrynm } <span class="txt"></span>
                                                    </h3>
                                                    <span class="date">
                                                        <fmt:parseDate var="osStartDate" value="${ost.osStdate}" pattern="yyyyMMdd" />
                                                        <fmt:parseDate var="osEndDate" value="${ost.osEndate}" pattern="yyyyMMdd" />
                                                        <fmt:formatDate value="${osStartDate}" pattern="yyyy.MM" /> ~
                                                        <fmt:formatDate value="${osEndDate}" pattern="yyyy.MM" />
                                                    </span>
                                                    <p class="desc">${ost.osContent }</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty cerList}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">자격증</h2>
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="cer" items="${cerList}">
                                                <div class="box_list">
                                                    <h3 class="tit">
                                                        ${cer.cerNm } <span class="txt"></span>
                                                    </h3>
                                                    <span class="date">
                                                        <fmt:parseDate var="csStartDate" value="${cer.cerDateAcqst}" pattern="yyyyMMdd" />
                                                        <fmt:formatDate value="${csStartDate}" pattern="yyyy.MM" />
                                                    </span>
                                                    <p class="desc"></p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty lagList}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">어학</h2>
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="lag" items="${lagList}">
                                                <div class="box_list">
                                                    <h3 class="tit">
                                                        ${lag.lagTestnm } <span class="txt">(${lag.lagLevel }/PASS)</span>
                                                    </h3>
                                                    <span class="date">
                                                        <fmt:parseDate var="laStartDate" value="${lag.lagDateAcqst } " pattern="yyyyMMdd" />
                                                        <fmt:formatDate value="${laStartDate}" pattern="yyyy.MM" />
                                                    </span>
                                                    <p class="desc">${lag.lagName }</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty resume.resumePortfolio}">
                                    <div class="part">
                                        <div class="box_tit">
                                            <h2 class="tit">포트폴리오</h2>
                                        </div>
                                        <div class="box_con">
                                            <div class="box_list">
                                                <a href="${resume.resumePortfolio}" target="_blank" alt="ㅇㅇㅇㅇㅇ" title="ㅇㅇㅇㅇㅇ" class="file_link"><span>링크</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${not empty covList}">
                                    <div class="part part_letter">
                                        <div class="box_tit">
                                            <h2 class="tit">자기소개서</h2>
                                        </div>
                                        <div class="box_con">
                                            <c:forEach var="cov" items="${covList}">
                                                <div class="box_list">
                                                    <h3 class="tit">${cov.psTitle }</h3>
                                                    <p class="desc" id="inner">${cov.psContent }</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                                <div class="part">
                                    <div class="box_tit">
                                        <h2 class="tit">이력서 공개여부</h2>
                                    </div>
                                    <div class="box_con">
                                        <div class="box_list">
                                            <h3 class="">
                                                <c:choose>
                                                    <c:when test="${resume.resumeOpenStatus eq 'Y'}">
                                                        공개
                                                    </c:when>
                                                    <c:otherwise>
                                                        비공개
                                                    </c:otherwise>
                                                </c:choose>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var userGen = '${resume.users.usersGen}';
    var birthYear = parseInt('${resume.users.usersBir}', 10);

    if (!isNaN(birthYear)) {
        var currentYear = new Date().getFullYear();
        var age = currentYear - birthYear;

        if (userGen === 'F') {
	         document.querySelector('.user_desc').textContent = '여, ${resume.users.usersBir}년 ' +
	             '(' + age + '세)';
	     } else if (userGen === 'M') {
	         document.querySelector('.user_desc').textContent = '남, ${resume.users.usersBir}년 ' +
	         '(' + age + '세)';
	     } else {
	         document.querySelector('.user_desc').textContent = '성별 정보 없음';
	     }
	 } else {
	     document.querySelector('.user_desc').textContent = '생년월일 정보가 유효하지 않음';
	 }
</script>