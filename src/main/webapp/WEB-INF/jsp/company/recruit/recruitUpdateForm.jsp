<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="wrap_recruit_frm">
   <form:form action="${pageContext.request.contextPath}/recruit/${recruit.rcrtNo}/edit"
    modelAttribute="recruit" method="post">
<!--     폼으로 보내야하니까 채용공고 번호 히든으로 바꾸기 -->
         <input type="text" name="rcrtNo" value="${recruit.rcrtNo}" />
         <input type="text" id="swHidden" name="rcrtKeywordnm" value="" />
      
      <div class="wrap_step_recruit">
         <!-- 공고 기본설정-->
         <section id="frmRecType" class="step_recruit">
            <div class="frm_header">
               <h2 class="tit_step">공고 기본 설정</h2>
               <div class="notice_right">
                  <em class="required">*</em> 필수항목
               </div>
            </div>

            <div class="frm_body frm_rec_type">
               <div class="items" id="recruit_title">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">공고 제목</h3>
                  </div>
                  <div class="area_data">
                     <div class="template_title">
                        <div class="TypoBox">
                           <input type="text" class="Typo SizeL" id="title"
                              name="rcrtTitle" aria-label="공고 제목" value="${recruit.rcrtTitle}"
                              placeholder="직무명이 포함된 공고 제목을 지원자들이 선호해요. (ex. 하반기 기계조작원 신입채용)" />
                        </div>
                     </div>
                     <!-- 오류 시 텍스트 -->
                     <em class="msgInvalid" id="cyr_msg" >
                     <form:errors path="rcrtTitle" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                     </em>
                  </div>
               </div>
            </div>
         </section>
         <!-- 모집분야 -->
         <section id="frmDivision" class="step_recruit">
            <div class="frm_header">
               <h2 class="tit_step">모집분야</h2>
               <div class="frm_set">
               </div>
            </div>
            <div class="frm_body frm_division">
               <div class="items" id="jobCategory">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">직무·직업</h3>
                  </div>
                  <div class="area_data">
                   <div class="selected_item">
						<div class="InpBox SizeL">
									<select name="tjobCode" id="tjobCode">
										<option value>상위직업 선택</option>
										<c:forEach items="${tjobCodeList}" var="tjob">
											<option value="${tjob.jobCode}" id="${tjob.jobCode}" 
												class="${tjob.jobCode}" label="${tjob.jobNm}"></option>
										</c:forEach>
									</select> 
								</div>
								<div class="InpBox SizeL">
									<select name="jobCode" id="jobCode">
										<option value>하위직업 선택</option>
										<c:forEach items="${jobCodeList}" var="job">
											<option value="${job.jobNm}" id="${job.jobCode}" selected
												class="${job.tjobCode}" label="${job.jobNm}"></option>
										</c:forEach>
									</select>
								</div>
							</div>
                     <div class="MsgTxt Invalid" >
                     <!-- 오류 시 텍스트 -->
                     <em class="msgInvalid" id="cyr_msg" >
                     <form:errors path="rcrtKeywordnm" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                     </em>
                     </div>
                  </div>
               </div>
               
               <ul class="list_division list_recruit_frm"
                  id="list_recruit_division">
                  <li class="division_line_detail  expand" id="line_detail_0"
                     data-seq="0">
                     <div class="">
                        <div class="summary">
                           <div class="items">
                              <div class="area_tit" id="recruit_division_title_area_0">
                                 <em class="required">*</em>
                                 <h3 class="tit">모집분야명</h3>
                              </div>
                              <div class="area_data">
                                 <div class="division_name" id="division_name_area_0"
                                    data-seq="0">
                                    <div class="TypoBox">
                                       <input type="text" id="recruitment_title_0" value="${recruit.rcrtField}"
                                          name="rcrtField" class="Typo SizeL recruitment_title"
                                          data-seq="0" data-help_target="display_division" value=""
                                          aria-label="모집분야명"
                                          placeholder="모집분야명 입력 (ex. 디지털 마케팅, 그래픽 디자인, 경영지원 등)"
                                          maxlength="30">
                                    </div>
                                    <div>
                                    <!-- 오류 시 텍스트 -->
                                    <em class="msgInvalid" id="cyr_msg" >
                                    <form:errors path="rcrtField" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                                    </em>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="fulldata">
                           <div class="items">
                              <div class="area_tit">
                                 <em class="required">*</em>
                                 <h3 class="tit">모집인원</h3>
                              </div>
                              <div class="area_data">
                                 <span class="division_collect">
                                    <div class="TypoBox">
                                       <input type="text" id="collect_cnt_0" name="rcrtPerson" value="${recruit.rcrtPerson}"
                                          class="Typo SizeL collect_cnt _filter" aria-label="모집인원"
                                          placeholder="ex) 00명" name="collect_cnt"
                                          data-filter="numeric" data-help_target="collect_cnt"
                                          value="" maxlength="6">
                                    </div> 명 모집
                                 </span>
                                 <!-- 오류 시 텍스트 -->
                                 <em class="msgInvalid" id="cyr_msg" >
                                 <form:errors path="rcrtPerson" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                                 </em>
                              </div>
                           </div>
                           <div class="items">
                              <div class="area_tit">
                                 <em class="required">*</em>
                                 <h3 class="tit">경력</h3>
                              </div>
                              <div class="area_data type_txt">
                                 <div class="InpBox">
                                    <span class="Chk SizeL career_cd_0"><input
                                       type="checkbox" id="career_cd_0_1" value="신입" 
                                       data-help_target="hope_career" name="rcrtCareer"><label
                                       class="Lbl" for="career_cd_0_1">신입</label></span>
                                 </div>
                                 <div class="InpBox">
                                    <span class="Chk SizeL career_cd_0"><input
                                       type="checkbox" id="career_cd_0_2" value="경력" 
                                       data-help_target="hope_career" name="rcrtCareer"><label
                                       class="Lbl" for="career_cd_0_2">경력</label></span>
                                 </div>
                                 <div class="InpBox">
                                    <span class="Chk SizeL career_cd_0"><input
                                       type="checkbox" id="career_cd_0_0" value="경력무관" 
                                       data-help_target="hope_career" name="rcrtCareer"><label
                                       class="Lbl" for="career_cd_0_0">경력무관</label></span>
                                 </div>
                                 <!-- 오류 시 텍스트 -->
                                 <em class="msgInvalid" id="cyr_msg" >
                                 <form:errors path="rcrtCareer" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                                 </em>
                                 <div class="MsgTxt Invalid _invalid_msg_career_sub_0"
                                    style="display: none;">경력 연수를 선택해주세요.</div>
                              </div>
                           </div>
                           <!-- 필수우대조건 -->
                           <div class="items">
                              <div class="area_tit">
                                 <em class="required">*</em>
                                 <h3 class="tit">필수우대조건</h3>
                              </div>
                              <div class="area_data etc_items">
                                 <div class="TypoBox">
                                    <input type="text" class="Typo SizeL" id="" value="${recruit.rcrtCondition}"
                                       name="rcrtCondition" aria-label="공고 제목"
                                       placeholder="우대조건이 없는 경우 '없음'이라고 작성해주세요">
                                 </div>
                                 <!-- 오류 시 텍스트 -->
                                 <em class="msgInvalid" id="cyr_msg" >
                                 <form:errors path="rcrtCondition" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                                 </em>
                              </div>
                           </div>
                        </div>
                  </li>
               </ul>
            </div>
            <em class="MsgTxt Invalid" style="display: none;">모집분야는 최대 5개까지
               등록 가능합니다.</em>
         </section>
         <!-- 지원자격 -->
         <section id="frmQualification" class="step_recruit">
            <div class="frm_header">
               <h2 class="tit_step">지원자격</h2>
            </div>
            <div class="frm_body frm_edu">
               <div class="items" id="eduItem">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">지원자 학력</h3>
                  </div>
                  <div class="area_data">
                     <div class="condition_edu">
                        <!--                         <div class="check_list"> -->
                        <!--                            <div class="InpBox"> -->
                        <!--                               <span class="Chk SizeL"><input type="checkbox" -->
                        <!--                                  id="edu_graduation" name="" value="졸업예정자 지원가능"><label -->
                        <!--                                  class="Lbl" for="edu_graduation">졸업예정자 지원가능</label></span> -->
                        <!--                            </div> -->
                        <!--                         </div> -->
                        <div class="InpBox SizeL">
                           <form:select path="rcrtEdu" id="edu_select" title="학력">
                              <c:forEach items="${eduCodeList }" var="Ecode">
                                 <form:option value="${Ecode.comCodeNm}">${Ecode.comCodeNm}</form:option>
                              </c:forEach>
                           </form:select>
                        </div>
                        <!-- 오류 시 텍스트 -->
                        <em class="msgInvalid" id="cyr_msg" >
                        <form:errors path="rcrtEdu" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                        </em>
                     <form:errors path="rcrtEdu" element="span" cssClass="errors"   class="alert_column good_txt"></form:errors>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- 근무조건 -->
         <section id="frmCondition" class="step_recruit">
            <div class="frm_header">
               <h2 class="tit_step">근무조건</h2>
            </div>
            <div class="frm_body frm_condition">
               <div class="items" id="addressArea">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">근무지역</h3>
                  </div>
                  <div class="area_data" id="address">
							<div class="input_address internal">
								<span class="manager_address">
									<div class="TypoBox">
										<input type="text" class="Typo SizeL address01 _inputWrapper"
											id="address_depth1" name="rcrtLoc" readonly=""
											data-help_target="company_address" aria-label="주소"
											placeholder="근무지역">
									</div>
								</span> <span class="manager_address2">
									<div class="TypoBox">
										<input type="text" class="Typo SizeL address02 _inputWrapper" value="${recruit.rcrtLoc}"
											id="address_depth2" name="rcrtLoc"
											data-help_target="company_address" aria-label="상세주소"
											placeholder="상세주소 입력 : 예) 187-10 코오롱싸이언스밸리">
									</div>
								</span>
								<button type="button" class="BtnType SizeL GrayBg"
									id="searchAddressBtn">변경</button>
								<!--<button type="button" class="btnSizeL colorBlack btn_map" id="showAreaMapBtn"><span class="ico_map">지도위치확인</span></button>-->
								<div class="MsgTxt Invalid _invalid_msg" id="address_empty_msg">
									
								</div>
								<div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
								<!-- 오류 시 텍스트 -->
								<em class="msgInvalid" id="cyr_msg" >
								<form:errors path="rcrtLoc" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
								</em>
								</div>
							</div>
						</div>
               </div>
               <div class="items" id="job_type">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">근무형태</h3>
                  </div>
                  <div class="area_data">
                     <div class="row">
                        <ul class="job_list_check" id="job_type_list">
                           <li>
                              <div class="InpBox">
                                 <span class="Chk SizeL"> <input type="checkbox"
                                    id="job_type_1" value="정규직" data-help_target="job_type"
                                    name="rcrtType"><label for="job_type_1" class="Lbl">정규직</label>
                                 </span>
                              </div>
                           </li>

                           <li>
                              <div class="InpBox">
                                 <span class="Chk SizeL"> <input type="checkbox"
                                    id="job_type_2" value="계약직" data-help_target="job_type"
                                    name="rcrtType"><label for="job_type_2" class="Lbl">계약직</label>
                                 </span>
                              </div>
                           </li>

                           <li>
                              <div class="InpBox">
                                 <span class="Chk SizeL"> <input type="checkbox"
                                    id="job_type_3" value="인턴직" data-help_target="job_type"
                                    name="rcrtType"><label for="job_type_3" class="Lbl">인턴직</label>
                                 </span>
                              </div>
                           </li>

                           <li>
                              <div class="InpBox">
                                 <span class="Chk SizeL"> <input type="checkbox"
                                    id="job_type_4" value="프리랜서" data-help_target="job_type"
                                    name="rcrtType"><label for="job_type_4" class="Lbl">프리랜서</label>
                                 </span>
                              </div>
                           </li>
                           <li>
                              <div class="InpBox">
                                 <span class="Chk SizeL"> <input type="radio"
                                    id="job_type_5" value="기타" data-help_target="job_type"
                                    name="rcrtType"><label for="job_type_5" class="Lbl"">기타</label>
                                 </span>
                              </div>
                           </li>
                        </ul>
                        <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                           <!-- 오류 시 텍스트 -->
                           <em class="msgInvalid" id="cyr_msg" >
                           <form:errors path="rcrtType" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                           </em>
                        </div>
                  </div>

               </div>
               <div class="items" id="salary">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">급여</h3>

                  </div>
                  <div class="area_data">
                     <div class="condition_salary">
                        <div class="InpBox SizeL">
                           <form:select path="rcrtSalary" title="급여">
                              <c:forEach items="${salCodeList}" var="Scode">
                                 <form:option value="${Scode.comCodeNm}">${Scode.comCodeNm}</form:option>
                              </c:forEach>
                           </form:select>
                        </div>
                        <span class="salary_directly" id="input_salary">
                           <div class="TypoBox">
                              <input type="text" id="salary_ipt" name="rcrtSalary"
                                 class="Typo SizeL _filter" data-filter="numeric"
                                 maxlength="6" aria-label="급여 직접 입력">
                           </div> <span class="txt" id="salary_unit">만원</span>
                        </span> <span class="salary_etc" >
                           <div >
                              <form:errors path="rcrtSalary" element="span" cssClass="errors"   class="alert_column good_txt"></form:errors>
                           </div>
                           <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                              <!-- 오류 시 텍스트 -->
                              <em class="msgInvalid" id="cyr_msg" >
                              <form:errors path="rcrtSalary" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                              </em>
                           </div>
                        </span>
                        <div class="MsgTxt Invalid _invalid_msg" style="display: none;"></div>
                        <div class="noti_salary">
                           <strong id="salary_msg">주 40시간 기준 최저연봉 <em
                              class="highlight">약 24,126,960원</em> (2023년 최저시급 9,620원)
                           </strong>
                        </div>
                        <!--                       
                     <div class="optional_item work_time">
                        <dl id="work_hour">
                           <dt>
                              <em class="required">*</em>근무
                           </dt>
                           <dd>
                              <span class="unit">주</span>
                              <div class="TypoBox">
                                 <input type="text" class="Typo _filter" id="work_hour_value"
                                    data-filter="numeric" maxlength="3" aria-label="소정 근로시간">
                              </div>
                              시간
                              <div class="InpBox">
                                 <span class="Chk"><input type="checkbox"
                                    id="decide_after_interview"><label class="Lbl"
                                    for="decide_after_interview">면접 후 결정</label></span>
                              </div>
                           </dd>
                        </dl>
                     </div>
                     -->
                     </div>
                  </div>
                  <!--                   근무요일 -->
                  <div class="items" id="job_type">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">근무요일</h3>
                     </div>
                     <div class="area_data">
                        <div class="row">
                           <ul class="job_list_check" id="job_type_list">
                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtWeek" id="job_type_6" value="주 5일"
                                       data-help_target="job_type"><label for="job_type_6"
                                       class="Lbl">주 5일</label>
                                    </span>
                                 </div>
                              </li>

                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtWeek" id="job_type_7" value="주 6일"
                                       data-help_target="job_type"><label for="job_type_7"
                                       class="Lbl">주 6일</label>
                                    </span>
                                 </div>
                              </li>

                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtWeek" id="job_type_8" value="주 3일"
                                       data-help_target="job_type"><label for="job_type_8"
                                       class="Lbl">주 3일</label>
                                    </span>
                                 </div>
                              </li>

                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtWeek" id="job_type_9" value="유연근무제"
                                       data-help_target="job_type"><label for="job_type_9"
                                       class="Lbl">유연근무제</label>
                                    </span>
                                 </div>
                              </li>

                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtWeek" id="job_type_10" value="면접 후 결정"
                                       data-help_target="job_type"><label
                                       for="job_type_10" class="Lbl">면접 후 결정</label>
                                    </span>
                                 </div>
                           <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                              <!-- 오류 시 텍스트 -->
                              <em class="msgInvalid" id="cyr_msg" >
                              <form:errors path="rcrtWeek" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                              </em>
                           </div>
                              </li>
                           </ul>
                        </div>

                     </div>

                     <!--                   출퇴근시간 -->
                     <div class="items option" id="workTimeArea"
                        style="display: block;">
                        <div class="area_tit">
                           <em class=""></em> <strong class="tit">출퇴근 시간</strong>
                        </div>
                        <div class="area_data">
                           <div class="optional_item condition_detail">
                              <div class="commute_txt" id="work_shift_time_part">
                                 <!--<span class="inpChk ga_data_layer" data-ga_data_layer="ga_lead|pc_rec_condition|btn_time">
                            <input type="checkbox" name="use_work_time" id="use_work_time"><label for="use_work_time" class="lbl">출퇴근 시간</label>
                        </span>-->
                                 <div class="work_time_check">
                                    <div class="InpBox SizeL">
                                       <select id="work_shift_time_start" name="rcrtStime"
                                          data-help_target="work_shift_start" title="근무 시작 시간">
                                          <option value="">출근시간</option>

                                          <option value="00:00">00:00</option>

                                          <option value="00:30">00:30</option>

                                          <option value="01:00">01:00</option>

                                          <option value="01:30">01:30</option>

                                          <option value="02:00">02:00</option>

                                          <option value="02:30">02:30</option>

                                          <option value="03:00">03:00</option>

                                          <option value="03:30">03:30</option>

                                          <option value="04:00">04:00</option>

                                          <option value="04:30">04:30</option>

                                          <option value="05:00">05:00</option>

                                          <option value="05:30">05:30</option>

                                          <option value="06:00">06:00</option>

                                          <option value="06:30">06:30</option>

                                          <option value="07:00">07:00</option>

                                          <option value="07:30">07:30</option>

                                          <option value="08:00">08:00</option>

                                          <option value="08:30">08:30</option>

                                          <option value="09:00">09:00</option>

                                          <option value="09:30">09:30</option>

                                          <option value="10:00">10:00</option>

                                          <option value="10:30">10:30</option>

                                          <option value="11:00">11:00</option>

                                          <option value="11:30">11:30</option>

                                          <option value="12:00">12:00</option>

                                          <option value="12:30">12:30</option>

                                          <option value="13:00">13:00</option>

                                          <option value="13:30">13:30</option>

                                          <option value="14:00">14:00</option>

                                          <option value="14:30">14:30</option>

                                          <option value="15:00">15:00</option>

                                          <option value="15:30">15:30</option>

                                          <option value="16:00">16:00</option>

                                          <option value="16:30">16:30</option>

                                          <option value="17:00">17:00</option>

                                          <option value="17:30">17:30</option>

                                          <option value="18:00">18:00</option>

                                          <option value="18:30">18:30</option>

                                          <option value="19:00">19:00</option>

                                          <option value="19:30">19:30</option>

                                          <option value="20:00">20:00</option>

                                          <option value="20:30">20:30</option>

                                          <option value="21:00">21:00</option>

                                          <option value="21:30">21:30</option>

                                          <option value="22:00">22:00</option>

                                          <option value="22:30">22:30</option>

                                          <option value="23:00">23:00</option>

                                          <option value="23:30">23:30</option>
                                       </select>
                                    </div>
                                    <div class="InpBox SizeL">
                                       <select id="work_shift_time_end" name="rcrtEtime"
                                          data-help_target="work_shift_end" title="근무 시작 시간">
                                          <option value="">퇴근시간</option>

                                          <option value="00:00">00:00</option>

                                          <option value="00:30">00:30</option>

                                          <option value="01:00">01:00</option>

                                          <option value="01:30">01:30</option>

                                          <option value="02:00">02:00</option>

                                          <option value="02:30">02:30</option>

                                          <option value="03:00">03:00</option>

                                          <option value="03:30">03:30</option>

                                          <option value="04:00">04:00</option>

                                          <option value="04:30">04:30</option>

                                          <option value="05:00">05:00</option>

                                          <option value="05:30">05:30</option>

                                          <option value="06:00">06:00</option>

                                          <option value="06:30">06:30</option>

                                          <option value="07:00">07:00</option>

                                          <option value="07:30">07:30</option>

                                          <option value="08:00">08:00</option>

                                          <option value="08:30">08:30</option>

                                          <option value="09:00">09:00</option>

                                          <option value="09:30">09:30</option>

                                          <option value="10:00">10:00</option>

                                          <option value="10:30">10:30</option>

                                          <option value="11:00">11:00</option>

                                          <option value="11:30">11:30</option>

                                          <option value="12:00">12:00</option>

                                          <option value="12:30">12:30</option>

                                          <option value="13:00">13:00</option>

                                          <option value="13:30">13:30</option>

                                          <option value="14:00">14:00</option>

                                          <option value="14:30">14:30</option>

                                          <option value="15:00">15:00</option>

                                          <option value="15:30">15:30</option>

                                          <option value="16:00">16:00</option>

                                          <option value="16:30">16:30</option>

                                          <option value="17:00">17:00</option>

                                          <option value="17:30">17:30</option>

                                          <option value="18:00">18:00</option>

                                          <option value="18:30">18:30</option>

                                          <option value="19:00">19:00</option>

                                          <option value="19:30">19:30</option>

                                          <option value="20:00">20:00</option>

                                          <option value="20:30">20:30</option>

                                          <option value="21:00">21:00</option>

                                          <option value="21:30">21:30</option>

                                          <option value="22:00">22:00</option>

                                          <option value="22:30">22:30</option>

                                          <option value="23:00">23:00</option>

                                          <option value="23:30">23:30</option>
                                       </select>
                                    </div>
                                    
                                 </div>
                                 <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                                    <!-- 오류 시 텍스트 -->
                                    <em class="msgInvalid" id="cyr_msg" >
                                    <form:errors path="rcrtStime" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                                    <form:errors path="rcrtEtime" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                                    </em>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
         </section>
         <!-- 채용절차 -->
         <section id="frmHiring" class="step_recruit">
            <div class="frm_header">
               <h2 class="tit_step">채용절차</h2>
            </div>
            <div class="frm_body frm_hiring">
               <div class="items" id="applyPeriod">
                  <div class="area_tit">
                     <em class="required">*</em>
                     <h3 class="tit">지원 접수 기간</h3>
                  </div>
                  <div class="area_data">
                     <div class="row">
                     </div>
                     <div class="row apply_datetime">
                        <div class="TypoBox">
                           <input type="date" id="start_date" name="rcrtSdate"
                              class="Typo DatePic SizeL type_calendar" aria-label="접수 시작일"
                              style="cursor: pointer;" autocomplete="off">
                        </div>
                        <!--                         <div class="InpBox SizeL"> 
                           <select id="start_hour" title="접수 시작 시간" name="">
                              <option value="0">0시</option>
                              <option value="1">1시</option>
                              <option value="2">2시</option>
                              <option value="3">3시</option>
                              <option value="4">4시</option>
                              <option value="5">5시</option>
                              <option value="6">6시</option>
                              <option value="7">7시</option>
                              <option value="8">8시</option>
                              <option value="9">9시</option>
                              <option value="10">10시</option>
                              <option value="11">11시</option>
                              <option value="12">12시</option>
                              <option value="13">13시</option>
                              <option value="14">14시</option>
                              <option value="15">15시</option>
                              <option value="16">16시</option>
                              <option value="17">17시</option>
                              <option value="18">18시</option>
                              <option value="19">19시</option>
                              <option value="20">20시</option>
                              <option value="21">21시</option>
                              <option value="22">22시</option>
                              <option value="23">23시</option>
                           </select>
                        </div>
                        ~
                        -->
                        <div class="TypoBox">
                           <input type="date" id="end_date" name="rcrtEdate"
                              class="Typo DatePic SizeL type_calendar" aria-label="접수 마감일"
                              style="cursor: pointer;" autocomplete="off">
                        </div>
                        <!--
                        <div class="InpBox SizeL">
                           <select id="end_hour" title="접수 마감 시간">
                              <option value="1">1시</option>
                              <option value="2">2시</option>
                              <option value="3">3시</option>
                              <option value="4">4시</option>
                              <option value="5">5시</option>
                              <option value="6">6시</option>
                              <option value="7">7시</option>
                              <option value="8">8시</option>
                              <option value="9">9시</option>
                              <option value="10">10시</option>
                              <option value="11">11시</option>
                              <option value="12">12시</option>
                              <option value="13">13시</option>
                              <option value="14">14시</option>
                              <option value="15">15시</option>
                              <option value="16">16시</option>
                              <option value="17">17시</option>
                              <option value="18">18시</option>
                              <option value="19">19시</option>
                              <option value="20">20시</option>
                              <option value="21">21시</option>
                              <option value="22">22시</option>
                              <option value="23">23시</option>
                              <option value="24">24시</option>
                           </select>
                        </div> 
                        -->
                     </div>
                     <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                        <!-- 오류 시 텍스트 -->
                        <em class="msgInvalid" id="cyr_msg" >
                        <form:errors path="rcrtSdate" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                        <form:errors path="rcrtEdate" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors>
                        </em>
                     </div>
                  </div>
               </div>
               <div class="items" id="applyMethod">

                  <div class="items" id="job_type">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">지원접수방법</h3>
                     </div>
                     <div class="area_data">
                        <div class="row">
                           <ul class="job_list_check" id="job_type_list">
                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtRectype" id="job_type_13" value="6"
                                       data-help_target="job_type"><label
                                       for="job_type_13" class="Lbl">내일을jOB자</label>
                                    </span>
                                 </div>
                              </li>

                              <li>
                                 <div class="InpBox">
                                    <span class="Chk SizeL"> <input type="radio"
                                       name="rcrtRectype" id="job_type_14" value="7"
                                       data-help_target="job_type"><label
                                       for="job_type_14" class="Lbl">홈페이지접수</label>
                                    </span>
                                 </div>
                              </li>
                           </ul>
                        <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                           <!-- 오류 시 텍스트 -->
                           <em class="msgInvalid" id="cyr_msg" >
                           <form:errors path="rcrtRectype" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                           </em>
                        </div>
                        </div>
                     </div>
                  </div>
                  <div class="items" id="hiringProcedure">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">전형절차</h3>
                     </div>
                     <div class="area_data">
                        <ul class="list_checkbox">
                           <li>
<!--                            히든 여기에...? 순서 -->
<!--                            <input type="hidden" name="rProcedure.rprocOrder"  value="1"> -->
<!--                            <input type="hidden" name="rProcedure.rprocTypeno"  value="RE01"> -->
                           <input type="checkbox" id="show_btn_reference"><label
                              class="lbl ga_data_layer" for="show_btn_reference">서류전형</label>
                           </li>
                        </ul>
                        <div class="items" id="applyPeriod">

                           <div class="area_data">
            
                              <div class="row apply_datetime">
                                 <div class="TypoBox">
                                    <input type="date" id="start_date" name="rProcedure[0].rprocSdate"
                                       class="Typo DatePic SizeL type_calendar"
                                       aria-label="전형 시작일" style="cursor: pointer;"
                                       autocomplete="off">
                                 </div>

                                 ~
                                 <div class="TypoBox">
                                    <input type="date" id="end_date"  name="rProcedure[0].rprocEdate"
                                       class="Typo DatePic SizeL type_calendar"
                                       aria-label="전형 마감일" style="cursor: pointer;"
                                       autocomplete="off">
                                 </div>
                                 <input type="text" name="rProcedure[0].rprocTypeno" value="RE01" />
                                 <input type="text" name="rProcedure[0].rprocOrder" class="clsRprocOrder" value="1">
                              </div>
                              <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                        </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="items doc_additional_all">
                     <div class="area_tit"></div>
                     <div class="area_data">
                        <ul class="list_checkbox">
                           <div class="items" id="applyForm">
                              <div class="area_data" >
                                 <!-- 사람인 이력서 & 자유양식 선택 -->
                              <div  id="proadd">
                              
                              </div>
                                 <button type="button" id="proAddBtn"
                                    class="BtnType SizeM GrayBg btn_add_field btn_recruit_frm ga_data_layer"
                                    data-ga_data_layer="ga_lead|pc_rec_division|btn_add">
                                    추가</button>
                              </div>
                           </div>
                        </ul>
                     </div>
                  </div>
               </div>
         </section>
         <!-- 담당자 정보 -->
         <section id="frmManagerCompany" class="step_recruit">
            <div id="manager">
               <div class="frm_header">
                  <h2 class="tit_step">인사담당자/기업정보</h2>
               </div>
               <div class="frm_body frm_manager">
                  <div class="items" id="manager_nm_area">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">담당자명</h3>
                     </div>
                     <div class="area_data">
                        <span class="manager_name">
                           <div class="TypoBox">
                              <input type="text" id="" name="rcrtNm" value="${recruit.rcrtNm}"
                                 class="Typo SizeL " aria-label="담당자 입력"
                                 placeholder="담당자명" maxlength="30">
                           </div>
                        </span>
                        <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                           <!-- 오류 시 텍스트 -->
                           <em class="msgInvalid" id="cyr_msg" >
                           <form:errors path="rcrtNm" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                           </em>
                        </div>
                     </div>
                  </div>
                  
                  <div class="items" id="manager_tel_area">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">연락처</h3>
                     </div>
                     <div class="area_data">
                        <span class="manager_name">
                           <div class="TypoBox">
                              <input type="text" id="" name="rcrtTel" value="${recruit.rcrtTel}"
                                 class="Typo SizeL " aria-label="연락처 입력"
                                 placeholder="연락처 -제외하고 입력해주세요" maxlength="30">
                           </div>
                        </span>
                        <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                           <!-- 오류 시 텍스트 -->
                           <em class="msgInvalid" id="cyr_msg" >
                           <form:errors path="rcrtTel" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                           </em>
                        </div>
                     </div>
                  </div>
                  <div class="items" id="manager_email_area">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">이메일</h3>
                     </div>
                     <div class="area_data">
                        <div class="manager_email">
                           <div class="TypoBox">
                              <input type="text" id="email" name="rcrtMail" class="Typo SizeL" value="${recruit.rcrtMail}"
                                 aria-label="이메일 주소 입력" placeholder="이메일 주소 입력"
                                 autocomplete="off">
                           </div>
                           <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                           <!-- 오류 시 텍스트 -->
                           <em class="msgInvalid" id="cyr_msg" >
                           <form:errors path="rcrtMail" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                           </em>
                        </div>
                           <div class="wrap_layer">
                              <div class="layer_auto_email">
                                 <ul class="list_email" id="list_email_auto_complete"></ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="items" id="manager_email_area">
                     <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">복리후생</h3>
                     </div>
                     <div class="area_data">
                        <div class="manager_email">
                           <div class="TypoBox">
                              <input type="text" id="text" name="rcrtWlfr" class="Typo SizeL" value="${recruit.rcrtWlfr}"
                                 aria-label="복리후생" placeholder="복리후생 입력"
                                 autocomplete="off">
                           </div>
                              <div class="MsgTxt Invalid _invalid_msg" id="address_lating_msg">
                           <!-- 오류 시 텍스트 -->
                           <em class="msgInvalid" id="cyr_msg" >
                           <form:errors path="rcrtWlfr" element="span" id ="password1_warning_txt" cssClass="errors"   class="alert_column good_txt"></form:errors><br>
                           </em>
                        </div>
                        </div>
                        <span class="check_option">
                           <div class="InpBox">
                              <span class="Chk"> <input type="checkbox"
                                 class="manager_open_fl" id="email_open" value="email_open">
                                 
                              </span>
                           </div>
                        </span>
                     </div>
                  </div>
                  <div class="wrap_bottom_btn">
                     <div class="recruitFormBtn">
                     <button type="submit"
                        class="BtnType SizeML btn_entry_complete btn_next_step ga_data_layer recruitFormBtn"
                        data-ga_data_layer="ga_lead|pc_recruit_step|btn_entry_complete">
                        공고 수정하기</button>
                     </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </div>
   </form:form>
</div>
<script type="text/javascript">

//채용 절차 테스트 선택
function SW_test(pThis){
   console.log("pThis",pThis);

      // 뭔가 바꾸고 싶을 때, 보통 그 부모를 찾은 다음에, 그 부모안에서 필요한 걸 찾아서 바꿈
      let $parentSpan = $(pThis).closest("span");  // 제일 가까운 span 태그 부모

      if( $parentSpan.find("#proSelect").val() == "RE01"){ 
         $parentSpan.find("#testSelect").val("").css("display","none"); 
             //document.getElementById("testSelect").style.display = "none";
      }
      
      if( $parentSpan.find("#proSelect").val() == "RE02"){
         $parentSpan.find("#testSelect").val("").css("display","block"); 
      }

      if( $parentSpan.find("#proSelect").val() == "RE03"){
         $parentSpan.find("#testSelect").val("").css("display","block"); 
      }

      if( $parentSpan.find("#proSelect").val() == "RE04"){
         $parentSpan.find("#testSelect").val("").css("display","none"); 
      }

}


$(function(){
	
	//직무 직업 셀렉트
$("select[name=tjobCode]").on("change",function(event){
		let job = $(this).val();
		let options = $("select[id=jobCode]").find("option");
		$(options).hide();
		$(options).filter((i,e)=>i==0).show();
		if(job){
			$(options).filter(`.\${job}`).show();
		}else{
			$(options).show();
		}
	}).trigger("change") //change

	
	$("select[id=jobCode]").on("change",function(event){

		console.log("체킁2:",this, this.value,);
		
		let apSelect = $("select[id=tjobCode]")[0];
		
		let highLabel=apSelect.options[apSelect.selectedIndex].label;
		
		$("[swHidden]").val(highLabel + "/"+ this.value);
		console.log("체킁3:",$("[swHidden]")[0], $("[swHidden]").val());
		
	}) //change

	
   //우편번호 검색 API
   $('#searchAddressBtn').on('click', function() {

      new daum.Postcode({
         oncomplete : function(data) {
            //document.querySelector("#zip").value = data.zonecode;
            document.querySelector("#address_depth1").value = data.address;
         }
      }).open();
   });//onclick
   
   
//----------------------------------------------------------------------------------
   
   let orderCounter = 1; // 순서를 기억할 변수
   
   //전형절차 추가
   $("#proAddBtn").on('click',function(){
      
      
        orderCounter++; // 버튼이 클릭될 때마다 순서를 증가시킴
        let contextPath = "<%=request.getContextPath()%>";
        let url = contextPath + "/recruit/test";
        
        let makeTrTag =function(dataList){
           let trTags=`
                 <span id="spn`+orderCounter+`">
               <div class="items aa" id="applyPeriod">

               <div class="area_data" id="a">

                  <div class="row apply_datetime">
                     <div class="TypoBox">
                        <input type="date" id="start_date" name="rProcedure[\${orderCounter-1}].rprocSdate"
                           class="Typo DatePic SizeL type_calendar"
                           aria-label="전형 시작일" style="cursor: pointer;"
                           autocomplete="off">
                     </div>
                     ~
                     <div class="TypoBox">
                        <input type="date" id="end_date"  name="rProcedure[\${orderCounter-1}].rprocEdate"
                           class="Typo DatePic SizeL type_calendar"
                           aria-label="전형 마감일" style="cursor: pointer;"
                           autocomplete="off">
                     </div>
                  </div>
               </div>
            </div> 
         <div class="InpBox SizeL form_type ga_data_layer"
                  data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_application"
                  id="af_select_form">
            <select  name="rProcedure[\${orderCounter-1}].rprocTypeno" id="proSelect" onchange="SW_test(this)">
               <option>선택<option>
               <option value="RE02">적성검사<option>
               <option value="RE01">서류전형<option>
               <option value="RE03">기술시험<option>
               <option value="RE04">면접<option>
            </select>
         <select name="rProcedure[\${orderCounter-1}].testNo" id="testSelect" style="display: none" >
         <option>선택<option>
         `;
           $.each(dataList, function(i, test){
//               console.log("test", test.testTitle)
              trTags += `<option value="\${test.testNo}">\${test.testTitle}</option>`
           })
           trTags += `</select>
            <input type="text" name="rProcedure[\${orderCounter-1}].rprocOrder" class="clsRprocOrder" value="\${orderCounter}">
          </div>
             <input type"text" value="\${orderCounter}차" class="clsCha" readonly>
            <button type="button" data-cnt="`+orderCounter+`"
               class="BtnType SizeM GrayBg btn_add_field btn_recruit_frm ga_data_layer proDelBtn"
               data-ga_data_layer="ga_lead|pc_rec_division|btn_add">
               삭제</button>
          </span>
           `;
           
           return trTags;
        }      
        
        
        $.getJSON(url, function(resp) {
            //let testList = resp.testTitle;
            
            trTags = "";

            if (resp.length > 0) {
                  trTags = makeTrTag(resp);
            } else {
               trTags += `
                  <tr>
                     <td>없음</td>
                  </tr>
               `;
            }// if~else end

            // 생성된 <tr> 태그를 HTML 요소에 추가
            $("#proadd").append(trTags);
            
         });// getJSON end
   });//onclick
   
   //전형절차 삭제 버튼   
   $(document).on("click",".proDelBtn", function (event) {
      //data-cnt="4"
      let cnt = $(this).data("cnt");
      $("#spn"+cnt).remove();
//             $(this).closest(".items").remove();
            
        $(".clsCha").each(function(idx){
           $(this).val((idx+2) + "차");
        });
            
        $(".clsRprocOrder").each(function(idx){
           $(this).val(idx+1);
           
           orderCounter = (idx+1);
        });
    });
});//funtion

   
</script>