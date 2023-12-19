<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="likeCompanyWrap">
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
                            <li><a href="<%=request.getContextPath() %>/user/scrapList"" class=" BtnType" onmousedown="gaEvent('reclist_tab', 'scrap')"> 스크랩
                                </a></li>
                            <li class="Select">
                                <a href="<%=request.getContextPath() %>/user/likeCompanyList" class="BtnType" onmousedown="gaEvent('reclist_tab', 'favor_company')"> 관심기업
                                    <span id="favorTotalCount" class="Badge">${paging.totalRecord }</span>
                                </a></li>
                        </ul>
                        <div class="top_btns">
                            <div class="align">
                            </div>
                            <!-- 검색 -->
                            <div class="search_area">
                                <div id="searchUI" class="row g-3 d-flex justify-content-center">
                                    <div class="col-auto">
                                        <form:input path="simpleCondition.searchWord" class="form-control" placeholder="기업명을 입력하세요" />
                                    </div>
                                    <div class="col-auto">
                                        <input type="button" value="검색" id="searchBtn" class="btn btn-primary" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 리스트 -->
                        <div class="tblType">
                            <span class="blind">공고 리스트</span>
                            <div class="list_recruit">
                                <table>
                                    <thead>
                                        <tr>
                                            <th style="width: 150px;">번호</th>
                                            <th>기업명</th>
                                            <th>업종</th>
                                            <th>관심 등록일자</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:set var="likeCompanyList" value="${paging.dataList }" />
                                        <c:if test="${empty likeCompanyList }">
                                            <tr>
                                                <td colspan="5">
                                                    <div class="empty_data">
                                                        <img src="//www.saraminimage.co.kr/sri/person/resume/img_empty_announce.png">
                                                        <strong class="tit">설정한 관심기업이 없습니다.</strong>
                                                        <a href="" class="btnText" onmousedown="gaEvent('reclist_favor_company', 'recmnd_route_0')"><span>기업정보 보러가기</span></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${not empty likeCompanyList }">
                                            <c:forEach items="${likeCompanyList }" var="like">
                                                <tr>
                                                    <td class="num">
                                                        ${like.rnum } </a>
                                                    </td>
                                                    <td class="name">
                                                        <a href="<%=request.getContextPath()%>/users/companyDetail/${like.companyId}">
                                                            ${like.company.companyNm } </a>
                                                    </td>
                                                    <td class="num">
                                                        ${like.comInfo.industryNm } </a>
                                                    </td>
                                                    <td>${like.interDate }</td>
                                                    <td class="btnBx">
                                                        <button type="button" onclick="removeLikeCompany('${like.companyId}', '${like.usersId}')" class="btn btn-outline-dark">삭제</button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- 리스트 끝 -->
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

    function removeLikeCompany(companyId, usersId) {
        if (confirm('해당 관심기업을 삭제하시겠습니까?')) {
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/user/removeLikeCompany',
                data: {
                    companyId: companyId,
                    usersId: usersId
                },
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