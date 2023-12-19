<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script src="<%=request.getContextPath()%>/resources/js/app/company/test/testDetail.js"></script>

<div class="test_content">
	<form:form modelAttribute="testVO" action="${pageContext.request.contextPath}/company/test/new">
	<input type="hidden" name="testType" value="T01"/>
	<div class="title_wrap">
		<div class="test_type">
			적성검사
			<button type="button" id="testListBtn" class="btnSizeS colorBlue saveBtn">목록</button>
			<button type="button" id="testAutoInsert" class="btnSizeS colorBlue saveBtn">자동완성</button>
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
									<form:errors path="qstnList[${i }].itemList[${j }].itemCont" element="span" class="errors"/>
								</td>
								<c:choose>
									<c:when test="${j+1 eq targetTest.qstnList[i].qstnAnswer }">
										<td>
											<input class="input_radio" name="qstnList[${i }].qstnAnswer" type="radio"  value="${j+1 }" checked/>
											<form:errors path="qstnList[${i }].qstnAnswer" element="span" class="errors"/>
										</td>
									</c:when>
									<c:otherwise>
										<td>
											<input class="input_radio" name="qstnList[${i }].qstnAnswer" value="${j+1 }" type="radio"/>
											<form:errors path="qstnList[${i }].qstnAnswer" element="span" class="errors"/>
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

<script>

$(function(){
	
	
	$('#testAutoInsert').on("click",function(){
		// 1번 문제
		$("[name='qstnList[0].qstnCont']").val("새로운 도전에 임하게 되었습니다. 이때, 당신은 어떻게 준비하고 나갈 것인가요?");
		$("[name='qstnList[0].itemList[0].itemCont']").val("세부적인 계획을 세우고 차근차근 준비한다.");
		$("[name='qstnList[0].itemList[1].itemCont']").val("유연한 계획을 세우고 상황에 따라 대처한다.");
		$("[name='qstnList[0].itemList[2].itemCont']").val("타인과의 협업을 통해 강점을 더하려고 한다.");
		$("[name='qstnList[0].itemList[3].itemCont']").val("일을 시작하기 전에 감정과 목표를 명확히 정리한다.");
		$("[name='qstnList[0].itemList[4].itemCont']").val("새로운 아이디어와 창의적인 방법을 동원하여 준비한다.");
		$("input:radio[name='qstnList[0].qstnAnswer']:input[value='2']").attr("checked", true);
		
		// 2번 문제
		$("[name='qstnList[1].qstnCont']").val("급한 업무가 발생했을 때, 당신은 어떻게 대응하겠습니까?");
		$("[name='qstnList[1].itemList[0].itemCont']").val("계획을 조정하고 급한 업무에 집중한다.");
		$("[name='qstnList[1].itemList[1].itemCont']").val("예정된 일정을 최우선으로 처리하고 나중에 급한 업무를 보완한다.");
		$("[name='qstnList[1].itemList[2].itemCont']").val("급한 업무와 정해진 일정을 조절하여 모두 완료한다.");
		$("[name='qstnList[1].itemList[3].itemCont']").val("둘 다 중요하게 여기고 어려움을 겪는다.");
		$("[name='qstnList[1].itemList[4].itemCont']").val("다른 사람에게 도움을 요청하여 상황을 빠르게 해결한다.");
		$("input:radio[name='qstnList[1].qstnAnswer']:input[value='2']").attr("checked", true);
		
		// 3번 문제
		$("[name='qstnList[2].qstnCont']").val("팀에서 프로젝트를 진행할 때, 당신은 어떤 역할을 선호하시나요?");
		$("[name='qstnList[2].itemList[0].itemCont']").val("전략을 세우고 팀을 이끌어 나가는 리더 역할을 원한다.");
		$("[name='qstnList[2].itemList[1].itemCont']").val("팀 내 갈등을 중재하고 조화를 이루는 중재자 역할을 원한다.");
		$("[name='qstnList[2].itemList[2].itemCont']").val("독립적으로 일하면서 개별적인 임무를 수행하고 싶다.");
		$("[name='qstnList[2].itemList[3].itemCont']").val("명확한 계획에 따라 일정을 엄격히 지키며 일하고 싶다.");
		$("[name='qstnList[2].itemList[4].itemCont']").val("창의적인 아이디어를 기여하고 프로젝트에 참여하고 싶다.");
		$("input:radio[name='qstnList[2].qstnAnswer']:input[value='1']").attr("checked", true);
		
		// 4번 문제
		$("[name='qstnList[3].qstnCont']").val("팀원과의 의사소통에서 당신이 선호하는 방식은 무엇인가요?");
		$("[name='qstnList[3].itemList[0].itemCont']").val("명확한 프로토콜과 규칙에 따라 명확하게 의사소통하는 것을 선호한다.");
		$("[name='qstnList[3].itemList[1].itemCont']").val("자유롭고 오픈한 대화를 중시하며 소통하는 것을 선호한다.");
		$("[name='qstnList[3].itemList[2].itemCont']").val("필요한 정보를 간결하게 전달하며 간편한 의사소통을 선호한다.");
		$("[name='qstnList[3].itemList[3].itemCont']").val("이메일이나 문서를 통해 의견을 주고받는 것을 선호한다.");
		$("[name='qstnList[3].itemList[4].itemCont']").val("회의나 대화를 통해 의견을 나누고 팀원들과 협력하는 것을 선호한다.");
		$("input:radio[name='qstnList[3].qstnAnswer']:input[value='1']").attr("checked", true);
		
		// 5번 문제
		$("[name='qstnList[4].qstnCont']").val("자신이 겪은 실패에 대한 대처 방식에 대해 어떻게 생각하시나요?");
		$("[name='qstnList[4].itemList[0].itemCont']").val("실패를 분석하고 다음에는 더 나은 방법을 찾아야 한다.");
		$("[name='qstnList[4].itemList[1].itemCont']").val("실패를 통해 배움을 얻고 개선점을 찾아야 한다.'");
		$("[name='qstnList[4].itemList[2].itemCont']").val("실패에 대한 책임을 팀 전체와 나누어야 한다.");
		$("[name='qstnList[4].itemList[3].itemCont']").val("실패를 상사나 리더에게 보고하고 도움을 청해야 한다.");
		$("[name='qstnList[4].itemList[4].itemCont']").val("빠르게 대처하여 실패를 극복하려고 노력해야 한다.");
		$("input:radio[name='qstnList[4].qstnAnswer']:input[value='2']").attr("checked", true);
		
		// 6번 문제
		$("[name='qstnList[5].qstnCont']").val("팀 내에서의 갈등 상황에서, 당신은 어떻게 대처하겠어요?");
		$("[name='qstnList[5].itemList[0].itemCont']").val("직접 갈등 상황을 해결하고 중재한다.");
		$("[name='qstnList[5].itemList[1].itemCont']").val("갈등 당사자들과 이해하려고 하며 중재자 역할을 한다.");
		$("[name='qstnList[5].itemList[2].itemCont']").val("다른 팀원들과 상담하여 갈등의 근본 원인을 찾아낸다.");
		$("[name='qstnList[5].itemList[3].itemCont']").val("갈등 상황을 회피하려고 노력한다.");
		$("[name='qstnList[5].itemList[4].itemCont']").val("상사나 리더에게 갈등 상황을 보고하고 지도받는다.");
		$("input:radio[name='qstnList[5].qstnAnswer']:input[value='2']").attr("checked", true);
		
		// 7번 문제
		$("[name='qstnList[6].qstnCont']").val("새로운 기술 또는 도구를 익힐 때, 당신은 어떤 방식을 택하시겠어요?");
		$("[name='qstnList[6].itemList[0].itemCont']").val("자습서를 참고하며 스스로 익힌다.");
		$("[name='qstnList[6].itemList[1].itemCont']").val("동료들과 함께 협력하여 배우고 실습한다.");
		$("[name='qstnList[6].itemList[2].itemCont']").val("전문가나 강사에게 질문하고 지도받는다.");
		$("[name='qstnList[6].itemList[3].itemCont']").val("온라인 강의나 워크샵을 통해 학습한다.");
		$("[name='qstnList[6].itemList[4].itemCont']").val("자체적인 프로젝트나 실전 경험을 통해 익힌다.");
		$("input:radio[name='qstnList[6].qstnAnswer']:input[value='4']").attr("checked", true);
		
		// 8번 문제
		$("[name='qstnList[7].qstnCont']").val("본인에게 주어진 업무를 마친 후, 어떻게 피드백을 받고 개선하시겠어요?");
		$("[name='qstnList[7].itemList[0].itemCont']").val("팀원이나 리더에게 직접 피드백을 요청한다.");
		$("[name='qstnList[7].itemList[1].itemCont']").val("동료들과 함께 피드백을 공유하고 이를 토대로 개선한다.");
		$("[name='qstnList[7].itemList[2].itemCont']").val("리더나 상사에게 업무 평가를 요청하고 피드백을 수렴한다.");
		$("[name='qstnList[7].itemList[3].itemCont']").val("프로젝트 회의나 회고를 통해 팀 내에서 피드백을 얻는다.");
		$("[name='qstnList[7].itemList[4].itemCont']").val("자체적으로 성과를 분석하고 개선 방안을 찾아낸다.");
		$("input:radio[name='qstnList[7].qstnAnswer']:input[value='1']").attr("checked", true);
		
		// 9번 문제
		$("[name='qstnList[8].qstnCont']").val("누군가가 본인의 아이디어에 반대할 때, 당신은 어떻게 대응하겠어요?");
		$("[name='qstnList[8].itemList[0].itemCont']").val("논리적인 이유와 근거를 들어 설득한다.");
		$("[name='qstnList[8].itemList[1].itemCont']").val("상대방의 의견을 경청하고 공감하는 태도를 취한다.");
		$("[name='qstnList[8].itemList[2].itemCont']").val("다양한 의견을 수용하고 합의점을 찾으려 노력한다.");
		$("[name='qstnList[8].itemList[3].itemCont']").val("자신의 의견을 고수하며 반대 의견을 무시한다.");
		$("[name='qstnList[8].itemList[4].itemCont']").val("타협 없이 자신의 아이디어를 유지한다.");
		$("input:radio[name='qstnList[8].qstnAnswer']:input[value='2']").attr("checked", true);
		
		// 10번 문제
		$("[name='qstnList[9].qstnCont']").val("긴급한 상황에서 당신이 우선적으로 챙기는 것은 무엇인가요?");
		$("[name='qstnList[9].itemList[0].itemCont']").val("계획과 일정을 재조정하고 상황을 안정시킨다.");
		$("[name='qstnList[9].itemList[1].itemCont']").val("팀원들과 소통하여 팀 전체가 협력하여 상황을 해결한다.");
		$("[name='qstnList[9].itemList[2].itemCont']").val("긴급한 업무와 예정된 일정을 조절하여 어려움을 극복한다.");
		$("[name='qstnList[9].itemList[3].itemCont']").val("둘 다 중요하게 여겨 어려움을 겪는다.");
		$("[name='qstnList[9].itemList[4].itemCont']").val("다른 동료에게 도움을 요청하여 상황을 빠르게 해결한다.");
		$("input:radio[name='qstnList[9].qstnAnswer']:input[value='3']").attr("checked", true);
	})
	
});


</script>
