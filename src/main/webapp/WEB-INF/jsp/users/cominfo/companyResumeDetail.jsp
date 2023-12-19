<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="resumeDetailWrap">
    <div class="test">
        <div id="sri_section">
            <div id="sri_wrap">
                <div id="content">                   
                    <div id="resume_print_area" class="resume_print_area">
                        <div class="print_wrap">
                            <div class="resume-subject">${resume.resumeTitle }</div>
                            <h2 class="blind">이력서 VIEW</h2>
                            <section class="resume_basic">                               
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
                                                    <span class="date">${car.crStdate } ~ ${car.crEndate }
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
                                                    <span class="date">${edu.eduStdate } ~
                                                        ${edu.eduEndate } (${edu.eduGraduate })</span>
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
                                                    <span class="date">${ina.iaStdate } ~ ${ina.iaEndate }</span>
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
                                                    <span class="date">${ost.osStdate } ~ ${ost.osEndate }</span>
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
                                                    <span class="date">${cer.cerDateAcqst } </span>
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
                                                    	${lag.lagDateAcqst } 
                                                    </span>
                                                    <p class="desc">${lag.lagName }</p>
                                                </div>
                                            </c:forEach>
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
                (age + '세');
        } else {
            document.querySelector('.user_desc').textContent = '성별 정보 없음';
        }
    } else {
        document.querySelector('.user_desc').textContent = '생년월일 정보가 유효하지 않음';
    }
</script>