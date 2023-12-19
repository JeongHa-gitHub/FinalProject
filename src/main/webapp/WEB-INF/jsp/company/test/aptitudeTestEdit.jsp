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
			적성검사
			<button type="button" id="testListBtn" class="btnSizeS colorBlue saveBtn">목록</button>
		</div>
		
		<div class="test_title">
			<div class="title_text" style="display:inline-block">제목 :</div>
			<form:input path="testTitle" class="inpTypo title_input"/>
			<form:errors path="testTitle" element="span"  class="errors"/>
		</div>
	</div>
	
	<div class="testForm">
		<div id="tablewrap">
			<table class="table table-bordered question center">
				<c:forEach  var="i" begin="0" end="9">
					<table class="table table-bordered question center">
						<tr>
							<td>
								문제 ${i+1}
								<input type="hidden" name="qstnList[${i }].qstnNo" value="${i+1 }"/>
							</td>
							
							<td colspan="2">
								<form:textarea path="qstnList[${i }].qstnCont" class="inpTypo ques_area"/>
								<form:errors path="qstnList[${i }].qstnCont" element="span" class="errors"/>
							</td>
						</tr>
						<tr class="align_center">
							<td class="test_item">문항</td>
							<td>내용</td>
							<td class="is_answer">정답여부</td>
						</tr>
						<c:forEach var="j" begin="0" end="4" >
							<tr>
								<td>
									${j+1}
									<input type="hidden" name="qstnList[${i }].itemList[${j }].qstnNo" value="${i+1 }"/>
									<input type="hidden" name="qstnList[${i }].itemList[${j }].itemNo" value="${j+1 }"/>
								</td>
								
								<td>
									<form:textarea path="qstnList[${i }].itemList[${j }].itemCont" class="inpTypo item_area" />
									<form:errors path="qstnList[${i }].itemList[${j }].itemCont" element="span"  class="errors"/>
								</td>
								<c:choose>
									<c:when test="${j+1 eq targetTest.qstnList[i].qstnAnswer }">
										<td>
											<input class="input_radio" name="qstnList[${i }].qstnAnswer" type="radio"  value="${j+1 }" checked/>
											<form:errors path="qstnList[${i }].qstnAnswer" element="span"  class="errors"/>
										</td>
									</c:when>
									<c:otherwise>
										<td>
											<input class="input_radio" name="qstnList[${i }].qstnAnswer" value="${j+1 }" type="radio"/>
											<form:errors path="qstnList[${i }].qstnAnswer" element="span"  class="errors"/>
										</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
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
