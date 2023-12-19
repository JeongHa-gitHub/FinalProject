<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="test_content">
	<div class="title_wrap">
		<div class="test_type">
			적성검사		
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
							<td class="is_answer">정답</td>
						</tr>
						<c:forEach items="${qstn.itemList}" var="item">
							<tr>
								<td class="divTypo item_area item_no">${item.itemNo }</td>
								<td class="divTypo item_area">${item.itemCont }</td>

										<td>										
											<input class="input_radio" type="radio" />
										</td>								
							</tr>
						</c:forEach>
					</table>
				</c:forEach>
			</table>
				<button type="button" id="testCanBtn" class="btnSizeS colorBlue saveBtn">취소</button>
				<button type="button" id="testSubBtn" class="btnSizeS colorBlue saveBtn">제출</button>
		</div>
	</div>
</div>

