<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script src="<%=request.getContextPath()%>/resources/js/app/company/test/testDetail.js"></script>"></script>

<div class="test_content">
	<form:form modelAttribute="testVO" action="${pageContext.request.contextPath}/company/test/new">
	<input type="hidden" name="testType" value="T02"/>
	<div class="title_wrap">
		<div class="test_type">
			기술시험
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

<script>

$(function(){
	
	
	$("#btnModify").click(function(){
		
		var frm = $("#frm");
		
		alert(frm.serialize());
		
		frm.submit();
		
	});
	
	$('#testAutoInsert').on("click",function(){
		// 1번 문제
		$("[name='qstnList[0].qstnCont']").val("건축 구조물에서 사용되는 강철의 주된 부식 방지 방법은 무엇인가요?");
		$("[name='qstnList[0].qstnAnswer']").val("도장 및 도금 (Painting and Coating)");
		
		// 2번 문제
		$("[name='qstnList[1].qstnCont']").val("건설 프로젝트에서 품질 관리를 위해 어떤 종류의 계획이 필요한가요?");
		$("[name='qstnList[1].qstnAnswer']").val("품질 관리 계획 (Quality Management Plan)");
		
		// 3번 문제
		$("[name='qstnList[2].qstnCont']").val("건물의 외벽 재료로 사용되는 몇 가지 대표적인 재료를 나열해보세요.");
		$("[name='qstnList[2].qstnAnswer']").val("벽돌, 콘크리트, 목재, 알루미늄, 강철");
		
		// 4번 문제
		$("[name='qstnList[3].qstnCont']").val("건설 현장에서 안전을 위해 근로자들이 준수해야 할 주요 안전 규정은 무엇인가요?");
		$("[name='qstnList[3].qstnAnswer']").val("보호장구 착용, 안전모 착용, 안전 교육 참여, 안전 표지 및 표시 준수");
		
		// 5번 문제
		$("[name='qstnList[4].qstnCont']").val("주택 건설 시에 고려해야 할 지속 가능성 (sustainability) 측면에서의 주요 고려 사항은 무엇인가요?");
		$("[name='qstnList[4].qstnAnswer']").val("재생 가능 에너지 사용, 자원 효율성, 친환경 재료 사용, 폐기물 관리 및 재활용");
		
		// 6번 문제
		$("[name='qstnList[5].qstnCont']").val("건설 프로젝트에서 발생하는 '착공식'은 무엇을 의미하나요?");
		$("[name='qstnList[5].qstnAnswer']").val("건축물의 건설 작업이 시작되는 공식적인 행사 또는 축하식");
		
		// 7번 문제
		$("[name='qstnList[6].qstnCont']").val("건물의 구조적 안전성을 확인하기 위해 건축 구조물에 대한 어떤 종류의 분석이 사용될 수 있나요?");
		$("[name='qstnList[6].qstnAnswer']").val("구조해석 또는 구조적 분석");
		
		// 8번 문제
		$("[name='qstnList[7].qstnCont']").val("건물의 난방, 냉방, 및 통합 자동화 시스템을 통제하는 시스템은 무엇인가요?");
		$("[name='qstnList[7].qstnAnswer']").val("HVAC (Heating, Ventilation, and Air Conditioning) 시스템");
		
		// 9번 문제
		$("[name='qstnList[8].qstnCont']").val("건설 관련 프로젝트에서 사용되는 'BIM'은 무엇의 약자이며, 어떻게 활용되나요?");
		$("[name='qstnList[8].qstnAnswer']").val("BIM은 건설 정보 모델링(Building Information Modeling)의 약자로, 건축물의 설계, 시공, 및 관리 정보를 통합적으로 모델링하는 기술입니다.");
		
		// 10번 문제
		$("[name='qstnList[9].qstnCont']").val("건물의 지붕재로 사용되는 여러 소재 중 하나는 무엇인가요?");
		$("[name='qstnList[9].qstnAnswer']").val("철근콘크리트, 아스팔트, 금속, 슬레이트, 기와 등");
	})
	
});


</script>
