<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="applicationListWrap">
    <div class="test">
        <div id="sri_section">
            <!-- 메뉴 리스트-->
            <div id="sri_gnb_wrap">
                <ul class="gnb">
                    <li class="only">
                        <a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_14"></use>
                            </svg>
                            <span class="txt"></span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/memberDashBoard.do" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_15"></use>
                            </svg>
                            <span class="txt">MY홈</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/info" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">개인정보관리</span>
                        </a>
                    </li>
                    <!--                     <li class=""> -->
                    <!--                         <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume', '')"> -->
                    <!--                             <svg> -->
                    <!--                                 <use xlink:href="#svg_my_17"></use> -->
                    <!--                             </svg> -->
                    <!--                             <span class="txt">이력서</span> -->
                    <!--                             <button type="button" class="btn_expand"><svg> -->
                    <!--                                     <use xlink:href="#svg_gnb_arrow"></use> -->
                    <!--                                 </svg><span class="blind">더보기</span></button> -->
                    <!--                         </a> -->
                    <!--                         <ul> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/member/resume-manage/write?template_cd=1" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_add', '')"> -->
                    <!--                                     <span class="txt">이력서 등록</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_manage', '')"> -->
                    <!--                                     <span class="txt">이력서 관리</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                         </ul> -->
                    <!--                     </li> -->
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/info" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">이력서 등록</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/resumeList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">이력서 관리</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/scrapList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'scrap', '')">
                            <svg>
                                <use xlink:href="#svg_my_18"></use>
                            </svg>
                            <span class="txt">스크랩/관심기업</span>
                        </a>
                    </li>
                    <li class="only  selected">
                        <a href="<%=request.getContextPath() %>/user/applyList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">입사지원현황</span>
                        </a>
                    </li>
                    <!--                     <li class=""> -->
                    <!--                         <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'interview_schedule', '')"> -->
                    <!--                             <svg> -->
                    <!--                                 <use xlink:href="#svg_my_21"></use> -->
                    <!--                             </svg> -->
                    <!--                             <span class="txt">면접현황</span> -->
                    <!--                             <button type="button" class="btn_expand"><svg> -->
                    <!--                                     <use xlink:href="#svg_gnb_arrow"></use> -->
                    <!--                                 </svg><span class="blind">더보기</span></button> -->
                    <!--                         </a> -->
                    <!--                         <ul> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/member/resume-manage/write?template_cd=1" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_add', '')"> -->
                    <!--                                     <span class="txt">면접일정</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_manage', '')"> -->
                    <!--                                     <span class="txt">면접후기</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                         </ul> -->
                    <!--                     </li> -->
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/interviewScheduleList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">면접일정</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/interviewReviewList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'qna', '')">
                            <svg>
                                <use xlink:href="#svg_my_22"></use>
                            </svg>
                            <span class="txt">면접후기</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/myPage_PointCouponTicketView" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'point', '')">
                            <svg>
                                <use xlink:href="#svg_my_23"></use>
                            </svg>
                            <span class="txt">포인트/쿠폰/이용권</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 메뉴 리스트 끝 -->
            <div id="sri_wrap">
                <div id="content">
                    <div class="wrap_my_apply" id="apply_status_div">
                        <h1 class="wrap_title">입사지원 현황</h1>
                        <ul class="TabBox">
                            <li class="Select"><a href="<%=request.getContextPath() %>/user/applyList" class="BtnType" onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'pc_my_apply','event-flow': 'apply','event-label': ''});}catch(e){}">전체<span class="Badge">${paging.totalRecord }</span></a></li>
                            <li></li>
                        </ul>
                        <div class="wrap_list" id="apply_status_list_div">
                            <!-- 내역숨기기 edit_mode 클래스 추가 -->
                            <div class="status_board">
                                <div class="item  _dashboardDiv ">
                                </div>
                                <div class="item  _dashboardDiv ">
                                </div>
                            </div>
                            <div class="top_btns">
                                <!-- 검색 -->
                                <div class="search_area">
                                    <div id="searchUI" class="row g-3 d-flex justify-content-center">
                                        <div class="col-auto">
                                            <form:select path="simpleCondition.searchType" class="form-select">
                                                <form:option label="전체" value="" />
                                                <form:option value="name" label="기업명" />
                                                <form:option value="title" label="공고제목" />
                                            </form:select>
                                        </div>
                                        <div class="col-auto">
                                            <form:input path="simpleCondition.searchWord" class="form-control" placeholder="키워드를 입력하세요" />
                                        </div>
                                        <div class="col-auto">
                                            <input type="button" value="검색" id="searchBtn" class="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--검색영역-->
                            <form name="list_form" id="list_form">
                                <c:set var="applyList" value="${paging.dataList }" />
                                <c:if test="${empty applyList }">
                                    <div class="no_row">
                                        <p class="txt"><b>입사지원 내역이 없습니다.</b></p>
                                    </div>
                                </c:if>
                                <c:if test="${not empty applyList }">
                                    <c:forEach items="${applyList }" var="apply">
                                        <div class="list_status">
                                            <div class="row _apply_list disabled" id="apply_list_353784296" data-name="박주연" data-recruitapply_idx="353784296" data-layer_check_status="n" data-csn="3052211516" data-rec_idx="46830718" data-company_nm="성호라인 대전지사" data-recruittitle="사무보조 경력무관 채용(아르바이트)" data-rec_division="사무보조" data-logo="" data-is_ai_head_hunting="n" data-jumpit_rec_idx="">
                                                <!-- disabled 추가시 비활성 -->
                                                <div class="InpBox">
                                                    <span class="Chk Hide">
                                                        <input type="checkbox" name="recruitapply_idxs[]" id="chk_353784296" value="353784296" class="_recruitapply_chk">
                                                        <label class="Lbl" for="chk_353784296">선택</label>
                                                    </span>
                                                </div>
                                                <div class="col_date">${apply.procedure_a.aprocDate }</div>
                                                <div class="col_summary">
                                                    <strong class="corp">
                                                        <a href="<%=request.getContextPath() %>/users/companyDetail/${apply.recruit.companyId}" onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'pc_my_apply','event-flow': 'apply','event-label': 'company'});}catch(e){}">
                                                            ${apply.company.companyNm }
                                                        </a>
                                                    </strong>
                                                    <div class="recruit ">
                                                        <span class="division">${apply.recruit.rcrtField }</span>
                                                        <a href="<%=request.getContextPath() %>/recruit/${apply.rcrtNo}" onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'pc_my_apply','event-flow': 'apply','event-label': 'recruit_title'});}catch(e){}">
                                                            <div class="TipBox">
                                                                <span class="">${apply.recruit.rcrtTitle }</span>
                                                                <div class="TipCont TopLeft">
                                                                    <span class="Tail"></span>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="attached">
                                                        <button type="button" class="data _file_down_resume" data-recruitapply_idx="353784296" onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'pc_my_apply','event-flow': 'apply','event-label': 'resume'});}catch(e){}">이력서</button>
                                                    </div>
                                                    <a href="<%=request.getContextPath()%>/users/apply/${apply.rcrtNo}/1">
                                                        지원현황보러가기</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </form>
                            <!-- 페이징 -->
                            <div>
                                <ul>
                                    <li colspan="7" class="jstfyCntntCntr">${paging.pagingHTML }</li>
                                </ul>
                            </div>
                            <form:form modelAttribute="simpleCondition" method="get" id="searchForm">
                                <form:input type="hidden" path="searchType" readonly="readonly" placeholder="searchType" />
                                <form:input type="hidden" path="searchWord" readonly="readonly" placeholder="searchWord" />
                                <input type="hidden" name="page" readonly="readonly" placeholder="page" />
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function fn_paging(page) {
        searchForm.page.value = page;
        searchForm.requestSubmit();
    }

    $(searchUI).on("click", "#searchBtn", function(event) {
        let inputs = $(this).parents("#searchUI").find(":input[name]");
        $.each(inputs, function(idx, ipt) {
            let name = ipt.name;
            let value = $(ipt).val();
            $(searchForm).find(`:input[name=\${name}]`).val(value);
            $(searchForm).submit();
        });
    });
</script>