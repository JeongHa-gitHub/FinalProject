<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script src="<%=request.getContextPath()%>/resources/js/app/company/test/testDetail.js"></script>

<div class="test_content">
	<form:form modelAttribute="targetTest" method="post" action="${pageContext.request.contextPath}/company/test/${testType }/${testNo }/edit">
	<input type="hidden" name="_method" value="put" />
	<input type="hidden" name="testType" value="${testType }"/>
	<input type="hidden" name="testNo" value="${testNo }" />
	<div class="title_wrap">
		<div class="test_type">
			기술시험
			<button type="button" id="testListBtn" class="btnSizeS colorBlue saveBtn">목록</button>
		</div>
		
		<div class="test_title">
			<div class="title_text" style="display:inline-block">제목 :</div>
			<form:input path="testTitle" class="inpTypo title_input"/>
			<form:errors path="testTitle" element="span" class="errors"/>
		</div>
	</div>
	
	<div class="testForm">
		<div id="tablewrap">
			<table class="table table-bordered question center">
				<c:forEach var="i" begin="0" end="9">
					<table class="table table-bordered question center">
						<tr>
							<td>
								문제 ${i+1}
								<input type="hidden" name="qstnList[${i }].qstnNo" value="${i+1 }"/>
							</td>
							<td colspan="2">
								<form:textarea path="qstnList[${i }].qstnCont" class="inpTypo ques_area"/>
								<form:errors path="qstnList[${i }].qstnCont" element="span"  class="errors"/>
							</td>
						</tr>
						<tr class="align_center">
							<td class="test_item">모범답안</td>
							<td>
								<form:textarea class="inpTypo ques_area" path="qstnList[${i }].qstnAnswer"/>
								<form:errors path="qstnList[${i }].qstnAnswer" element="span" class="errors"/>
							</td>
						</tr>
					</table>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="box_lookup">
        <div class="box_right">
			<input class="btnSizeM colorBlue" type="submit" value="제출" />
		</div>
	</div>
	</form:form>
</div>