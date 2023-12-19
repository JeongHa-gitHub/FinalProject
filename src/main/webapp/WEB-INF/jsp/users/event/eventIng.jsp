<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!--이벤트 Modal 시작 -->
<!-- Modal -->
<div class="modal fade" id="mModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">알림</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        종료된 이벤트입니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
<!--         <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>
<!--이벤트 Modal 끝 -->
<div id="sri_section" class="has_banner noticeListWrap">
        <div id="sri_wrap">
            <div id="content">
                <div class="wrap_title_recruit">
    <h1 class="title_common">공지·이벤트</h1>
</div>
<div class="navigation_help_depth2">
    
</div>
<div class="navigation_help_depth3">
   <ul>
					<li><a class="" href="<%=request.getContextPath() %>/member/noticeList"
						data-nav-track="ga_lead|section-gnb|help|notice_notice"><span>공지사항</span></a></li>
					<li><a class="" href="<%=request.getContextPath() %>/member/qnaList"
						data-nav-track="ga_lead|section-gnb|help|notice_event"><span>1:1문의</span></a></li>
					<li><a class="selected" href="<%=request.getContextPath()%>/eventIng.do"
						data-nav-track="ga_lead|section-gnb|help|notice_event"><span>이벤트</span></a></li>
				</ul>
</div>
<div class="navigation_help_depth2">
    
</div>
<script>
    function getParamValue(param_name) {
        var url = document.URL;
        var questionMark = url.indexOf('?');
        var subUrl = url.substr(questionMark+1);
        var paramList = subUrl.split("&");
        var paramLength = paramList.length;
        var paramArray = [];
        var findValue='';
        if(paramLength>1) {
            paramList.forEach(function(v,i) {
                var equalPosition = v.indexOf('=');
                var paramKey = v.substr(0,equalPosition);
                paramArray[paramKey] = v.substr(equalPosition+1);
            });
            findValue = paramArray[param_name];
        } else {
            paramList = subUrl.split("=");
            if(paramList[0] === param_name) {
                findValue = paramList[1];
            }
        }
        if(findValue === undefined) {
            return '';
        }
        return findValue;
    }



    jQuery(function($) {
        var menuNumber = getParamValue('menu');
        switch(menuNumber) {
            case '2' :
                setTab(1);
                break;
            case '3' :
                setTab(2);
                break;
            case '4' :
                setTab(3);
                break;
        }
        $('.tabList li').click(function() {
            locationChange($(this).index());
        });
        function setTab(i) {
            var tab = $('.tabList li');
            tab.removeClass('select');
            tab.eq(i).addClass('select');
        }
        function locationChange(index) {
            var url = '/zf_user/help/live?category=3';
            switch(index) {
                case 0:{
                    location.href = url;
                    break;
                }
                case 1:{
                    location.href = url+"&menu=2";
                    break;
                }
                case 2: {
                    location.href = url+"&menu=3";
                    break;
                }
                case 3: {
                    location.href = url+"&menu=4";
                    break;
                }
            }
        }
    });
</script>


<!-- 이벤트 탭 시작 -->
<!--    //이벤트 탭-->
    

<div class="wrap_board event_board">
    


</ul>
    <ul class="list_ing">
            <li>
                <a href="<%=request.getContextPath()%>/rollet.do" target="_blank" title="이벤트 바로가기">
                    <span class="img_event">
                     <img src="<%=request.getContextPath() %>/resources/images/rolletImg.png" width="308" height="159" alt="[이벤트] 출석체크 챌린지 프로모션">
                </span>
                    <strong class="tit">
                        [이벤트] 출석체크 챌린지 프로모션                    </strong>
                    <span class="date">
                        2023-11-01 ~ 2023-11-30                    </span>
                    <span class="target">
                        대상 : 개인회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202310/18/s2ptvx_r31y-2so1pf_banner.jpg" width="308" height="159" alt="전문가의 진단받고 커리어 고민 해결!">
                </span>
                    <strong class="tit">
                        전문가의 진단받고 커리어 고민 해결!                    </strong>
                    <span class="date">
                        2023-10-19 ~ 2023-11-17                    </span>
                    <span class="target">
                        대상 : 개인회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202310/17/s2ngg6_vltk-2so1ra_banner.png" width="308" height="159" alt="멘토링매치 선착순 쿠폰 및 리뷰 프로모션">
                </span>
                    <strong class="tit">
                        멘토링매치 선착순 쿠폰 및 리뷰 프로모션                    </strong>
                    <span class="date">
                        2023-10-17 ~ 2023-11-15                    </span>
                    <span class="target">
                        대상 : 개인회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202309/18/s16apf_c8tz-2so1v3_banner.png" width="308" height="159" alt="채용솔루션 리버스x패스트파이브 제휴 이벤트">
                </span>
                    <strong class="tit">
                        채용솔루션 리버스x패스트파이브 제휴 이벤트                    </strong>
                    <span class="date">
                        2023-09-18 ~ 2023-12-31                    </span>
                    <span class="target">
                        대상 : 기업회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202308/08/rz1tjy_jfs3-2so1pe_banner.png" width="308" height="159" alt="멘토링매치 T멤버십 혜택">
                </span>
                    <strong class="tit">
                        멘토링매치 T멤버십 혜택                    </strong>
                    <span class="date">
                        상시                    </span>
                    <span class="target">
                        대상 : 개인회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202309/01/s0a924_vvzn-2so1pn_banner.png" width="308" height="159" alt="커리어챗 현직자 프로 모집">
                </span>
                    <strong class="tit">
                        커리어챗 현직자 프로 모집                    </strong>
                    <span class="date">
                        상시                    </span>
                    <span class="target">
                        대상 : 개인회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202308/22/rzs4ja_nnh2-2so1w8_banner.png" width="308" height="159" alt="인적성검사(기업) 개편기념 추가지급 이벤트">
                </span>
                    <strong class="tit">
                        인적성검사(기업) 개편기념 추가지급 이벤트                    </strong>
                    <span class="date">
                        2023-08-17 ~ 2023-12-31                    </span>
                    <span class="target">
                        대상 : 기업회원                    </span>
                </a>
            </li>
            <li class="eventOff" data-bs-toggle="modal" data-bs-target="#mModal">
                <a href="#" title="이벤트 바로가기">
                    <span class="img_event">
                    <img src="https://pds.saramin.co.kr/event/banner/202307/04/rx987l_wf0b-2so29w_banner.png" width="308" height="159" alt="확실한 광고 효과, 처음은 부담 없이!">
                </span>
                    <strong class="tit">
                        확실한 광고 효과, 처음은 부담 없이!                    </strong>
                    <span class="date">
                        상시                    </span>
                    <span class="target">
                        대상 : 기업회원                    </span>
                </a>
            </li>
     </ul>
    </div>
    </div>
    </div>
</div>
