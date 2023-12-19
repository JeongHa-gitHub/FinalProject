<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<div class="test" class="memberDashBoardWrap">
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
                    <li class="only selected">
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
</div>
</div>
</div>
