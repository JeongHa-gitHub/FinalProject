<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<style>
.modal-dialog .test_content {
	width: 100% !important;
}

.modal-dialog .testForm {
	width: 100% !important;
}
</style>
<!-- 시험 Modal 시작 -->
<div class="modal fade" id="mModal" role="dialog"
	aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<!-- Modal body -->
			<c:if test="${nextRproc.rprocTypeno eq 'RE02'}">
				<div class="modal-body modalBody" id="rcrtAptDetail"
					onload="aptTest_onClick(${dataList[rprocOrder].testNo})"></div>
			</c:if>
			<c:if test="${nextRproc.rprocTypeno eq 'RE03'}">
				<div class="modal-body modalBody" id="rcrtTechDetail"
					onload="techTest_onClick(${dataList[rprocOrder].testNo})"></div>
			</c:if>
		</div>
	</div>
</div>

<!--상세 Modal 끝 -->

<div id="content" class="basic_wide vix_main recruit-content"
	data-rcrt-no=${rcrtNo } data-rproc-order=${rprocOrder }
	data-rproc-typeno="${currProcedureInfo.rprocTypeno }">
	<h2 class="tit_review">내가 지원한 공고</h2>
	<div class="wrap_content">
		<%-- 채용 절차 탭 --%>
		<div class="area_payment">
			<div class="area_tab">
				<c:forEach items="${dataList }" var="data" varStatus="status">
					<c:if test="${status.index%4==0 }">
						<ul class="tabList recruitTab" role="tablist">
					</c:if>
					<c:set value="false" var="flag" />
					<c:forEach items="${userOrders }" var="order">
						<c:if test="${data.rprocOrder eq order}">
							<c:set value="true" var="flag" />
						</c:if>
					</c:forEach>
					<li
						class="inner select <c:if test=" ${data.rprocOrder eq rprocOrder}"></c:if>"
						<c:if test="${flag eq false }">style="pointer-events:none; opacity:0.6;"
											</c:if>
						role="tab"><a
						onclick="javascript:location.href='${pageContext.request.contextPath }/users/apply/${data.rcrtNo}/${data.rprocOrder }'"
						class="inTab"> <span>${data.comCodeNm }</span>
					</a></li>
					<c:if test="${status.index%4==3 }">
						</ul>
					</c:if>
				</c:forEach>
			</div>

			<div class="tab_part resume_part">
				<div class="box_lookup"></div>
			</div>

			<%-- 리스트 출력 영역 --%>
			<div id="list_position">
				<!-- 검색 UI -->

				<div class="tblWrap resumeTbl">

					<c:if test="${currProcedureInfo.rprocTypeno eq 'RE01'}">
						<table class="sms-breakdown recruitViewTbl">
							<tr>
								<td>회사명</td>
								<td>${apply.company.companyNm}</td>
							</tr>
							<tr>
								<td>공고명</td>
								<td>${apply.recruit.rcrtTitle}</td>
							</tr>
							<tr>
								<td>기간</td>
								<td>${apply.procedure_r.rprocSdate} ~
									${apply.procedure_r.rprocEdate }</td>
							</tr>
							<tr>
								<td>제출일</td>
								<td>${apply.procedure_a.aprocDate }</td>
							</tr>
							<tr>
								<td>이력서</td>
								<td>${apply.resumeTitle }</td>
							</tr>
							<tr>
								<td>진행상황</td>
								<td><c:if test="${apply.procedure_r.rprocEnd eq 'Y' }">
										<!-- 마감 -->
										<c:if test="${apply.procedure_a.aprocPass eq 'Y' }">합격</c:if>
										<c:if test="${apply.procedure_a.aprocPass ne 'Y' }">불합격</c:if>
									</c:if> <c:if test="${apply.procedure_r.rprocEnd ne 'Y' }">
										<!-- 마감이 아니야 -->
										진행중
									</c:if></td>
							</tr>
						</table>
						<c:set value="true" var="buttonFlag" />
						<c:if
							test="${empty applyList[1].procedure_r.rprocOrder and apply.procedure_r.rprocEnd eq 'Y' && apply.procedure_a.aprocPass eq 'Y' }">							
							<c:set value="false" var="buttonFlag" />
						</c:if>
<%-- 						<c:if test="${rprocOrder < fn:length(applyList) }"> --%>
<%-- 							<c:out value="2"></c:out> --%>
<%-- 							<c:set value="false" var="buttonFlag" /> --%>
<%-- 						</c:if> --%>
						<c:if test="${fn:length(dataList) eq rprocOrder }">

							<c:set value="false" var="buttonFlag" />
						</c:if>
						<div class="rcrtApply">
							<div class="wrap_recruit_frm">
								<div class="wrap_step_recruit">
									<!-- 등록 완료 버튼 -->
									<div class="wrap_bottom_btn rcrtApply">
										<%-- <form action="${pageContext.request.contextPath }/users/apply/nextApply"
											method="post"> --%>
										<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
										<input type="hidden" name="rprocTypeno"
											value="${currProcedureInfo.rprocTypeno }" /> <input
											type="hidden" name="rcrtNo" value="${rcrtNo }" />

										<button class="btnSizeM" id="applyBtn" data-bs-toggle="modal"
											data-bs-target="#mModal"
											<c:if test="${buttonFlag eq true }">disabled</c:if>>지원하기</button>
									</div>
								</div>
							</div>
						</div>
					</c:if>


					<c:if test="${currProcedureInfo.rprocTypeno eq 'RE02'}">
						<table class="sms-breakdown recruitViewTbl">
							<tr>
								<td>회사명</td>
								<td>${apply.company.companyNm}</td>
							</tr>
							<tr>
								<td>공고명</td>
								<td>${apply.recruit.rcrtTitle}</td>
							</tr>
							<tr>
								<td>기간</td>
								<td>${apply.procedure_r.rprocSdate} ~
									${apply.procedure_r.rprocEdate }</td>
							</tr>
							<tr>
								<td>제출일</td>
								<td>${apply.procedure_a.aprocDate }</td>
							</tr>
							<tr>
								<td>진행상황</td>
								<td><c:if test="${apply.procedure_r.rprocEnd eq 'Y' }">
										<!-- 마감 -->
										<c:if test="${apply.procedure_a.aprocPass eq 'Y' }">합격</c:if>
										<c:if test="${apply.procedure_a.aprocPass ne 'Y' }">불합격</c:if>
									</c:if> <c:if test="${apply.procedure_r.rprocEnd ne 'Y' }">
										<!-- 마감이 아니야 -->
										진행중
									</c:if></td>
							</tr>
						</table>
						<c:set value="true" var="buttonFlag" />
						<c:if
							test="${empty applyList[2].procedure_r.rprocOrder and apply.procedure_r.rprocEnd eq 'Y' && apply.procedure_a.aprocPass eq 'Y' }">
							<c:set value="false" var="buttonFlag" />
						</c:if>
<%-- 						<c:if test="${rprocOrder < fn:length(applyList) }"> --%>
<%-- 							<c:out value="2"></c:out> --%>
<%-- 							<c:set value="false" var="buttonFlag" /> --%>
<%-- 						</c:if> --%>
						<c:if test="${fn:length(dataList) eq rprocOrder }">
							<c:set value="false" var="buttonFlag" />
						</c:if>
						<div class="rcrtApply">
							<div class="wrap_recruit_frm">
								<div class="wrap_step_recruit">
									<!-- 등록 완료 버튼 -->
									<div class="wrap_bottom_btn rcrtApply">
										<%-- <form action="${pageContext.request.contextPath }/users/apply/nextApply"
											method="post"> --%>
										<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
										<input type="hidden" name="rprocTypeno"
											value="${currProcedureInfo.rprocTypeno }" /> <input
											type="hidden" name="rcrtNo" value="${rcrtNo }" />

										<button class="btnSizeM" id="applyBtn" data-bs-toggle="modal"
											data-bs-target="#mModal"
											<c:if test="${buttonFlag eq true }">disabled</c:if>>지원하기</button>
									</div>
								</div>
							</div>
						</div>

						<!-- 적성검사에서 사용할 모달 -->

						<!-- 모달 만들기 -->
					</c:if>


					<c:if test="${currProcedureInfo.rprocTypeno eq 'RE03'}">
						<table class="sms-breakdown recruitViewTbl">
							<tr>
								<td>회사명</td>
								<td>${apply.company.companyNm}</td>
							</tr>
							<tr>
								<td>공고명</td>
								<td>${apply.recruit.rcrtTitle}</td>
							</tr>
							<tr>
								<td>기간</td>
								<td>${apply.procedure_r.rprocSdate} ~
									${apply.procedure_r.rprocEdate }</td>
							</tr>
							<tr>
								<td>제출일</td>
								<td>${apply.procedure_a.aprocDate }</td>
							</tr>
							<tr>
								<td>진행상황</td>
								<td><c:if test="${apply.procedure_r.rprocEnd eq 'Y' }">
										<!-- 마감 -->
										<c:if test="${apply.procedure_a.aprocPass eq 'Y' }">합격</c:if>
										<c:if test="${apply.procedure_a.aprocPass ne 'Y' }">불합격</c:if>
									</c:if> <c:if test="${apply.procedure_r.rprocEnd ne 'Y' }">
										<!-- 마감이 아니야 -->
									진행중
								</c:if></td>
							</tr>
						</table>
						<c:set value="true" var="buttonFlag" />
						<c:if
							test="${empty applyList[3].procedure_r.rprocOrder and apply.procedure_r.rprocEnd eq 'Y' && apply.procedure_a.aprocPass eq 'Y' }">
							
							<c:set value="false" var="buttonFlag" />
						</c:if>
<%-- 						<c:if test="${rprocOrder < fn:length(applyList) }"> --%>
<%-- 							<c:out value="2"></c:out> --%>
<%-- 							<c:set value="false" var="buttonFlag" /> --%>
<%-- 						</c:if> --%>
						<c:if test="${fn:length(dataList) eq rprocOrder }">
							<c:set value="false" var="buttonFlag" />
						</c:if>
						<div class="rcrtApply">
							<div class="wrap_recruit_frm">
								<div class="wrap_step_recruit">
									<!-- 등록 완료 버튼 -->
									<div class="wrap_bottom_btn rcrtApply">
										<%-- <form action="${pageContext.request.contextPath }/users/apply/nextApply"
											method="post"> --%>
										<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
										<input type="hidden" name="rprocTypeno"
											value="${currProcedureInfo.rprocTypeno }" /> <input
											type="hidden" name="rcrtNo" value="${rcrtNo }" />
											
											<!-- 지원하기 버튼을 2개로 만들어서 처리...? -->
											
<%-- 										<button class="btnSizeM" id="aprocBtn" <c:if test="${buttonFlag eq true }">disabled</c:if>> --%>
<!-- 										지원하기 -->
<!-- 										</button>	 -->

										<button class="btnSizeM" id="applyBtn" data-bs-toggle="modal"
											data-bs-target="#mModal"
											<c:if test="${buttonFlag eq true }">disabled</c:if>>지원하기</button>
									</div>
								</div>
							</div>
						</div>

					</c:if>


					<c:if test="${currProcedureInfo.rprocTypeno eq 'RE04'}">
						<table class="sms-breakdown recruitViewTbl">
							<tr>
								<td>회사명</td>
								<td>${apply.company.companyNm}</td>
							</tr>
							<tr>
								<td>공고명</td>
								<td>${apply.recruit.rcrtTitle}</td>
							</tr>
							<tr>
								<td>면접유형</td>
								<td>${apply.code.comCodeNm }</td>
							</tr>
							<tr>
								<td>면접일자</td>
								<td>${apply.interviewVO.intrIntdate }</td>
							</tr>
							<tr>
								<td>면접장소</td>
								<td>${apply.interviewVO.intrPlace }</td>
							</tr>
							<tr>
								<td>제출일</td>
								<td>${apply.procedure_a.aprocDate }</td>
							</tr>
							<tr>
								<td>진행상황</td>
								<td><c:if test="${apply.procedure_r.rprocEnd eq 'Y' }">
										<!-- 마감 -->
										<c:if test="${apply.procedure_a.aprocPass eq 'Y' }">합격</c:if>
										<c:if test="${apply.procedure_a.aprocPass ne 'Y' }">불합격</c:if>
									</c:if> <c:if test="${apply.procedure_r.rprocEnd ne 'Y' }">
										<!-- 마감이 아니야 -->
									진행중
								</c:if></td>
							</tr>
						</table>
						<c:set value="true" var="buttonFlag" />
						<c:if
							test="${empty applyList[4].procedure_r.rprocOrder and apply.procedure_r.rprocEnd eq 'Y' && apply.procedure_a.aprocPass eq 'Y' }">
							
							<c:set value="false" var="buttonFlag" />
						</c:if>
<%-- 						<c:if test="${rprocOrder < fn:length(applyList) }"> --%>
<%-- 							<c:out value="2"></c:out> --%>
<%-- 							<c:set value="false" var="buttonFlag" /> --%>
<%-- 						</c:if> --%>
						<c:if test="${fn:length(dataList) eq rprocOrder }">
							<c:set value="false" var="buttonFlag" />
						</c:if>
						<div class="rcrtApply">
							<div class="wrap_recruit_frm">
								<div class="wrap_step_recruit">
									<!-- 등록 완료 버튼 -->
									<div class="wrap_bottom_btn rcrtApply">
										<%-- <form action="${pageContext.request.contextPath }/users/apply/nextApply"
											method="post"> --%>
										<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
										<input type="hidden" name="rprocTypeno"
											value="${currProcedureInfo.rprocTypeno }" /> <input
											type="hidden" name="rcrtNo" value="${rcrtNo }" />

										<button class="btnSizeM" id="applyBtn" data-bs-toggle="modal"
											data-bs-target="#mModal"
											<c:if test="${buttonFlag eq true }">disabled</c:if>>지원하기</button>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
<form action="${pageContext.request.contextPath }/users/apply/insertAproc" method="post" id="aprocForm">
	<input type="hidden" name="rcrtNo" value="${rcrtNo}" />
	<input type="hidden" name="aplNo" value="${apply.aplNo}" />
	<input type="hidden" name="rprocOrder" value="${nextRproc.rprocOrder}" />
	<input type="hidden" name="rprocTypeno" value="${nextRproc.rprocTypeno }" />
</form>
<%-- ${comCodeNm eq 'RE02' } --%>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
						$(function () {
							let cpath = this.body.dataset.contextPath;
							let testNo = "${nextRproc.testNo }";
							let rcrtNo = "${dataList[rprocOrder].rcrtNo}";
							let rprocOrder = "${dataList[rprocOrder].rprocOrder}";
							let aplNo = "${apply.aplNo}";
							let rprocTypeno = "${nextRproc.rprocTypeno }";
							console.log("aplNo : ", aplNo);
					

							$('#applyBtn').on("click", function () {
								const userConfirmed = confirm("지원하시겠습니까?");
								if (userConfirmed) {
									
									if ("${nextRproc.rprocTypeno }" == "RE02") {
										console.log("${nextRproc.rprocTypeno }");										
										$.ajax({
											url: `\${cpath}/users/apply/test/\${testNo}`,
											success: function (resp) {
												let qstnList = resp[0].qstnList;
												//let itemList = resp.itemList;
		
												console.log("체킁:", resp);
												
												var aptTestHTML = `
												<form id="insertApply" action="${pageContext.request.contextPath }/users/apply/insertApply/\${rcrtNo}/\${rprocOrder}" method="POST">
													<input type="hidden" name="testNo" value="\${testNo}" />
		 											<input type="hidden" name="rcrtNo" value="\${rcrtNo}" />
		 											<input type="hidden" name="aplNo" value="\${aplNo}" />
		 											<input type="hidden" name="rprocOrder" value="\${rprocOrder}" />
		 											<input type="hidden" name="rprocTypeno" value="\${rprocTypeno }" />
								                    <div class="test_content">
								                        <div class="title_wrap">
								                            <div class="test_type">
								                                적성검사        
								                            </div>
								                            
								                            <div class="test_title">
								                                <div class="title_text" style="display:inline-block">제목 : \${resp[0].testTitle} </div>
								                            </div>
								                        </div>
		
								                        <div class="testForm">
								                            <div id="tablewrap">
								                                <table class="table table-bordered question center">
								                                    <tr class="align_center">
								                                        <td class="test_item">문항</td>
								                                        <td>내용</td>
								                                        <td class="is_answer">정답</td>
								                                    </tr>`;
		
																		for (let i = 0; i < qstnList.length; i++) {
																			aptTestHTML += `
								                              	    <input type="hidden" name="testResultVO[\${i}].aplNo" value="\${aplNo}" />
										                            <input type="hidden" name="testResultVO[\${i}].rcrtNo" value="\${rcrtNo}" />
										                            <input type="hidden" name="testResultVO[\${i}].rprocOrder" value="\${rprocOrder}" />
										                            <input type="hidden" name="testResultVO[\${i}].testNo" value="\${testNo}" />		
								                        <tr>
								                            <td>문제 \${qstnList[i].qstnNo} </td>
								                            <input type="hidden" name="testResultVO[\${i}].qstnNo" value="\${qstnList[i].qstnNo}" />
								                            <td colspan="2">
								                                <div class="divTypo ques_area"> \${qstnList[i].qstnCont}</div>
								                                
								                            </td>
								                        </tr>`;
																			console.log("로그:", qstnList[i]);
																			for (let j = 0; j < qstnList[i].itemList.length; j++) {
		
		
																				aptTestHTML += `
								                            <tr>
								                                <td class="divTypo item_area item_no">\${qstnList[i].itemList[j].itemNo}</td>
								                                <td class="divTypo item_area">\${qstnList[i].itemList[j].itemCont}</td>
								                                <td>                                        
								                                    <input class="input_radio" name="testResultVO[\${i}].rsltSelect" type="radio" value="\${qstnList[i].itemList[j].itemNo}"/>
								                                    <input type="hidden" value="\${qstnList[i].itemList[j].itemNo}" />
								                                </td>                                
								                            </tr>`;
																			}
																		}
		
		
																		aptTestHTML += `
																			 </table>
																			
																			<input type="reset" id="testCanBtn"
																			class="btnSizeS colorBlue saveBtn" value="취소" />
																		<input type="submit" id="testSubBtn"
																			class="btnSizeS colorBlue saveBtn" value="제출" />
												                            </div>
												                        </div>
												                    </div>
												                    </form>
								                `;
		
																		$('#rcrtAptDetail').html(aptTestHTML);
																		$("#mModal").modal("show");
											
											},
											error: function (xhr) {
												console.log(xhr.status);
											}
										});
									} else if ("${nextRproc.rprocTypeno }" == "RE03") {
										console.log("${nextRproc.rprocTypeno }");
										console.log(rcrtNo);
										console.log("${nextRproc.rprocOrder }");
										
										$.ajax({
											url: `\${cpath}/users/apply/test/\${testNo}`,
											success: function (resp) {
												let qstnList = resp[0].qstnList;									
												//let itemList = resp.itemList;									
												console.log("체킁:", resp);
												
												var TechTestHTML = `
												<form id="insertApply" action="${pageContext.request.contextPath }/users/apply/insertApply/\${rcrtNo}/\${rprocOrder}" method="POST">
		 											<input type="hidden" name="testNo" value="\${testNo}" />
		 											<input type="hidden" name="rcrtNo" value="\${rcrtNo}" />
		 											<input type="hidden" name="aplNo" value="\${aplNo}" />
		 											<input type="hidden" name="rprocOrder" value="\${rprocOrder}" />
		 											<input type="hidden" name="rprocTypeno" value="\${rprocTypeno }" />
													
								                    <div class="test_content">
								                        <div class="title_wrap">
								                            <div class="test_type">
								                                기술시험        
								                            </div>
								                            
								                            <div class="test_title">
								                                <div class="title_text" style="display:inline-block">제목 : \${resp[0].testTitle} </div>
								                            </div>
								                        </div>
		
								                        <div class="testForm">
								                            <div id="tablewrap">
								                                <table class="table table-bordered question center">
								                                    <tr class="align_center">
								                                        <td class="test_item">문항</td>
								                                        <td>내용</td>
								                                    </tr>`;
		
																		for (var i = 0; i < qstnList.length; i++) {
																			TechTestHTML += `
								                        <tr>
								                            <td>문제 \${qstnList[i].qstnNo} 
								                            	<input type="hidden" name="testResultVO[\${i}].qstnNo" value="\${qstnList[i].qstnNo}" />						                            	
								                            </td>
								                            <td colspan="2">
								                                <div class="divTypo ques_area"> \${qstnList[i].qstnCont}</div>
								                            </td>                            
								                        </tr>
								                        <tr>
								                        	<td>정답</td> 
								                        	<td colspan="2">
								                            <textArea class="divTypo ques_area" name="testResultVO[\${i}].rsltSelect" cols="100" rows="3" placeholder="해당 문제의 답을 입력해주세요." style="resize: none" ></textArea>
								                            <input type="hidden" name="testResultVO[\${i}].aplNo" value="\${aplNo}" />
								                            <input type="hidden" name="testResultVO[\${i}].rcrtNo" value="\${rcrtNo}" />
								                            <input type="hidden" name="testResultVO[\${i}].rprocOrder" value="\${rprocOrder}" />
								                            <input type="hidden" name="testResultVO[\${i}].testNo" value="\${testNo}" />						                           
								                            </td>
								                        </td>  
								                        </tr>
								                        `;
															console.log("로그:", qstnList[i]);
																		
														}
		
														TechTestHTML += `
								                                </table>
														
															<input type="reset" id="testCanBtn"
															class="btnSizeS colorBlue saveBtn" value="취소" />
														<input type="submit" id="testSubBtn"
															class="btnSizeS colorBlue saveBtn" value="제출" />
								                            </div>
								                        </div>
								                    </div>
								                    </form>
								                `;
		
												$('#rcrtTechDetail').html(TechTestHTML);
												$("#mModal").modal("show");
											
											},
											error: function (xhr) {
												console.log(xhr.status);
											}
										});
									} else {
										$("#aprocForm").submit();
									}
								}
							});
						});
					</script>