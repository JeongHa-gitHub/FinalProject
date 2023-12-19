<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="resumeListWrap">
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
                     <li class="only selected">
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
                    <div class="wrapper_narrow resume_manage_wrap">
                        <h1 class="wrap_title">이력서 관리</h1>
                        <div class="resume_list_wrap">
                            <input type="hidden" id="profile_layer" value="n">
                            <input type="hidden" id="profile_apply_rec_idx" value="0">
                            <div class="desc">
        						<a href="<%=request.getContextPath() %>/user/resume/new" class="BtnType SizeM btn_action" data-action="write">이력서 작성</a>
    						</div>
                            <!-- 이력서 리스트 -->
                            <div class="title_wrap">
                                <h3 class="blind">이력서 리스트</h3>
                                <strong class="list_count">총 <span id="list_count_txt"><b>${paging.totalRecord }</b></span>건</strong>
                            </div>
                            <ul class="list_manage_resume">
                                <c:set var="resumeList" value="${paging.dataList }" />
                                <c:if test="${empty resumeList }">
                                    <ul>
                                        <li style="text-align: center;">등록된 이력서가 없습니다.</li>
                                    </ul>
                                </c:if>
                                <c:if test="${not empty resumeList }">
                                    <c:forEach items="${resumeList }" var="resume">
                                        <li class="resume_item ">
                                            <input type="hidden" name="res_idx" value="20833944" id="res_idx"> <input type="hidden" name="res_type" value="saramin" id="res_type"> <input type="hidden" name="expired_exam" value="" id="expired_exam"> 
                                            <a href="<%=request.getContextPath() %>/user/resume/${resume.resumeNo}" class="tit btn_action" data-action="view">
                                                <span>${resume.resumeTitle }</span> </a>
                                            <ul class="option_list type_02">
                                                <li>
                                                    <span class="date">${resume.resumeDate }</span>
                                                </li>
                                            </ul>
                                            <ul class="control_group">
                                                <li class="control">
                                                	<a href="<%=request.getContextPath() %>/user/resume/${resume.resumeNo}/edit" class="BtnType SizeM btn_action ga_event">수정하기</a>
                                                    <button type="button" onclick="removeResume('${resume.resumeNo}')" class="BtnType SizeM btn_action ga_event">삭제하기</button>
                                                </li>
                                            </ul>
                                            <span class="InpBox TxtType SizeXS position_select">

                                            </span>
                                            <div class="memo_box empty">

                                            </div>
                                        </li>
                                    </c:forEach>
                                </c:if>
                            </ul>
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

    function removeResume(resumeNo) {
        console.log('resumeNo:', resumeNo);

        if (confirm('해당 이력서를 삭제하시겠습니까?')) {
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/user/removeResume',
                data: {
                    resumeNo: resumeNo
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