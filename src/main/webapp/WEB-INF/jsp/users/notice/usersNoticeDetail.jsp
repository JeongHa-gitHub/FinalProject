<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="user" value="${sessionScope.authId}" />
<input type="text" name="user" id="user" value="${user}" hidden />

<div id="sri_section" class="has_banner noticeDetailWrap">
	<div id="sri_wrap">
		<div id="content">
			<div class="wrap_title_recruit">
				<h1 class="title_common">고객센터</h1>
			</div>
			<div class="wrap_board_view">
				<div class="navigation_help_depth2"></div>
				<div class="navigation_help_depth3">
					<ul>
						<li>
							<a class="selected" href="<%=request.getContextPath()%>/member/noticeList"
								data-nav-track="ga_lead|section-gnb|help|notice_notice"><span>공지사항</span>
							</a>
						</li>
						<li>
							<a class="" href="<%=request.getContextPath()%>/member/qna/qnaList"
								data-nav-track="ga_lead|section-gnb|help|notice_event"><span>1:1문의</span>
							</a>
						</li>
						<li>
							<a class="" href="<%=request.getContextPath()%>/eventIng.do"
								data-nav-track="ga_lead|section-gnb|help|notice_event"><span>이벤트</span>
							</a>
						</li>
					</ul>
				</div>

				<!-- 데이터 -->
				<div class="wrap_content_view">
					<div class="area_tit">
						<h1 class="content_tit">${notice.noticeTitle }</h1>
						<dl class="content_info">
							<dt>등록일 :</dt>
							<dd>${notice.noticeDate }</dd>
							<dt>조회수 :</dt>
							<dd>
								<fmt:formatNumber value="${notice.noticeLno }" pattern="#,###" />
							</dd>
						</dl>
					</div>
					<div class="area_content">
						<div class="inner">
							${notice.noticeContent }
							<c:if test="${not empty notice.noticeImg}">
								<img class="col-md-5"
									src="<c:url value='/resources/images/${notice.noticeImg }' />" />
							</c:if>
						</div>
					</div>
					<!-- 데이터 끝 -->

					<!-- 페이징 수정해야됨-->
					<div class="box_pagination">
					   <a href="<%=request.getContextPath()%>/member/noticeList" class="ntcBtn" title="이전 목록 바로가기">목록</a>
					   
						<c:if test="${sessionScope.authId eq 'a001'}">
					       
					       <a href="#" onclick="SY_save('${notice.noticeNo}')" class="ntcBtn" title="삭제" data-bs-toggle="modal" data-bs-target="#mModal">삭제</a>
					   </c:if> 
					</div>
					<!-- 페이징 끝 -->
				</div>
			</div>
		</div>
	</div>
</div>
 <!--삭제 Modal 시작 -->

		<div id="mModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">공지 삭제</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

			      <form  id="syDelForm" action='<c:url value="/noticeMgmt/noticeDelete" />' method="post">
						<!-- Modal body -->
						<div class="modal-body modalBody">
							<p>정말로 글을 삭제하시겠습니까?</p>
						</div>
						<input type="hidden" name="noticeNo" value="">
						<!-- Modal footer -->
						<div class="modal-footer">
							 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          					 <button type="submit" class="btn btn-primary">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
<!--삭제 Modal 끝 -->
<script>
	function SY_save(noticeNo){
		$("#syDelForm").find("input[name='noticeNo']").val(noticeNo);
	}
</script>