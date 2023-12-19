
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="scrapListWrap">
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
                        <a href="<%=request.getContextPath() %>/user/resume/new" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
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
                    <li class="only selected">
                        <a href="<%=request.getContextPath() %>/user/scrapList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'scrap', '')">
                            <svg>
                                <use xlink:href="#svg_my_18"></use>
                            </svg>
                            <span class="txt">스크랩/관심기업</span>
                        </a>
                    </li>
                    <li class="only">
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
                        <a href="<%=request.getContextPath() %>/user/interviewReviewList"  onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'qna', '')">
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

            <!-- 메뉴명 -->
            <div id="sri_wrap">
                <div id="content">
                    <div class="wrapper_narrow support_announce">
                        <h1 class="wrap_title">스크랩/관심기업</h1>

                        <!-- 분류 -->
                        <ul class="TabBox">
                            <li class="Select"><a href="<%=request.getContextPath() %>/user/scrapList" class="BtnType" onmousedown="gaEvent('reclist_tab', 'scrap')">
                                    스크랩
                                    <span id="favorTotalCount" class="Badge">${paging.totalRecord }</span>
                                </a></li>
                            <li><a href="<%=request.getContextPath() %>/user/likeCompanyList"" class=" BtnType" onmousedown="gaEvent('reclist_tab', 'favor_company')"> 관심기업
                                </a></li>
                        </ul>
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
                        <!-- 리스트 -->
                        <div class="activity_list basic">
                            <span class="blind">공고 리스트</span>
                            <div class="list_recruit">
                                <c:set var="scrapList" value="${paging.dataList }" />
                                <c:if test="${empty scrapList }">
                                    <div class="empty_data">
                                        <img src="//www.saraminimage.co.kr/sri/person/resume/img_empty_announce.png">
                                        <strong class="tit">스크랩한 공고가 없습니다.</strong>

                                        <a href="<%=request.getContextPath() %>/recruit/region" class="btnText" onmousedown="gaEvent('reclist_scrap', 'recmnd_route_0')">
                                            <span>나에게 맞는 공고 보러가기</span>
                                        </a>
                                    </div>
                                </c:if>
                                <ul>
                                    <c:if test="${not empty scrapList }">
                                        <c:forEach items="${scrapList }" var="scrap">
                                            <li class="row closed" data-idx="46617655" folder-mapping="" value="46617655">
                                                <div class="col_corp">
                                                    ${scrap.scrapDate }
                                                </div>
                                                <div class="col_corp">
                                                    <a href="<%=request.getContextPath() %>/users/companyDetail/${scrap.company.companyId}" class="relay-recruit-view relay-recruit-data">${scrap.company.companyNm }</a>
                                                </div>
                                                <div class="col_informs">
                                                    <strong class="tit"> <a href="<%=request.getContextPath() %>/recruit/${scrap.rcrtNo}" onclick="try{s_trackApply(this, 'scrap', 'generic')}catch(e){}" onmousedown="gaEvent('reclist_scrap', 'rec_item')" class="relay-recruit-view relay-recruit-data">${scrap.recruit.rcrtTitle }</a>
                                                    </strong>
                                                    <ul class="inform">
                                                        <li>${scrap.recruit.rcrtCareer}</li>
                                                        <li>${scrap.recruit.rcrtEdu}</li>
                                                        <c:set var="type" value="${scrap.recruit.rcrtType}" />
                                                        <c:set var="tokens" value="${fn:split(type, ' ')}" />
                                                        <c:set var="shortenedType" value="${tokens[0]}" />
                                                        <li>${shortenedType}</li>
                                                        <c:set var="address" value="${scrap.recruit.rcrtLoc}" />
                                                        <c:set var="tokens" value="${fn:split(address, ' ')}" />
                                                        <c:set var="shortenedAddress" value="${tokens[0]} ${tokens[1]}" />
                                                        <li>${shortenedAddress}</li>
                                                        <br>
                                                        <li>~${scrap.recruit.rcrtEdate}</li>
                                                    </ul>
                                                </div>
                                                <div class="col_btns">
                                                    <!--                                                     <button class="sri_btn_immediately" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('46809760','','t_category=scrap&amp;t_content=generic', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"> -->
                                                    <!--                                                         <span class="btn btn-outline-primary">상세보기</span> -->
                                                    <!--                                                     </button> -->
                                                    <button type="button" onclick="removeScrap('${scrap.rcrtNo }', '${scrap.usersId }')" class="btn btn-outline-dark">삭제</button>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                            </div>
                            <!-- 리스트 끝 -->
                        </div>
                        <!-- 페이징 -->
                        <div>
                            <ul>
                                <li colspan="7">${paging.pagingHTML }</li>
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

    function removeScrap(rcrtNo, usersId) {
        console.log('rcrtNo:', rcrtNo);
        console.log('usersId:', usersId);

        if (confirm('해당 스크랩을 삭제하시겠습니까?')) {
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/user/removeScrap',
                data: {
                    rcrtNo: rcrtNo,
                    usersId: usersId
                },
                contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                success: function(data) {
                    location.reload();
                },
                error: function(error) {
                    console.error('삭제 실패', error);
                }
            });
        }
    }
</script>