<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<div class="wrap_recruit_frm">
    <div class="wrap_step_recruit">
        <!-- 공고 기본설정-->
        <section id="frmRecType" class="step_recruit">
    <div class="frm_header">
        <h2 class="tit_step">공고 기본 설정</h2>
        <div class="notice_right"><em class="required">*</em> 필수항목</div>
    </div>
    <div class="frm_body frm_rec_type">
            <div class="title_recruit" style="display: block;">
                <button type="button" class="btn_recruit ga_data_layer" data-ga_data_layer="ga_lead|pc_recruit_progressbar|btn_title" id="btn_title_recruit_layer">기존 등록했던 공고를 불러올 수 있습니다.</button>
        <div class="layer_recruit">
            <div class="area_scroll ScrollBar">
                <ul class="list_recruit" id="existing_recruit_list" data-speed_matching="n">
                                                        <li data-rec_idx="46631032" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> [정부지원사업 관리 및 경영지원 업무] <span class="date">09-21</span></a></li>
                                        <li data-rec_idx="46517748" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> 총무팀 사무보조 사원 모집 <span class="date">09-05</span></a></li>
                                        <li data-rec_idx="46400678" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> [정부지원사업 관리 및 경영지원 업무] <span class="date">08-21</span></a></li>
                                        <li data-rec_idx="46464893" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용(간편)</span> 데이터분석가 채용모집합니다. (1명) <span class="date">08-29</span></a></li>
                                        <li data-rec_idx="46464862" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용(간편)</span> 3D모델링 및 개발자 채용모집합니다. (1명) <span class="date">08-29</span></a></li>
                                        <li data-rec_idx="46181026" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> 시각디자이너,마케팅디자이너 모집 <span class="date">07-19</span></a></li>
                                        <li data-rec_idx="44079810" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용(간편)</span> [경력] 웹디자이너 채용 <span class="date">09-27</span></a></li>
                                        <li data-rec_idx="43631517" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용(간편)</span> [경력] 웹디자이너 채용 <span class="date">07-27</span></a></li>
                                        <li data-rec_idx="43080638" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> [신입·경력] 편집/그래픽 디자이너 채용 <span class="date">05-18</span></a></li>
                                        <li data-rec_idx="41961401" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> [반·디·콘전문가 인력양성사업] 데이터 정제 작업 직원 모집 <span class="date">12-29</span></a></li>
                                        <li data-rec_idx="40995907" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> 총무·법무·사무(사무/총무外 1개 부문) 모집합니다 <span class="date">08-24</span></a></li>
                                        <li data-rec_idx="39920740" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> 고등/대학생 대상 영어 콘텐츠 제작 (6개월 계약직) <span class="date">03-31</span></a></li>
                                        <li data-rec_idx="39773647" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> 웹디자인 정규직 모집 공고(경력무관) <span class="date">03-10</span></a></li>
                                        <li data-rec_idx="39181142" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> 시각디자인 정규직 모집 공고(경력무관) <span class="date">11-30</span></a></li>
                                        <li data-rec_idx="38681877" data-rec_type_cd="rtc001"><a href="javascript:void(0)"><b class="status end">마감</b> <span class="type">일반채용</span> [경력, 신입] 프론트엔드&amp;Java·JSP&amp;PHP&amp;HTML 정규직 채용 공고 <span class="date">08-27</span></a></li>
                                                    </ul>
            </div>
        </div>
    </div>
        <div class="items">
    <div class="area_tit">
        <em class="required">*</em>
        <h3 class="tit">양식 선택</h3>
    </div>
    <div class="area_data">
                    <ul class="list_checkbox recruit_type">
                                        <li class="ga_data_layer" data-ga_data_layer="ga_lead|pc_rec_form|dtn_template_1">
                            <input type="radio" id="rtc00110" name="rec_type" value="rtc001" data-template-cd="10">
                            <div class="TipBox Click">
                                <label for="rtc00110" class="lbl">간편 공고                                                                            <span class="rec_recommend">AI 자동 생성</span>
                                                                    </label>
                                <div class="TipCont BottomCenter" style="display: none;">
                                    <span class="Tail"><svg class="icon_tail"><use xlink:href="#TipBox_tail"></use></svg></span>
                                    <div class="TipTxt">
                                                                                    <!-- 간편 공고 일때 -->
                                            <p class="tit">쉽고 간편하게 공고 생성 가능!</p>
                                            채용하고 싶은 직무를 입력하면 사람인 AI가 공고 본문을
                                            만들어드려요~!
                                                                            </div>
                                </div>
                            </div>
                        </li>
                                            <li class="ga_data_layer" data-ga_data_layer="ga_lead|pc_rec_form|dtn_template_2">
                            <input type="radio" id="rtc0010" name="rec_type" value="rtc001" data-template-cd="0" checked="">
                            <div class="TipBox Click">
                                <label for="rtc0010" class="lbl">템플릿 공고                                                                    </label>
                                <div class="TipCont BottomCenter" style="display: none;">
                                    <span class="Tail"><svg class="icon_tail"><use xlink:href="#TipBox_tail"></use></svg></span>
                                    <div class="TipTxt">
                                                                                    <!-- 템플릿 공고 일때 -->
                                            <p class="tit">공고 작성이 익숙하지 않은 분께 추천!</p>
                                            항목에 맞는 답변만 작성하면 공고가 템플릿에 맞게 만들어져요.
                                                                            </div>
                                </div>
                            </div>
                        </li>
                                                </ul>
            </div>
</div>        <div class="items" id="recruit_title">
    <div class="area_tit">
        <em class="required">*</em>
        <h3 class="tit">공고 제목</h3>
        <div class="TipBox">
            <button type="button" class="ico_question"><svg><use xlink:href="#ico_question"></use></svg><span class="blind">도움말</span></button>
            <div class="TipCont TopCenter">
                <span class="Tail"><svg class="icon_tail"><use xlink:href="#TipBox_tail"></use></svg></span>
                <div class="TipTxt">
                    내부 공고관리 규정에 위배되는 채용제목을 입력 시,<br>별도 안내 없이 수정 또는 변경될 수 있습니다.
                </div>
            </div>
        </div>
    </div>
    <div class="area_data">
        <div class="template_title">
                        <div class="tip_position">
                <div class="TipBox">
                    <div class="TipCont BottomLeft">
                        <span class="Tail"><svg class="icon_tail"><use xlink:href="#TipBox_tail_side"></use></svg></span>
                        <div class="TipTxt">
                            <strong>구직자를 사로잡는 공고 제목 작성법 (예시)</strong>
                            <p class="txt">
                                - 경영기획실 IR 담당 경력사원(전사회계 우대)<br>
                                - UX 디자인팀 일러스트레이터 경력자 모집<br>
                                - 건설 현장직 현장사무소 소장급 모집
                            </p>
                        </div>
                    </div>
                </div>
            </div>
                        <div class="TypoBox">
                <input type="text" class="Typo SizeL" id="title" aria-label="공고 제목" placeholder="직무명이 포함된 공고 제목을 지원자들이 선호해요. (ex. 하반기 기계조작원 신입채용)">
            </div>
        </div>
        <div class="MsgTxt Invalid" style="display:none;">공고 제목을 입력해주세요.</div>
    </div>
</div>    </div>
</section>
        <!-- 모집분야 -->
        <section id="frmDivision" class="step_recruit">
    <div class="frm_header">
        <h2 class="tit_step">모집분야</h2>
        <div class="frm_set">
            <button type="button" class="BtnType SizeM GrayBg btn_add_field btn_recruit_frm ga_data_layer" data-ga_data_layer="ga_lead|pc_rec_division|btn_add">모집분야 추가
            </button>
            <div class="btn_box">
                <button class="BtnType SizeM GrayInvert btn_order btn_down_first" data-seq="0" title="한칸 아래로 이동" style="display: none;">
                    <svg class="BtnIcon">
                        <use xlink:href="#ico_down_black"></use>
                    </svg>
                    <span class="blind">한칸 아래로 이동</span>
                </button>

            </div>
        </div>
    </div>
    <div class="frm_body frm_division">
        <div class="items" id="jobCategory">
    <div class="area_tit">
        <em class="required">*</em>
        <h3 class="tit">직무·직업</h3>
        <!-- 툴팁 -->
        <div class="TipBox">
            <button type="button" class="ico_question"><svg><use xlink:href="#ico_question"></use></svg><span class="blind">도움말</span></button>
            <div class="TipCont TopLeft">
                <span class="Tail"><svg class="icon_tail"><use xlink:href="#TipBox_tail_side"></use></svg></span>
                <div class="TipTxt">
                    선택한 값에 따라 직무/직업 섹션 페이지에 노출되며, <br>구직자가 해당 키워드로 검색시 공고가 노출됩니다.
                    <br>직무와 무관한 키워드 직접입력 시 삭제될 수 있습니다.<p></p>
                </div>
            </div>
        </div>
    </div>
    <div class="area_data">
        <div class="selected_item">
            <div class="selected_item_box">
                <p class="txt_placeholder">대표 직무·직업 선택</p>
                <ul class="list_selected_item"></ul>
            </div>
            <button type="button" class="BtnType SizeL BlueInvert btn_add"><svg class="BtnIcon"><use xlink:href="#ico_btn_plus"></use></svg>선택</button>
        </div>
        <div class="MsgTxt Invalid" style="display: none;">직무·직업을 선택해주세요.</div>
    </div>
</div>        <div id="recDivisionRestrictToolTip" class="wrap_tip"><!-- 아래 툴팁이 나와야 할 상황에 클래스 on 추가 -->
            <div class="TipBox Click">
                <div class="TipCont BottomRight">
                    <span class="Tail"><svg class="icon_tail"><use xlink:href="#TipBox_tail_side"></use></svg></span>
                    <div class="TipTxt">
                        2개 이상 모집분야 등록시<br>공고가 바로 <em class="highlight">게재되지 않습니다.</em> (대기중)
                    </div>
                    <button type="button" class="BtnClose"><span class="blind">닫기</span></button>
                </div>
            </div>
        </div>
        <ul class="list_division list_recruit_frm" id="list_recruit_division">
    <li class="division_line_detail  expand" id="line_detail_0" data-seq="0">
        <div class="">
            <div class="frm_header" style="display: none;">
                <h2 class="tit_step">모집분야1</h2>
                <div class="frm_set">
                    <div class="btn_box">
                        <button class="BtnType SizeM GrayInvert btn_order btn_up" data-seq="0" title="한칸 아래로 이동" style="display: none;">
                            <svg class="BtnIcon">
                                <use xlink:href="#ico_down_black"></use>
                            </svg>
                            <span class="blind">한칸 아래로 이동</span>
                        </button>
                        <button class="BtnType SizeM GrayInvert btn_order btn_down" data-seq="0" title="한칸 위로 이동" style="display: flex;">
                            <svg class="BtnIcon">
                                <use xlink:href="#ico_up_black"></use>
                            </svg>
                            <span class="blind">한칸 위로 이동</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="summary">
                <div class="items">
                    <div class="area_tit" id="recruit_division_title_area_0">
                        <em class="required">*</em>
                        <h3 class="tit">모집분야명</h3>
                    </div>
                    <div class="area_data">
                        <input type="hidden" id="original_title_0" value="">
                        <div class="division_name" id="division_name_area_0" data-seq="0">
                            <div class="TypoBox">
                                <span class="label_end_time" style="display: none;">마감</span>
                                <input type="text" id="recruitment_title_0" class="Typo SizeL recruitment_title" data-seq="0" data-help_target="display_division" value="" aria-label="모집분야명" placeholder="모집분야명 입력 (ex. 디지털 마케팅, 그래픽 디자인, 경영지원 등)" maxlength="30">
                            </div>
                            <div class="MsgTxt Invalid invalid_msg_title _invalid_msg_title_0" style="display:none;"></div>
                            <div class="MsgTxt Invalid _invalid_msg_whole_tab_0" id="invalid_msg_whole_msg_0" style="display:none"></div>
                        </div>
                        <div class="area_frm_btn">
                            <button type="button" class="BtnType SizeL GrayBg btn_end chg_state_btn ga_data_layer" id="chg_state_btn_0" data-seq="0" data-btn-state="delete-tmp" data-recruitment-seq="" data-ga_data_layer="ga_lead|pc_rec_division|btn_delete" title="모집분야 삭제" style="display: none;">삭제</button>
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
                                <input type="text" id="collect_cnt_0" class="Typo SizeL collect_cnt _filter" aria-label="모집인원" placeholder="ex) 00명" name="collect_cnt" data-filter="numeric" data-help_target="collect_cnt" value="0" maxlength="6">
                            </div>
                            명 모집
                        </span>
                        <div class="MsgTxt Invalid _invalid_msg_collect_0" style="display:none;">모집인원을 입력해주세요.</div>
                    </div>
                </div>
                <div class="items">
                    <div class="area_tit">
                        <em class="required">*</em>
                        <h3 class="tit">경력</h3>
                    </div>
                    <div class="area_data type_txt">
                        <div class="InpBox"><span class="Chk SizeL career_cd_0"><input type="checkbox" id="career_cd_0_1" value="0_1" data-help_target="hope_career"><label class="Lbl" for="career_cd_0_1">신입</label></span></div>
                        <div class="InpBox"><span class="Chk SizeL career_cd_0"><input type="checkbox" id="career_cd_0_2" value="0_2" data-help_target="hope_career"><label class="Lbl" for="career_cd_0_2">경력</label></span></div>
                        <div class="InpBox"><span class="Chk SizeL career_cd_0"><input type="checkbox" id="career_cd_0_0" value="0_0" data-help_target="hope_career"><label class="Lbl" for="career_cd_0_0">경력무관</label></span></div>
                        <div class="InpBox"><span class="Chk SizeL career_cd_sub_0_0" style="display:none"><input type="checkbox" class="freshman_can_apply" id="freshman_can_apply_0" value="y"><label class="Lbl" for="freshman_can_apply_0">신입 지원 가능</label></span></div>
                        <em class="MsgTxt Invalid _invalid_msg_career_0" style="display:none;">경력을 선택해주세요.</em>
                        <div class="career_check career_cd_sub_2_0" data-sub-for="0_2" style="display:none;">
                            <div class="InpBox SizeL">
                                <select class="career_period" id="career_min_0" name="career_min_0" data-seq="0">
                                    <option value="">선택</option>
                                                                            <option value="1">1년 이상</option>
                                                                            <option value="2">2년 이상</option>
                                                                            <option value="3">3년 이상</option>
                                                                            <option value="4">4년 이상</option>
                                                                            <option value="5">5년 이상</option>
                                                                            <option value="6">6년 이상</option>
                                                                            <option value="7">7년 이상</option>
                                                                            <option value="8">8년 이상</option>
                                                                            <option value="9">9년 이상</option>
                                                                            <option value="10">10년 이상</option>
                                                                            <option value="11">11년 이상</option>
                                                                            <option value="12">12년 이상</option>
                                                                            <option value="13">13년 이상</option>
                                                                            <option value="14">14년 이상</option>
                                                                            <option value="15">15년 이상</option>
                                                                            <option value="16">16년 이상</option>
                                                                            <option value="17">17년 이상</option>
                                                                            <option value="18">18년 이상</option>
                                                                            <option value="19">19년 이상</option>
                                                                            <option value="20">20년 이상</option>
                                                                    </select>
                            </div> ~
                            <div class="InpBox SizeL">
                                <select class="career_period" id="career_max_0" name="career_max_0" data-seq="0">
                                    <option value="">선택</option>
                                                                            <option value="1">1년 이하</option>
                                                                            <option value="2">2년 이하</option>
                                                                            <option value="3">3년 이하</option>
                                                                            <option value="4">4년 이하</option>
                                                                            <option value="5">5년 이하</option>
                                                                            <option value="6">6년 이하</option>
                                                                            <option value="7">7년 이하</option>
                                                                            <option value="8">8년 이하</option>
                                                                            <option value="9">9년 이하</option>
                                                                            <option value="10">10년 이하</option>
                                                                            <option value="11">11년 이하</option>
                                                                            <option value="12">12년 이하</option>
                                                                            <option value="13">13년 이하</option>
                                                                            <option value="14">14년 이하</option>
                                                                            <option value="15">15년 이하</option>
                                                                            <option value="16">16년 이하</option>
                                                                            <option value="17">17년 이하</option>
                                                                            <option value="18">18년 이하</option>
                                                                            <option value="19">19년 이하</option>
                                                                            <option value="20">20년 이하</option>
                                                                    </select>
                            </div>
                            <div class="InpBox"><span class="Chk SizeL"><input type="checkbox" class="no_matter_work_year" id="no_matter_work_year_0"><label class="Lbl" for="no_matter_work_year_0">연수무관</label></span></div>
                        </div>
                        <div class="MsgTxt Invalid _invalid_msg_career_sub_0" style="display:none;">경력 연수를 선택해주세요.</div>
                    </div>
                </div>
                <input type="hidden" id="assign_task_nm_0" value="" style="height: 0px;"> <!-- 담당업무 삭제 -->
                <div class="items">
                    <div class="area_tit">
                        <h3 class="tit">항목 추가</h3>
                    </div>
                    <div class="area_data etc_items">
                        <ul class="list_checkbox">
                            <li>
                                <input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0"><label class="lbl ga_data_layer" for="workpost_chk_0" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_department">근무부서</label>
                            </li>
                            <li>
                                <input type="checkbox" class="job_grade_chk" id="job_grade_chk_0" value="0"><label class="lbl ga_data_layer" for="job_grade_chk_0" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_job_grade">직급직책</label>
                            </li>
                            <li>
                                <input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0"><label class="lbl ga_data_layer" for="preferential_chk_0" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_preferred">필수/우대조건</label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="division_detail">
                    <!-- 근무부서 체크 시 노출 -->
                    <div class="items option" id="workpost_detail_0" style="display:none;">
                        <div class="area_tit">
                            <h4 class="tit">근무부서</h4>
                        </div>
                        <div class="area_data">
                            <div class="TypoBox">
                                <input type="text" id="work_dept_nm_0" value="" name="work_dept_nm" class="Typo SizeL work_dept_nm" aria-label="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력" maxlength="60" data-help_target="workpost">
                            </div>
                        </div>
                    </div>
                    <!-- 직급직책 체크 시 노출 -->
                    <div class="items option" id="job_grade_detail_0" style="display:none;">
                        <div class="area_tit">
                            <h4 class="tit">직급직책</h4>
                        </div>
                        <div class="area_data">
                            <div class="selected_item" id="job_grade_summary_0">
                                <div class="selected_item_box">
                                    <p class="txt_placeholder">직급직책 선택</p>
                                    <ul class="list_selected_item" id="job_grade_frm_box_list_0" data-seq="0"></ul>
                                </div>
                                <button type="button" class="BtnType SizeL BlueInvert btn_add job_grade_setting_btn" id="job_grade_0_setting_btn" data-seq="0">
                                    <svg class="BtnIcon"><use xlink:href="#ico_btn_plus"></use></svg>선택
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- 필수/우대조건 체크 시 노출 -->
                    <div class="items option preferential" id="preferential_detail_0" style="display:none;">
                        <div class="area_tit pt5">
                            <h4 class="tit">필수/우대조건</h4>
                        </div>
                        <div class="area_data">
                            <div class="list_recommend">
                                <strong class="tit">추천</strong>
                                <ul>
                                    <li><input type="checkbox" class="major_recommend" id="maj024_0" value="maj024" data-text="공학계열"><label for="maj024_0">#공학계열</label></li>
                                    <li><input type="checkbox" class="preference_recommend" id="pre043_0" value="pre043" data-text="해당직무 근무경험"><label for="pre043_0">#해당직무 근무경험</label></li>
                                    <li><input type="checkbox" class="preference_recommend" id="pre026_0" value="pre026" data-text="인근거주자"><label for="pre026_0">#인근거주자</label></li>
                                    <li><input type="checkbox" class="language_recommend" id="7453_0" value="7453" data-text="TOEIC"><label for="7453_0">#TOEIC </label></li>
                                </ul>
                            </div>
                            <div class="selected_preference" id="preference_summary_0">
                                <div class="area_bottom">
                                    <p class="txt_placeholder">보유역량, 자격증, 외국어, 전공학과 등 우대사항 선택</p>
                                    <ul class="list_preference" id="require_preference_frm_box_list_0"></ul>
                                </div>
                                <button type="button" class="BtnType SizeL BlueInvert btn_add btn_more_ly_essential_preference ga_data_layer" data-seq="0" data-ga_data_layer="ga_lead|pc_rec_division|layer_preferred"><svg class="BtnIcon"><use xlink:href="#ico_btn_plus"></use></svg> 선택</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </li>
</ul>
    </div>
    <em class="MsgTxt Invalid" style="display: none;">모집분야는 최대 5개까지 등록 가능합니다.</em>
</section>
        
        
        
        
        
        
        
        
        
            </div>

    
    
    
    </div>


<div class="wrap_recruit_frm">
    <div class="wrap_step_recruit">
        
        
        <!-- 등록 완료 버튼 -->
        <div class="wrap_bottom_btn">
    <div class="TipBox">
        
    </div>
    <button type="button" class="BtnType SizeML btn_entry_complete btn_next_step ga_data_layer" data-ga_data_layer="ga_lead|pc_recruit_step|btn_entry_complete">공고 등록하기</button>
</div>    </div>
</div>