<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="interviewReviewListWrap">
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
                <li class="only  selected">
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
        <!-- 메뉴명 -->
        <div id="sri_wrap">
            <div id="content">
                <div class="wrapper_narrow support_announce">
                    <h1 class="wrap_title">면접후기</h1>
                </div>

                <div class="wrap_interview_review">
                    <div class="review_cont">
                        <form name="search_form" autocomplete="off">
                            <input type="hidden" name="my" value="1">
                            <input type="hidden" name="page" value="1">
                            <input type="hidden" name="csn" value="">
                            <input type="hidden" name="group_cd" value="">
						</form>

							<!-- 리스트 -->
                            <div class="list_review">
							<c:set var="reviewList" value="${paging.dataList }" />
							<c:if test="${empty reviewList }">
								<ul>
									<li style="text-align: center;">작성한 면접 후기가 없습니다.</li>
								</ul>
							</c:if>
							<c:if test="${not empty reviewList }">
								<c:forEach items="${reviewList }" var="review">
                                <div class="box_review open" data-ga-label="1">
                                    <div class="view_title">
                                        <strong class="txt_company">
                                            ${review.company.companyNm } 
                                            <span class="result pass">${review.intervPass }</span>
                                        </strong>
                                        <span class="txt_date" id="editLinkContainer">
  <a href="/zf_user/interview-review/write?idx=30681" id="editLink">수정하기</a>
</span>
                                        <ul class="info_interview">
                                            <li>${review.recruit.rcrtField }</li>
                                            <li>${review.interviewSchdVO.intrIntdate }년</li>
                                            <li>1-3년차</li>
                                        </ul>
                                        <button type="button" class="spr_review btn_view"><span class="blind">후기상세보기</span></button>
                                    </div>
                                    <div class="view_cont">
                                        <div class="info_emoticon">
                                            <dl class="review">
                                                <dt>전반적 평가</dt>
                                                <dd class="spr_review smile">${review.intervOvrlEvltn }</dd>
                                            </dl>
                                            <dl class="review difficulty">
                                                <dt>난이도</dt>
                                                <dd class="spr_review">${review.intervDifficulty }</dd>
                                            </dl>
                                            <dl class="review result">
                                                <dt>결과</dt>
                                                <dd class="spr_review smile">${review.intervPass }</dd>
                                            </dl>
                                        </div>
                                        <div class="info_view">
                                            <strong class="tit_view">면접 유형</strong>
                                            <ul class="list_item">
                                                <li>${review.interviewTypical }</li>
                                            </ul>
                                        </div>
                                        <div class="info_view">
                                            <strong class="tit_view">면접 인원</strong>
                                            <ul class="list_item">
                                                <li>${review.intervPersonnel }</li>
                                            </ul>
                                        </div>
                                        <div class="info_view">
                                            <strong class="tit_view">전형 및 면접 진행 방식</strong>
                                            <p class="txt_desc">${review.intervProcess }</p>
                                        </div>
                                        <div class="info_view">
                                            <strong class="tit_view">면접 질문</strong>
                                            <ul class="list_question">
                                                <li>${review.intervQuestion }</li>
                                            </ul>
                                        </div>
                                        <div class="info_view">
                                            <strong class="tit_view">TIP 및 특이사항</strong>
                                            <p class="txt_desc">${review.intervTip }</p>
                                        </div>
                                    </div>
                                    </div>
                                    	</c:forEach>
                                    </c:if>
                                </div>
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
                            <a href="javascript:void(0);" class="spr_review btn_write" onmousedown="try {dataLayer.push({'event': 'ga_lead', 'category': 'review_event', 'event-flow': 'click', 'event-label': 'bottom_add'});} catch (e) {}">후기 등록하기</a>
                    </div>
                    <div class="review_notice">
                        <strong class="tit_notice">안내 및 유의사항</strong>
                        <ul class="list_notice">
                            <li>- 후기 등록 안내<br>
                                ▶ 검수 전에는 ‘내 공유글’에서 내용 수정이 가능합니다.<br>
                                ▶ 검수 후에는 내용 수정 및 삭제가 불가합니다.<br>
                                ▶ 부합하지 않는 글은(욕설/비방/광고성/반복적인 글/허위 사실/기타 취지에 어긋나는 글) 관리자에 의해 통보 없이 삭제될 수 있습니다.
                            </li>
                        </ul>
                    </div>

                    <div class="wrap_recommend_slide type02 hot_slide" id="hot100-top10-list">
                        <div class="box_recommend_slide">
                            <div class="recommend_list">

                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $j(document).ready(function() {
                            var data = JSON.parse('{"t_ref":"interview-review","t_ref_content":"hot100","t_category":"interview-review","t_content":"hot100"}') || {};
                            var paramStr = '';

                            if (Object.keys(data).length > 0) {
                                Object.keys(data).forEach(function(key) {
                                    var prefix = (paramStr !== '') ? '&' : '';
                                    paramStr += prefix + key + '=' + data[key];
                                });
                            }
                            var recIdx = (data.rec_idx !== '' && typeof data.rec_idx !== 'undefined') ? ('-' + data.rec_idx) : '';
                            var params = ((paramStr !== '') ? ('?' + paramStr) : '');
                            var pageCount = recIdx ? 9 : 10; // 공고뷰는 3개씩 보여줘서 9개만 요청

                            $j.ajax({
                                type: 'get',
                                url: '/zf_user/jobs/hot100/get-top10' + params + (((params !== '') ? '&' : '?') + 'page_count=' + pageCount),
                                dataType: 'json',
                                success: function(response) {
                                    if (response.result === 'success') {
                                        $j('#hot100-top10-list' + recIdx).html(response.content);

                                        slideEventBind();
                                    }
                                },
                                fail: function(error) {
                                    console.log(error);
                                }
                            });

                            var slideEventBind = function() {
                                var slideElement = $j('.list_recomm', '#hot100-top10-list' + recIdx);
                                var recruitBox = $j('.recruit_summary_basic', slideElement),
                                    recruitLength = recruitBox.size(),
                                    boxWrap = slideElement.parents('.box_recommend_slide');

                                var box = recruitBox.outerWidth(),
                                    visibleCount = Math.ceil(boxWrap.outerWidth() / box),
                                    btnNext = boxWrap.find('.btn_next'),
                                    btnPrev = boxWrap.find('.btn_prev');

                                if (recruitLength <= visibleCount) {
                                    return;
                                }
                                var num = (recruitLength / visibleCount) - 1,
                                    count = 0,
                                    moving = false,
                                    slideNum = 1,
                                    totalPage = Math.ceil(recruitLength / visibleCount),
                                    term = 1,
                                    totalText = boxWrap.find('.slide_total');

                                totalText.html(totalPage);
                                slideElement.css('width', (box * recruitLength) + (term * (recruitLength)));
                                btnNext.addClass('on');

                                function toggleInert(slides, count, visibleCount) {
                                    slides.
                                    filter(function(idx, el) {
                                            return idx >= count * visibleCount && idx < (count + 1) * visibleCount;
                                        })
                                        .attr(`aria-hidden`, `false`)
                                        .find('[inert]')
                                        .removeAttr('tabindex')
                                        .prop({
                                            inert: false,
                                        });
                                    slides.
                                    filter(function(idx, el) {
                                            return idx < count * visibleCount || idx >= (count + 1) * visibleCount;
                                        })
                                        .attr(`aria-hidden`, `true`)
                                        .find('button, [href]:not(use), input, select, textarea, [tabindex]:not([tabindex="-1"])')
                                        .attr({
                                            'tabindex': '-1',
                                        })
                                        .prop({
                                            inert: true,
                                        })
                                }

                                boxWrap.on('keydown', function(event) {
                                    var keycode = event.keyCode;
                                    switch (keycode) {
                                        case 37:
                                            count !== 0 && btnPrev.click();
                                            break;
                                        case 39:
                                            count !== num && btnNext.click();
                                            break;
                                    }
                                })

                                btnNext.on('click', function(event) {
                                    var isKeyEvent = !event.details;
                                    btnPrev.show();
                                    if (moving) {
                                        return false;
                                    }
                                    moving = true;
                                    slide(1);
                                    if (count >= Math.ceil(num)) {
                                        $j(this).hide();
                                        isKeyEvent && btnPrev.focus();
                                    }
                                });

                                btnPrev.on('click', function() {
                                    var isKeyEvent = !event.details;
                                    btnNext.show();
                                    if (moving) {
                                        return false;
                                    }
                                    moving = true;
                                    slide(-1);
                                    if (count === 0) {
                                        $j(this).hide();
                                        isKeyEvent && btnNext.focus();
                                    }
                                });

                                var slide = function(dir) {
                                    count = count + dir;
                                    var leftValue = ((box * (visibleCount - 1)) * -count) - (term * visibleCount * -count) + (count > 0 ? -1 : 0) + 'px';
                                    if (recIdx !== '') {
                                        leftValue = ((box * visibleCount - 1) * -count) - (term * visibleCount * -count) + 'px';
                                    }
                                    slideElement.stop().animate({
                                        left: leftValue
                                    }, {
                                        complete: function() {
                                            moving = false;
                                            toggleInert(recruitBox, count, visibleCount);
                                        }
                                    });
                                    slideNum = slideNum + dir;
                                    boxWrap.find('em').html(slideNum);
                                };

                                toggleInert(recruitBox, count, visibleCount);
                            }
                        });
                    </script>
                </div>
                <script>
                    var _init = true;

                    $j(function() {
                        $j('select[name=orderby], select[name=career_cd], select[name=job_category]').change(function() {
                            getList(1);
                        });

                        $j('.btnTypoSearch').click(function() {
                            getList(1);
                        });

                        $j('.btnTypoReset').click(function() {
                            $j('select[name=orderby]').val('registration');
                            $j('select[name=job_category]').val('');
                            $j('select[name=career_cd]').val('');
                            $j('input[name=company_nm]').val('');
                        });

                        $j('input[name=company_nm]').keyup(function(e) {
                            if (e.keyCode == 13) {
                                getList(1);
                            }
                        });

                        $j('.wrap_interview_review').on('click', '.btn_view', function() {
                            $j('.box_review').not($j(this).closest('.box_review')).removeClass('open');
                            $j(this).closest('.box_review').toggleClass('open');
                            if ($j(this).closest('.box_review').hasClass('open')) {
                                $j('html, body').stop().animate({
                                    scrollTop: ($j(this).offset().top) - 100
                                }, 500);
                            }
                        });

                        $j('.btn_review_write, .btn_write').click(function() {
                            if (!isPersonLogin) {
                                Saramin.showQuickLogin();
                                return false;
                            }
                            location.href = '/zf_user/interview-review/write';
                        });

                        $j('.pagination').find('.page').mousedown(function() {
                            pushDataLayer('ga_lead', 'review_event', 'review_list', 'paging');
                        });

                        $j('.box_review').mousedown(function() {
                            var label = $j(this).data('ga-label');
                            pushDataLayer('ga_lead', 'review_event', 'review_list', label);
                        });
                    });

                    function getList(page) {
                        if ($j('select[name=job_category]').val() || $j('select[name=career_cd]').val() || $j('input[name=company_nm]').val()) {
                            $j('input[name=csn]').val('');
                        }

                        if ($j('input[name=company_nm]').val()) {
                            $j('input[name=group_cd]').val('');
                        }
                        $j('input[name=page]').val(page);
                        $j('form[name=search_form]').submit();
                    }

                    function popupRefresh(url) {
                        window.open(url, '_blank');
                        $j(window).focus(function() {
                            location.reload();
                        });
                        $j(window).blur();
                    }
                </script>
                <div id="div-gpt-ad-1400664864294-11-wrapper" class="google-adsense doctype">
                    <div class="google-standby-banner">
                    </div>
                    <div id="div-gpt-ad-1400664864294-11-inner" style="display: none;">
                        <div id="div-gpt-ad-1400664864294-11" data-google-query-id="CJOB5Pu79IIDFdVOwgUdMqMCmg">
                            <script type="text/javascript">
                                googletag.cmd.push(function() {
                                    googletag.display('div-gpt-ad-1400664864294-11');
                                });
                            </script><iframe src="https://85af0273673ac7375f6bfab60f940033.safeframe.googlesyndication.com/safeframe/1-0-40/html/container.html" style="visibility: hidden; display: none;"></iframe>
                            <div id="google_ads_iframe_/61280259/etc_728x90_0__container__" style="border: 0pt none; width: 728px; height: 0px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>
  // Assuming review.intervApproval is a variable holding the approval status
  var approvalStatus = "${review.intervApproval}";

  // Check if the approval status is 'W' (assuming case-sensitive comparison)
  if (approvalStatus !== 'W') {
    // If the approval status is not 'W', hide the edit link container
    document.getElementById('editLinkContainer').style.display = 'none';
  }
</script>