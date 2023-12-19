<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<div id="sri_section" class="has_banner qnaFormWrap">
        <div id="sri_wrap">
            <div id="content">
                <div class="wrap_title_recruit">
    <h1 class="title_common">고객센터</h1>
</div>
<div class="navigation_help_depth2">
    
</div>
<div class="navigation_help_depth3">
    <ul>
                <li><a class="" href="/zf_user/help/live?listType=notice" data-nav-track="ga_lead|section-gnb|help|notice_notice"><span>공지사항</span></a></li>
        <li><a class="selected" href="/zf_user/help/live?category=3" data-nav-track="ga_lead|section-gnb|help|notice_event"><span>1:1문의</span></a></li>
        <li><a class="" href="/zf_user/help/live?category=3" data-nav-track="ga_lead|section-gnb|help|notice_event"><span>이벤트</span></a></li>
            </ul>
</div>
<section class="content helpSecCont">
        <div class="loungeContent inquiryContent">
            <div class="topHdWrap">
                <h2 class="lug_hd_2">문의</h2>
            </div>

            <!--// 문의하기 -->
            <div class="inquiryFormWrap">




<!--// tap menu -->

<!--// tap menu -->
<div class="mtcTplTab">
	<ul class="tabItems">
		<li class="on"></li>
		<li class=""></li>
	</ul>
</div>
<!-- tap menu //-->
                <div class="inquiryForm">
                    <form id="form" action="/FinalProject/member/qna/createQnaPost" method="post">
                        <input name="__RequestVerificationToken" type="hidden" value="OoH3mElESpQaOLqJv-DOwq16hqFSxy2YrngEPSZu4cz_tNYrKpFwF3UppvP9RMxCueJvnz4A-D2ou8IVCXO2G5X2Anx_47TV_lqcL9jRn2A1">
                        <input type="hidden" name="giNo" value="0">
                        <input type="hidden" name="coMemId">
                        <input type="hidden" name="coMemType">
                        <input type="hidden" name="Category" id="Category" value="-1">
                        <input type="hidden" name="IsAgree" id="IsAgree" value="false">
                        <fieldset>
                            <legend>문의하기 입력</legend>
                            <div class="tbInquiryBx">
                                <div class="tbRow">
                                    <div class="tbCell tbTh">
                                        제목 <em>(필수)</em>
                                    </div>
                                    <div class="tbCell">
                                        <div class="mtcSltBx listLenSel">
                                            <input type="text" placeholder="제목을 입력하세요." name="qstnTitle" id="title" required />
                                        </div>
                                    </div>
                                </div>
                                <div class="tbRow">
                                    <div class="tbCell tbTh">
                                        <label for="lb_inq_2">내용 <em>(필수)</em></label>
                                    </div>
                                    <div class="tbCell">
                                        <textarea name="qstnContent" id="lb_inq_2" title="내용을 입력하세요." class="txArea" required></textarea>
                                    </div>
                                </div>
<!--                                 <div class="tbRow"> -->
<!--                                     <div class="tbCell tbTh"> -->
<!--                                         파일첨부 -->
<!--                                     </div> -->
<!--                                     <div class="tbCell"> -->
<!--                                         <div class="tbFileBx"> -->
<!--                                                 <span class="fileBx" style="display: none;"> -->
<!--                                                     <span class="file lugSpanFile">sample.jpg</span> -->
<!--                                                     <button type="button" class="lugBtn lugBtnDel"><span class="blind">첨부파일 삭제</span></button> -->
<!--                                                     <input type="hidden" id="lb_inq_3" name="attachFile1" class="devAttachFile"> -->
<!--                                                 </span> -->
<!--                                                 <span class="fileBx" style="display: none;"> -->
<!--                                                     <span class="file lugSpanFile">sample.jpg</span> -->
<!--                                                     <button type="button" class="lugBtn lugBtnDel"><span class="blind">첨부파일 삭제</span></button> -->
<!--                                                     <input type="hidden" id="lb_inq_3" name="attachFile2" class="devAttachFile"> -->
<!--                                                 </span> -->
<!--                                                 <span class="fileBx" style="display: none;"> -->
<!--                                                     <span class="file lugSpanFile">sample.jpg</span> -->
<!--                                                     <button type="button" class="lugBtn lugBtnDel"><span class="blind">첨부파일 삭제</span></button> -->
<!--                                                     <input type="hidden" id="lb_inq_3" name="attachFile3" class="devAttachFile"> -->
<!--                                                 </span> -->
<!--                                             <span class="btnFile"> -->
<!--                                                 <label for="fi_1"><button type="button" id="dev-file-add" class="lugBtnA lugBtnFile"><span>파일을 추가하세요</span></button></label> -->
<!--                                                 <input type="hidden" id="fileCount" value="0"> -->
<!--                                             </span> -->
<!--                                         </div> -->
<!--                                         <p class="tbExpBx"><span class="tahoma">10MB</span>이내의 <span class="tahoma">MS Office</span> 파일, <span class="tahoma">hwp, jpg, gif, png, pdf, zip</span> 가능</p> -->
<!--                                     </div> -->
<!--                                 </div> -->

                                
                            </div>
                            
                            <div id="privacyBx2" class="privacyBx" style="display: block;">
                                <p>보내주신 의견은 면밀히 검토하여 더 나은 서비스로 보답하겠습니다. 별도로 답변을 드리지 않는 점 양해 부탁드립니다.</p>
                            </div>

                            <div class="inquiryBtn">
                                <button type="submit" class="btnInq">작성완료</button>
                                <button type="button" class="btnInq btnCancel"><span>취소</span></button>
                            </div>
                        </fieldset>
                    </form>
                </div>

            </div>
            <!-- 문의하기 //-->
        </div>
    </section>
    <iframe name="frameUpload" width="0" height="0" title="빈 프레임"></iframe>
</div>
            <!-- 문의하기 //-->
        </div>
</div>
