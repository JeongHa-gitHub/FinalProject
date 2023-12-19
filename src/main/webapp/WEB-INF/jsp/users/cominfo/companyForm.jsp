<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form modelAttribute="cominfo" method="post"
	enctype="multipart/form-data">
	<div class="wrap_recruit_frm">
		<div class="wrap_step_recruit">
			<!-- 공고 기본설정-->
			<div class="companyForm">
				<h1 class="wrap_title">기업정보 등록</h1>
			</div>

			<section id="frmRecType" class="step_recruit">
				<div class="frm_header">
					<h2 class="tit_step">기본 정보</h2>
					<div class="notice_right">
						<em class="required">*</em> 필수항목
					</div>
				</div>
				<div class="frm_body frm_rec_type">
					<div class="items" id="jobCategory">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">업종</h3>
							<!-- 툴팁 -->
						</div>
						<div class="area_data">
							<div class="template_title">
								<div class="TypoBox" id="industry">
									<select class="Typo SizeL" id="indSelect">
									<option value>상위업종</option>
										<c:forEach items="${industry}" var="ind">
											<option value="${ind.industryNo }">${ind.industryNm}</option>
										</c:forEach>
									</select>
								</div>
								<div class="TypoBox" id="industryList">
									<select class="Typo SizeL" id="indList">
										<option value>중위업종</option>
										<c:forEach items="${industryList}" var="indList">
											<option class="${indList.industryCode }"
												value="${indList.industryNo }">${indList.industryNm}</option>
										</c:forEach>
									</select>
								</div>

								<div class="TypoBox" id="industryListDet">
									<form:select path="cominfoSectors" class="Typo SizeL"
										id="title" aria-label="최하위업종">
										<option value>하위업종</option>
										<c:forEach items="${industryListDet }" var="industry">
											<form:option class="${industry.industryCode }"
												value="${industry.industryNo }"
												label="${industry.industryNm }" />
										</c:forEach>
									</form:select>
									<form:errors path="cominfoSectors" element="span"
										cssClass="error" />
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="frm_body frm_rec_type">
					<div class="items" id="recruit_title">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">사업 내용</h3>
						</div>
						<div class="area_data">
							<div class="template_title">
								<div class="TypoBox">
									<form:input type="textArea" path="cominfoContent"
										class="Typo SizeL" id="title" aria-label="사업내용"
										placeholder="간략히 사업 내용을 입력하세요." />
									<form:errors path="cominfoContent" element="span"
										cssClass="error" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="frm_body frm_rec_type">
					<div class="items" id="recruit_title">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">대표자명</h3>
						</div>
						<div class="area_data">
							<div class="template_title">
								<div class="TypoBox">
									<form:input type="text" path="cominfoCeonm" class="Typo SizeL"
										id="title" aria-label="대표자명" placeholder="이름 입력" />
									<form:errors path="cominfoCeonm" element="span"
										cssClass="error" />
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="frm_body frm_rec_type">
					<div class="items" id="recruit_title">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">페이지주소</h3>
						</div>
						<div class="area_data">
							<div class="template_title">
								<div class="TypoBox">
									<form:input type="text" path="cominfoPage" class="Typo SizeL"
										id="title" aria-label="페이지주소" placeholder="URL입력" />
									<form:errors path="cominfoPage" element="span" cssClass="error" />
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="frm_body frm_rec_type">
					<div class="items">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">직원 수</h3>
						</div>
						<div class="area_data">
							<span class="division_collect">
								<div class="TypoBox">
									<form:input type="text" path="cominfoEmp" id="collect_cnt_0"
										class="Typo SizeL collect_cnt _filter" aria-label="직원수"
										placeholder="ex) 00명" name="collect_cnt" data-filter="numeric"
										data-help_target="collect_cnt" maxlength="6" />
									<form:errors path="cominfoEmp" element="span" cssClass="error" />
								</div>
							</span>
						</div>
					</div>
					<input type="hidden" id="assign_task_nm_0" value=""
						style="height: 0px;">
				</div>
				<div class="frm_body frm_rec_type">
					<div class="items" id="recruit_title">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">매출액</h3>
						</div>
						<div class="area_data">
							<div class="template_title">
								<div class="TypoBox">
									<form:input type="text" path="cominfoSales" class="Typo SizeL"
										id="title" aria-label="업종"
										placeholder="최근 1년간에 대한 매출액을 입력해 주세요." />
									<form:errors path="cominfoSales" element="span"
										cssClass="error" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="frm_body frm_rec_type">
					<div class="items" id="recruit_title">
						<div class="area_tit">
							<em class="required">*</em>
							<h3 class="tit">기업로고 등록</h3>
						</div>
						<div class="box_file_upload" id="box_file_upload">
							<input type="file" id="confirm_document_file"
								name="cominfoImage" class="file_input"> <label
								for="confirm_document_file" class="file_label"
								id="confirm_document_file_label"> <span class="blind">파일찾기</span>
							</label>
							<!-- 오류시텍스트 -->
							<em class="msgInvalid" id="cyr_msg"> <form:errors
									path="cominfoImage" element="span" cssClass="errors"
									class="alert_column good_txt"></form:errors>
							</em>
						</div>
					</div>
				</div>
			</section>

			<!-- 선택 정보 -->
			<section id="frmRecType" class="step_recruit">
				<div class="frm_header">
					<h2 class="tit_step">선택 정보</h2>
				</div>
				<div class="frm_body frm_rec_type">
					<div class="items" id="recruit_title">
						<div class="area_tit">
							<h3 class="tit">복리후생</h3>
						</div>
						<div class="area_data">
							<div class="template_title">
								<div class="TypoBox">
									<form:input type="textArea" path="cominfoBenefit"
										class="Typo SizeL" id="title" aria-label="복리후생"
										placeholder="해당 기업에 대표적인 복리 후생을 입력해 주세요" />
									<form:errors path="cominfoBenefit" element="span"
										cssClass="error" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>


	<div class="wrap_recruit_frm">
		<div class="wrap_step_recruit">
			<!-- 등록 완료 버튼 -->
			<div class="companyForm">
				<div class="wrap_bottom_btn ">
					<div class="TipBox"></div>
					<button type="submit"
						class="BtnType SizeML btn_entry_complete btn_next_step ga_data_layer"
						data-ga_data_layer="ga_lead|pc_recruit_step|btn_entry_complete">기업
						등록하기</button>
					<button type="return"
						class=" companyForm BtnType SizeML btn_entry_complete btn_next_step ga_data_layer"
						data-ga_data_layer="ga_lead|pc_recruit_step|btn_entry_complete">취소
						하기</button>
				</div>
			</div>
		</div>
	</div>
</form:form>


<script>
let $industryList = $("select[id=indSelect]");
let $industry = $("select[id=indList]");
let $cominfoSectors = $("select[name=cominfoSectors]");
$("select[id=indSelect]").on("change", function(event){
	console.log($industryList);
	let ind = $(this).val();
	let $options = $industry.find("option");
	$options.hide();
	$options.filter((i,e)=>i==0).show();
	if(ind){
		$options.filter(`.\${ind}`).show();
	}else{
		$options.show();
	}
})

$("select[id=indList]").on("change", function(event){
	console.log($industry);
	let indList = $(this).val();
	let $options = $cominfoSectors.find("option");
	$options.hide();
	$options.filter((i,e)=>i==0).show();
	if(indList){
		$options.filter(`.\${indList}`).show();
	}else{
		$options.show();
	}
})
</script>
