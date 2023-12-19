<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 채점표 생성 모달 --%>
<div id="resumeScoreModal" class="modal fade modal-les">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header modalHeader-les">
				<div class="resumeScore">채점표 생성</div>
			</div>

			<!-- Modal body -->
			<div class="modal-body modalBody modalBody-les" id="resumeScore-modal-body">
				<!-- 양식 체크박스 출력되는 곳 -->
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary closeModal"
					data-bs-dismiss="modal">취소</button>
				<button type="button" class="btn btn-primary" id="resumeScoreFormBtn">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 채점표 생성 모달 끝 --%>

<%-- 이름 클릭 - 이력서 조회 모달 --%>
<div id="resumeImgModal" class="modal fade modal-les">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header modalHeader-les">
				<div class="resumeScore">이력서</div>
			</div>

			<!-- Modal body -->
			<div class="modal-body modalBody modalBody-les resumeImg" id="resumeImg-modal-body">
				<!-- 이력서 사진 출력되는 곳 -->
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary closeModal"
					data-bs-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>
<%--  이름 클릭 - 이력서 조회 모달 끝 --%>

<%-- 면접일정 생성 모달 --%>
<div id="intrSchdModal" class="modal fade modal-les">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header  modalHeader-les">
				<div class="resumeScore">면접일정 생성</div>
			</div>

			<!-- Modal body -->
			<div class="modal-body modalBody  modalBody-les" id="intrSchd-modal-body">
				<!-- 면접일정 등록 양식 출력되는 곳 -->
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary closeModal"
					data-bs-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-primary" id="intrSchdBtn">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 면접일정 생성 모달 끝 --%>

<%-- 면접일정 수정 모달 --%>
<div id="intrSchdUpdateModal" class="modal fade modal-les">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header  modalHeader-les">
				<div class="resumeScore">면접일정 수정</div>
			</div>

			<!-- Modal body -->
			<div class="modal-body modalBody  modalBody-les text-left" id="intrSchdUpdate-modal-body">
				<!-- 면접일정 등록 양식 출력되는 곳 -->
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary closeModal"
					data-bs-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-primary" id="intrSchdUpdateBtn">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 면접일정 생성 모달 끝 --%>

<%-- 메일발송 모달 --%>
<div id="sendMailModal" class="modal fade modal-les">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header  modalHeader-les">
				<div class="resumeScore">메일 발송</div>
			</div>
			
			<!-- Modal body -->
			<form id="sendMailForm">
				<div class="modal-body modalBody modalBody-les text-left" id="sendMail-modal-body">
					<!-- 입력양식 출력되는 곳 -->
				</div>
			</form>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary closeModal"
					data-bs-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-primary" id="sendMailBtn">확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 메일발송 모달 끝 --%>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="<%=request.getContextPath()%>/resources/js/app/company/recruit/recruitView.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/app/company/recruit/recruitResumeView.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/app/company/recruit/recruitTestView.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/app/company/recruit/recruitInterviewView.js"></script>

<div id="content" class="basic_wide vix_main recruit-content"
	data-rcrt-no=${rcrtNo } data-rproc-order=${rprocOrder }
	data-rproc-typeno="${currProcedureInfo.rprocTypeno }"
	data-rproc-end="${currProcedureInfo.rprocEnd }">
	<div class="wrap_content">
		<%-- 채용 절차 탭 --%>
		<div class="area_payment recruit_procedure_view">
			<div class="area_tab">
				<c:forEach items="${dataList }" var="data" varStatus="status">
					<c:if test="${status.index%4==0 }">
						<ul class="tabList recruitTab" role="tablist">
					</c:if>
					<c:choose>
						<c:when test="${data.rprocOrder eq rprocOrder}">
							<!-- 컨트롤러에서 PathVariable로 받은 변수명 그대로 el로 사용할 수 있음 -->
							<li class="inner select" role="tab"><a href="javascript:;"
								onclick="selectTab('${data.rcrtNo}','${data.rprocOrder }');"
								class="inTab"><span>${data.comCodeNm }</span></a></li>
						</c:when>
						<c:otherwise>
							<li class="inner" role="tab"><a href="javascript:;"
								onclick="selectTab('${data.rcrtNo}','${data.rprocOrder }');"
								class="inTab"><span>${data.comCodeNm }</span></a></li>
						</c:otherwise>
					</c:choose>
					<c:if test="${status.index%4==3 }">
						</ul>
					</c:if>
				</c:forEach>
			</div>

			<%-- --------------------------------------------------서류전형 폼-------------------------------------------------- --%>
			<c:choose>
				<c:when test="${currProcedureInfo.rprocTypeno eq 'RE01' }">
					<div class="tab_part resume_part" data-idx="1">
						<div class="box_lookup">
							<c:if test="${currProcedureInfo.rprocEnd eq 'N' && resumeScoreFormCount==0}">
								<div class="box_right">
									<button type="button" id="createResumeScoreFormBtn" class="btnSizeL colorWhtie"
										data-bs-toggle="modal" data-bs-target="#resumeScoreModal">채점표
										생성</button>
								</div>
							</c:if>
						</div>

						<%-- 리스트 출력 영역 --%>
						<div id="list_position">
							<!-- 검색 UI -->
							<div class="searchUI">
								<div class="area_list_top">
									<div class="box_center">
										<div class="search_right">
											<span class="inpSel"> <select name="usersGen"
												class="stype">
													<option value>성별</option>
													<option value="M">남</option>
													<option value="F">여</option>
											</select>
											</span>
											<div class="searchTypoBox">
												<input type="text" name="usersNm" class="inpTypo sword">
												<button type="submit"
													class="btnSizeS colorDarkBlue recruitViewSearchBtn">검색</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tblWrap resumeTbl">
								<div class="btnTxt resumeTxt confirmStatus">
									<button type="button" class="btnSizeM colorBlue resumeStatus"
										data-confirm-status="unconfirmed">미확인</button>
									<button type="button" class="btnSizeM resumeStatus"
										data-confirm-status="pass">합격</button>
									<button type="button" class="btnSizeM resumeStatus"
										data-confirm-status="fail">불합격</button>
								</div>
								<form id="confirmStatusForm" class="tblWrapForm" method="post">
									<input type="hidden" name="_method" value="put" />
									<input type="hidden" name="rcrtNo" value="${rcrtNo }" />
									<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
									<table class="sms-breakdown recruitViewTbl">
										<thead>
											<tr>
												<th scope="col">이름</th>
												<th scope="col">생년월일</th>
												<th scope="col">성별</th>
												<th scope="col">이력서제목</th>
												<th scope="col">지원일</th>
												<th scope="col">점수</th>
												<th scope="col"><select name="sortCategory">
														<option value="date">지원일순</option>
														<option value="score">점수순</option>
												</select></th>
											</tr>
										</thead>
										<tbody class="resume-tbody">
											<!-- 지원자 목록 출력하는 곳 -->
										</tbody>
									</table>
								</form>
								<div class="tblBtn">
									<div class="paging" id="paging">
										<!-- 페이지 출력하는 곳 -->
									</div>
									<button type="button" class="btnSizeM colorGreen"
										id="recruitListBtn">목록</button>
									<c:if test="${currProcedureInfo.rprocEnd eq 'N' }">
										<button type="button" class="btnSizeM colorGreen"
											id="procedureCloseBtn">마감</button>
										<button type="button" class="btnSizeM colorBlue"
											id="passStatusSaveBtn">저장</button>
									</c:if>
									
									
								</div>
							</div>

						</div>
						<div class="resumeBtn">
							<a id="applicantListDownloadTag"
									class="btnSizeM colorGray"
									><i class="fa-regular fa-floppy-disk"></i>지원자 목록 다운로드</a>
									
							<a id="allApplicantListDownloadTag"
								class="btnSizeM colorGray rightBtn"
								><i class="fa-regular fa-floppy-disk"></i>전체 지원자 목록 다운로드</a>
						</div>
						
					</div>
					
					<!-- 이력서 조회&채점 -->
					<div class="tab_part resume_part" data-idx="2" style="display:none;">
						<div class="box_lookup"></div>
						<div class="detailArea">
							<div class="topArea">
								<div class="detailName tech-detailName"></div>
							</div>
							<div class="detail-part1">
								<div class="resume-title-area">
									<!-- 이름 출력하는 곳 -->
								</div>
								<div class="resume-img-area" id="resumeImg">
									<!-- 이력서 첨부파일 출력하는 곳 -->
								</div>
							</div>
							<div class="detail-part2">
								<form id="resumeScoreSubmitForm" class="tblWrapForm" method="post">
									<table class="table table-bordered dataTable scoreTbl" cellspacing="0" role="grid" aria-describedby="dataTable_info">
										<thead class="score-thead">
											<tr>
												<th>항목</th>
												<th>점수</th>
											</tr>
										</thead>
										<tbody class="resume-score-tbody">
											<!-- 채점표 출력하는 곳 -->
										</tbody>
									</table>
								</form>
							</div>
							<div class="tblBtn">
								<button type="button" class="btnSizeM colorGreen"
									id="resumePartReturnBtn">목록</button>
								<c:if test="${currProcedureInfo.rprocEnd eq 'N'}">
									<button type="button" class="btnSizeM colorBlue"
										id="resumeScoreSubmitBtn">저장</button>
								</c:if>
							</div>
						</div>
					</div>

				</c:when>


				<%-- --------------------------------------------------적성검사전형 폼-------------------------------------------------- --%>
				<c:when test="${currProcedureInfo.rprocTypeno eq 'RE02' }">
					<div class="tab_part apt_part" data-idx="1">
						<div class="box_lookup"></div>

						<%-- 리스트 출력 영역 --%>
						<div id="list_position">
							<!-- 검색 UI -->
							<div class="searchUI">
								<div class="area_list_top">
									<div class="box_center">
										<div class="search_right">
											<span class="inpSel"> <select name="usersGen"
												class="stype">
													<option value>성별</option>
													<option value="M">남</option>
													<option value="F">여</option>
											</select>
											</span>
											<div class="searchTypoBox">
												<input type="text" name="usersNm" class="inpTypo sword">
												<button type="submit"
													class="btnSizeS colorDarkBlue recruitViewSearchBtn">검색</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tblWrap resumeTbl">
								<div class="btnTxt resumeTxt confirmStatus">
									<button type="button" class="btnSizeM colorBlue aptStatus"
										data-confirm-status="unconfirmed">미확인</button>
									<button type="button" class="btnSizeM aptStatus"
										data-confirm-status="pass">합격</button>
									<button type="button" class="btnSizeM aptStatus"
										data-confirm-status="fail">불합격</button>
								</div>
								<form id="confirmStatusForm" class="tblWrapForm" method="post">
									<input type="hidden" name="_method" value="put" />
									<input type="hidden" name="rcrtNo" value="${rcrtNo }" />
									<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
									<table class="sms-breakdown recruitViewTbl">
										<thead>
											<tr>
												<th scope="col">이름</th>
												<th scope="col">생년월일</th>
												<th scope="col">성별</th>
												<th scope="col">검사결과지</th>
												<th scope="col">지원일</th>
												<th scope="col">점수</th>
												<th scope="col"><select name="sortCategory">
														<option value="date">지원일순</option>
														<option value="score">점수순</option>
												</select></th>
											</tr>
										</thead>
										<tbody class="apt-tbody">
											<!-- 지원자 목록 출력하는 곳 -->
										</tbody>
									</table>
								</form>
								<div class="tblBtn">
									<div class="paging" id="paging">
										<!-- 페이지 출력하는 곳 -->
									</div>
									<button type="button" class="btnSizeM colorGreen"
										id="recruitListBtn">목록</button>
									<c:if test="${currProcedureInfo.rprocEnd eq 'N' }">
										<button type="button" class="btnSizeM colorGreen"
											id="procedureCloseBtn">마감</button>
										<button type="button" class="btnSizeM colorBlue"
											id="passStatusSaveBtn">저장</button>

									</c:if>
								</div>
							</div>
							

						</div>
						<div class="resumeBtn">
							<a id="applicantListDownloadTag"
									class="btnSizeM colorGray"
									><i class="fa-regular fa-floppy-disk"></i>지원자 목록 다운로드</a>
									
							<a id="allApplicantListDownloadTag"
								class="btnSizeM colorGray rightBtn"
								><i class="fa-regular fa-floppy-disk"></i>전체 지원자 목록 다운로드</a>
						</div>
					</div>
					
					<!-- 적성검사 시험지 조회 -->
					<div class="tab_part apt_part" data-idx="2" style="display:none;">
						<div class="box_lookup"></div>
						<div class="detailArea">
							<div class="detailName apt-detailName"></div>
							<div class="detail-part-full">
								<div id="apt-test-result">
									<!-- 시험결과 출력하는 곳 -->
								</div>
							</div>
						</div>
						<div class="tblBtn">
							<button type="button" class="btnSizeM colorGreen"
								id="aptPartReturnBtn">목록</button>
						</div>
					</div>
				</c:when>



				<%-- --------------------------------------------------기술시험전형 폼-------------------------------------------------- --%>
				<c:when test="${currProcedureInfo.rprocTypeno eq 'RE03' }">
					<div class="tab_part tech_part" data-idx="1">
						<div class="box_lookup"></div>

						<%-- 리스트 출력 영역 --%>
						<div id="list_position">
							<!-- 검색 UI -->
							<div class="searchUI">
								<div class="area_list_top">
									<div class="box_center">
										<div class="search_right">
											<span class="inpSel"> <select name="usersGen"
												class="stype">
													<option value>성별</option>
													<option value="M">남</option>
													<option value="F">여</option>
											</select>
											</span>
											<div class="searchTypoBox">
												<input type="text" name="usersNm" class="inpTypo sword">
												<button type="submit"
													class="btnSizeS colorDarkBlue recruitViewSearchBtn">검색</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tblWrap resumeTbl">
								<div class="btnTxt resumeTxt confirmStatus">
									<button type="button" class="btnSizeM colorBlue techStatus"
										data-confirm-status="unconfirmed">미확인</button>
									<button type="button" class="btnSizeM techStatus"
										data-confirm-status="pass">합격</button>
									<button type="button" class="btnSizeM techStatus"
										data-confirm-status="fail">불합격</button>
								</div>
								<form id="confirmStatusForm" class="tblWrapForm" method="post">
									<input type="hidden" name="_method" value="put" />
									<input type="hidden" name="rcrtNo" value="${rcrtNo }" />
									<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
									<table class="sms-breakdown recruitViewTbl">

										<thead>
											<tr>
												<th scope="col">이름</th>
												<th scope="col">생년월일</th>
												<th scope="col">성별</th>
												<th scope="col">검사결과지</th>
												<th scope="col">지원일</th>
												<th scope="col">점수</th>
												<th scope="col"><select name="sortCategory">
														<option value="date">지원일순</option>
														<option value="score">점수순</option>
												</select></th>
											</tr>
										</thead>
										<tbody class="tech-tbody">
											<!-- 지원자 목록 출력하는 곳 -->
										</tbody>
									</table>
								</form>
								<div class="tblBtn">
									<div class="paging" id="paging">
										<!-- 페이지 출력하는 곳 -->
									</div>
									<button type="button" class="btnSizeM colorGreen"
										id="recruitListBtn">목록</button>
									<c:if test="${currProcedureInfo.rprocEnd eq 'N' }">
										<button type="button" class="btnSizeM colorGreen"
											id="procedureCloseBtn">마감</button>
										<button type="button" class="btnSizeM colorBlue"
											id="passStatusSaveBtn">저장</button>
									</c:if>
								</div>
							</div>
							

						</div>
						<div class="resumeBtn">
							<a id="applicantListDownloadTag"
									class="btnSizeM colorGray"
									><i class="fa-regular fa-floppy-disk"></i>지원자 목록 다운로드</a>
									
							<a id="allApplicantListDownloadTag"
								class="btnSizeM colorGray rightBtn"
								><i class="fa-regular fa-floppy-disk"></i>전체 지원자 목록 다운로드</a>
						</div>
					</div>
					
					<!-- 기술시험 조회&채점 -->
					<div class="tab_part tech_part" data-idx="2" style="display:none;">
						<div class="box_lookup"></div>
						<div class="detailArea">
							<div class="topArea">
								<div class="detailName tech-detailName"></div>
							</div>
							<div class="detail-part1">
								<div id="tech-test-result">
									<!-- 시험결과 출력하는 곳 -->
								</div>
							</div>
							<div class="detail-part2">
								<form id="techScoreSubmitForm">
									<table class="table table-bordered dataTable scoreTbl" cellspacing="0" role="grid" aria-describedby="dataTable_info">
										<thead class="score-thead">
											<tr>
												<th>항목</th>
												<th>점수</th>
											</tr>
										</thead>
										<tbody class="tech-score-tbody">
											<!-- 채점표 출력하는 곳 -->
										</tbody>
									</table>
								</form>
							</div>
						</div>
						<div class="tblBtn">
							<button type="button" class="btnSizeM colorGreen"
								id="techPartReturnBtn">목록</button>
							<button type="button" class="btnSizeM colorBlue"
								id="techScoreSubmitBtn">저장</button>
						</div>
					</div>
				</c:when>



				<%-- --------------------------------------------------면접전형 폼-------------------------------------------------- --%>
				<c:when test="${currProcedureInfo.rprocTypeno eq 'RE04' }">
					<div class="tab_part intrvwForm intr_part">
						<div class="box_lookup">
							<button type="button" class="btnSlt intrInfoBtn inSelect"
								data-intr-tab-idx="1" data-intr-tab-type="applicant">지원자목록</button>
							<button type="button" class="btnSlt intrInfoBtn"
								data-intr-tab-idx="2" data-intr-tab-type="schedule">면접일정관리</button>
						</div>

						<%-- 리스트 출력 영역 --%>
						<div id="list_position">
							<!-- 검색 UI -->
							<div class="searchUI">
								<div class="area_list_top">
									<div class="box_center">
										<div class="search_right">
											<span class="inpSel"> <select name="usersGen"
												class="stype">
													<option value>성별</option>
													<option value="M">남</option>
													<option value="F">여</option>
											</select>
											</span>
											<div class="searchTypoBox">
												<input type="text" name="usersNm" class="inpTypo sword">
												<button type="submit"
													class="btnSizeS colorDarkBlue recruitViewSearchBtn">검색</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tblWrap resumeTbl">
								<div class="intrTbl" data-intr-list-idx="1">
									<div class="btnTxt resumeTxt confirmStatus">
										<button type="button"
											class="btnSizeM colorBlue intrApplStatus"
											data-confirm-status="unconfirmed">미확인</button>
										<button type="button" class="btnSizeM intrApplStatus"
											data-confirm-status="pass">합격</button>
										<button type="button" class="btnSizeM intrApplStatus"
											data-confirm-status="fail">불합격</button>
									</div>
									<table class="sms-breakdown recruitViewTbl tbl90">
										<thead>
											<tr>
												<th scope="col">이름</th>
												<th scope="col">생년월일</th>
												<th scope="col">성별</th>
												<th scope="col">지원일</th>
												<th scope="col">면접일정 등록여부</th>
												<th scope="col"><select name="intrStatus">
														<option value>등록여부</option>
														<option value="NotNull">등록</option>
														<option value="Null">미등록</option>
												</select></th>
											</tr>
										</thead>
										<tbody class="intrAppl-tbody" id="intrATbody">
											<!-- 지원자 목록 출력하는 곳 -->
										</tbody>
									</table>

								</div>
								<div class="intrTbl" data-intr-list-idx="2"
									style="display: none;">
									<div class="btnTxt resumeTxt confirmStatus">
										<button type="button"
											class="btnSizeM colorBlue intrSchdStatus"
											data-confirm-status="unconfirmed">미확인</button>
										<button type="button" class="btnSizeM intrSchdStatus"
											data-confirm-status="pass">합격</button>
										<button type="button" class="btnSizeM intrSchdStatus"
											data-confirm-status="fail">불합격</button>
									</div>
									<form id="confirmStatusForm" class="tblWrapForm" method="post">
										<input type="hidden" name="_method" value="put" />
										<input type="hidden" name="rcrtNo" value="${rcrtNo }" />
										<input type="hidden" name="rprocOrder" value="${rprocOrder }" />
										<table class="sms-breakdown recruitViewTbl">

											<thead>
												<tr>
													<th scope="col">이름</th>
													<th scope="col">생년월일</th>
													<th scope="col">성별</th>
													<th scope="col">면접일시</th>
													<th scope="col">메일건수</th>
													<th scope="col" colspan="2"><select name="sortCategory">
														<option value="date">지원일순</option>
														<option value="intrDate">면접일순</option>
												</select></th>
												</tr>
											</thead>
											<tbody class="intrSchd-tbody">
												<!-- 면접일정 목록 출력하는 곳 -->
											</tbody>
										</table>
									</form>
								</div>
								<div class="tblBtn">
									<div class="paging" id="paging">
										<!-- 페이지 출력하는 곳 -->
									</div>
									<button type="button" class="btnSizeM colorGreen"
										id="recruitListBtn">목록</button>
									<c:if test="${currProcedureInfo.rprocEnd eq 'N' }">
										<button type="button" class="btnSizeM colorGreen"
											id="procedureCloseBtn">마감</button>
										<button type="button" class="btnSizeM colorBlue"
											id="passStatusSaveBtn">저장</button>
									</c:if>
								</div>
							</div>


						</div>
						<div class="resumeBtn">
							<a id="applicantListDownloadTag"
									class="btnSizeM colorGray"
									><i class="fa-regular fa-floppy-disk"></i>지원자 목록 다운로드</a>
									
							<a id="allApplicantListDownloadTag"
								class="btnSizeM colorGray rightBtn"
								><i class="fa-regular fa-floppy-disk"></i>전체 지원자 목록 다운로드</a>
						</div>
				</c:when>
			</c:choose>

			<form
				action="<%=request.getContextPath()%>/company/recruit/ajax/${rcrtNo}/${rprocOrder}"
				id="searchForm">
				<input type="hidden" readonly name="rprocTypeno" placeholder="rprocTypeno" />
				<input type="hidden" readonly name="aprocPass" placeholder="aprocPass" />
				<input type="hidden" readonly name="usersGen" placeholder="usersGen" />
				<input type="hidden" readonly name="usersNm" placeholder="usersNm" />
				<input type="hidden" readonly name="sortCategory" placeholder="sortCategory" />
				<input type="hidden" readonly name="intrStatus" placeholder="intrStatus" />
				<input type="hidden" readonly name="intrTabType" placeholder="intrTabType" />
				<input type="hidden" readonly name="page" placeholder="page" />
			</form>
		</div>
	</div>
</div>
