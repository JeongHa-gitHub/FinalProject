<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="user" value="${sessionScope.authId}" />
<input type="text" name="user" id="user" value="${user}" hidden />

<div id="sri_section" class="has_banner qnaListWrap">
    <div id="sri_wrap">
        <div id="content">
            <div class="wrap_title_recruit">
                <h1 class="title_common">고객센터</h1>
            </div>
            <div class="navigation_help_depth2"></div>
            <div class="navigation_help_depth3">
                <ul>
                    <li><a class="" href="<%=request.getContextPath() %>/member/noticeList" data-nav-track="ga_lead|section-gnb|help|notice_notice"><span>공지사항</span></a></li>
                    <li><a class="selected" href="<%=request.getContextPath() %>/member/qna/qnaList" data-nav-track="ga_lead|section-gnb|help|notice_event"><span>1:1문의</span></a></li>
                    <li><a class="" href="<%=request.getContextPath()%>/eventIng.do" data-nav-track="ga_lead|section-gnb|help|notice_event"><span>이벤트</span></a></li>
                </ul>
            </div>
            <div class="inquiryViewWrap">
            			<!-- //////////////////// 상세보기 시작 ////////////////////////////// -->
						<div class="inquiryView">
							<div class="viewCont">
								<dl class="inqCont">
									<dt><strong>[문의]</strong>  ${qna.qstnTitle } <q>${qna.qstnDate }</q></dt> 
									<dd>${qna.qstnContent }</dd>
								</dl>
							</div>
							
							<div class="viewCont">
								<div class="reply">
								<c:if test="${sessionScope.authId eq 'a001'}">
									<c:if test="${empty reply }">
										<form id="frm" name="frm" method="post" action="/FinalProject/member/createPost" >
											<p>댓글을 입력하세요.</p>
											<input type="hidden" name="qstnNo" value="${qstnNo}" />
											<textarea rows="3" cols="10" id="rpyContent" name="repContent" style="display:none;"></textarea>
											<textarea rows="" cols="" id="textareaText" name="textareaText"></textarea>
											<!-- <input id="textareaText" type="text"/>  -->
											<div class="qna_input_bottom">
												<security:csrfInput/>
											</div>
											<button type="button" id="replyInsert">댓글등록</button>
										</form>
									</c:if>
								</c:if>
								
									<br>
									<br>
									<br>
									<c:if test="${not empty reply }">
									<div id="replyContent">
										<dl class="inqCont">
											<dt><strong class="replyTag">답변</strong> ${reply.repDate }</dt>
											<dd class="replyTxt"><i class="fa-solid fa-arrow-turn-up"></i> ${reply.repContent }</dd>
										</dl>
									</div>
									</c:if>
									
								</div>
							</div>
							<div class="listBtmArea">
							<div class="btnListExDn" style="justify-content:left;float:left;display:flex;">
								<a href="<%=request.getContextPath() %>/member/qnaList" class="btn btn-primary">목록</a>
							</div>
							<button type="button" id="edit" class="btn btn-primary">수정</button>
							<button type="button" id="delete" class="btn btn-secondary">삭제</button>
						</div>
						</div>
						<!-- //////////////////// 상세보기 끝 ////////////////////////////// -->
						<!-- ///////////////////// 수정 시작///////////////////// -->
						<div class="inquiryEdit" style="display:none;">
						<form id="frm" method="post">
						<input type="hidden" name="qstnNo" value="${qna.qstnNo }" />
						<fieldset>
                            <legend>문의하기 입력</legend>
                            <div class="tbInquiryBx">
                                <div class="tbRow">
                                    <div class="tbCell tbTh">
                                        제목 <em>(필수)</em>
                                    </div>
                                    <div class="tbCell">
                                        <div class="mtcSltBx listLenSel">
                                            <input type="text" placeholder="제목을 입력하세요." value="${qna.qstnTitle }" name="qstnTitle" id="title" required />
                                        </div>
                                    </div>
                                </div>
                                <div class="tbRow">
                                    <div class="tbCell tbTh">
                                        <label for="lb_inq_2">내용 <em>(필수)</em></label>
                                    </div>
                                    <div class="tbCell">
                                        <textarea name="qstnContent" id="lb_inq_2" title="내용을 입력하세요." class="txArea" required>${qna.qstnContent }</textarea>
                                    </div>
                                </div>
                            </div>
                            <div id="privacyBx2" class="privacyBx" style="display: block;">
                            </div>
                        </fieldset>
                        	<div class="listBtmArea">
								<div class="btnListExDn" style="justify-content:left;float:left;display:flex;">
									<a href="<%=request.getContextPath() %>/member/qnaList" class="btn btn-primary">목록</a>
								</div>
								<button type="submit" id="confirm" class="btn btn-primary">확인</button>
								<button type="button" id="cancel" class="btn btn-secondary">취소</button>
							</div>
                        </form>
                        </div>
						<!-- ///////////////////// 수정 끝///////////////////// -->
						
					</div>
		</div>
	</div>
</div>
<script>
function removeQnA(qstnNo) {
    console.log('qstnNo:', qstnNo);

    if (confirm('해당 글을 삭제하시겠습니까?')) {
        $.ajax({
            type: 'POST',
            url: '<%=request.getContextPath()%>/member/qna/remove',
            data: {
                qstnNo: qstnNo,
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
<script type="text/javascript">

$(function(){
	//수정버튼 클릭 -> 수정모드로 전환
	$("#edit").on("click",function(){
		$(".inquiryView").css("display","none");
		$(".inquiryEdit").css("display","block");
		
		//폼의 action을 /article/updatePost
		//태그 style <.... style='' -> 객체.css("","")
		//태그 속성 <... action=''	   -> 객체.attr("","") / 객체.prop("","")
		$("#frm").attr("action","/FinalProject/member/qna/updateQnaPost");
	});
	
	//취소버튼 -> 일반모드로 전환
	$("#cancel").on("click",function(){
		$(".inquiryView").css("display","block");
		$(".inquiryEdit").css("display","none");
		
		//폼의 action을 /article/updatePost
		//태그 style <.... style='' -> 객체.css("","")
		//태그 속성 <... action=''	   -> 객체.attr("","") / 객체.prop("","")
		$("#frm").attr("action","/FinalProject/member/qna/updateQnaPost");
	});
	
	//삭제버튼 클릭
	$("#delete").on("click",function(){
		$("#frm").attr("action","/FinalProject/member/qna/deleteQnaPost");
		
		// true(1) / false(0)
		let result = confirm("삭제하시겠습니까?");
		
		console.log("result : " + result);
		
		if(result>0){
			$("#frm").submit();
		}else{
			alert("삭제가 취소되었습니다.");
		}
	});
	
	//댓글 등록
	$("#replyInsert").on("click",function(){
		let textareaText = document.querySelector("#textareaText").value;
		$("#rpyContent").val(textareaText);

		$("#frm").submit();
	});
});

</script>
