<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="<%=request.getContextPath()%>/resources/js/app/company/test/testDetail.js"></script>

<div class="test_content">
	<div class="title_wrap">
		<div class="test_type">
			적성검사
			<button type="button" id="testDelBtn" class="btnSizeS colorBlue saveBtn">삭제</button>
			<button type="button" id="testModBtn" data-test-type="${testType }" data-test-no="${testNo }" class="btnSizeS colorBlue saveBtn">수정</button>
			<button type="button" id="testListBtn" class="btnSizeS colorBlue saveBtn">목록</button>
		</div>
		
		<div class="test_title">
			<div class="title_text" style="display:inline-block">제목 : ${testVO.testTitle }</div>
		</div>
		
	</div>

	<div class="testForm">
		<div id="tablewrap">
			<table class="table table-bordered question center">
				<c:forEach items="${testVO.qstnList}" var="qstn">
					<table class="table table-bordered question center">
						<tr>
							<td>문제 ${qstn.qstnNo }</td>
							<td colspan="2">
								<div class="divTypo ques_area">${qstn.qstnCont }</div>
							</td>
						</tr>
						<tr class="align_center">
							<td class="test_item">문항</td>
							<td>내용</td>
							<td class="is_answer">정답여부</td>
						</tr>
						<c:forEach items="${qstn.itemList}" var="item">
							<tr>
								<td class="divTypo item_area item_no">${item.itemNo }</td>
								<td class="divTypo item_area">${item.itemCont }</td>
								<c:choose>
									<c:when test="${item.itemNo eq qstn.qstnAnswer }">
										<td>
										
											<input class="input_radio" type="radio" checked disabled/>
										</td>
									</c:when>
									<c:otherwise>
										<td>
											<input class="input_radio" type="radio" disabled/>
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
</div>
<form id="deleteForm" method="post" action="<%=request.getContextPath()%>/company/test/${testNo}">
	<input type="hidden" name="_method" value="delete" />
	<input type="hidden" name="testNo" value="${testNo }" />
	<input type="hidden" name="testType" value="T01" />
	<input type="hidden" name="memPass" />
</form>