<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	$(function() {
		//파일 다운로드
		$(".carbonImg").on(
				"click",
				function() {
					let frbattSavename = $(this).data("frbattSavename");

					console.log("frbattSavename : " + frbattSavename);

					$("#ifrm").attr(
							"src",
							"/FinalProject/frBoardList/download?fileName="
									+ frbattSavename);
				});

		//댓글
		$("#contents").on("keydown", function() {
			let lth = $(this).val().length;
			let temp = $(this).val();
			console.log(lth);

			if (lth <= 1000) {
				$(".bytes em").html($(this).val().length);
			} else {
				$(this).val(temp.substring(0, 1000));
			}
		});
		//게시글 신고
		$("#btnFrbRep").on("click", function() {
			//data-frb-no="FRB0099"
			let frbNo = $(this).data("frbNo");
			console.log("frbNo : " + frbNo);
			//json오브젝트
			let data = {
				"frbNo" : frbNo
			};
			console.log("data : ", data);

			$.ajax({
				url : "/FinalProject/frBoardList/frbRepPost",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(data),
				type : "post",
				dataType : "text",
				success : function(result) {
					console.log("result : " + result);

					if (result == "success") {//신고 성공
						$("#mModal").modal("show");
					}
				}
			});
		});
		//댓글 신고
		$(".btnCoNo").on("click", function() {
			//data-co-no="3"
			let coNo = $(this).data("coNo");
			console.log("coNo : " + coNo);
			//json오브젝트
			let data = {
				"coNo" : coNo
			};
			console.log("data : ", data);

			$.ajax({
				url : "/FinalProject/frBoardList/coNoPost",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(data),
				type : "post",
				dataType : "text",
				success : function(result) {
					console.log("result : " + result);

					if (result == "success") {//신고 성공
						$("#mModal").modal("show");
					}
				}
			});
		});
	});
</script>
<!--이벤트 Modal 시작 -->
<!-- Modal -->
<div class="modal fade" id="mModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">알림</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">신고되었습니다. 관리자가 검토할 예정입니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
				<!--         <button type="button" class="btn btn-primary">Save changes</button> -->
			</div>
		</div>
	</div>
</div>
<!--이벤트 Modal 끝 -->
<div class="bdDtlWrap mt-5">
	<div class="contents_container detail_wrap">
		<a href="<%=request.getContextPath()%>/frBoardList"
			class="BtnType SizeS btn_gray btn_back_list"
			onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'resume_total')"><span>전체
				게시글</span></a>
		<!-- 게시글 보기 -->
		<div class="post_view_wrap">
			<!-- 게시글 상단 -->
			<div class="post_top">
				<h1 class="qna_subject">${frBoardVO.frbTitle}
					<%--                         <p>개똥이 : ${member}</p> --%>
				</h1>
				<div class="post_btns">
					<button type="button" id="btnFrbRep"
						data-frb-no="${frBoardVO.frbNo}" class="btns BtnType SizeXS">신고</button>
				</div>
			</div>
			<!-- // 게시글 상단 -->

			<!-- 게시글 정보 -->
			<div class="post_infos">
				<div class="post_profile">
					<div class="profile_pic_wrap"
						onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'profile')">
						<a href="/zf_user/company-review-qst-and-ans/profile?idx=3815601"
							target="_blank"><div class="profile_pic profile1">
								<svg>
									<use xlink:href="#profile_pic1"></use></svg>
							</div></a>
					</div>
					<a href="/zf_user/company-review-qst-and-ans/profile?idx=3815601 "
						target="_blank"> <span class="nickname">
							${fn:substring(frBoardVO.usersId, 0, 1)} <c:choose>
								<c:when test="${fn:length(frBoardVO.usersId) > 1}">
	                       ****
	                    </c:when>
							</c:choose>
					</span>
					</a> <span class="post_date"><fmt:formatDate
							value="${frBoardVO.frbDate}" pattern="yyyy-MM-dd HH:mm:ss" /> </span>
				</div>
				<div class="post_data_wrap">

					<span class="qna_info">조회수 : ${frBoardVO.frbLno}</span>
					<!--                <span class="qna_info qna_view">-->
					<!--</span>-->

				</div>
			</div>
			<!-- // 게시글 정보 -->

			<!-- 게시글 내용 -->
			<div class="post_cont">${frBoardVO.frbWrite}</div>
			<!-- 첨부파일 -->
			<div class="bd-example m-0 border-0">
				<iframe id="ifrm" style="display: none;"></iframe>
				<c:forEach var="attachVO" items="${frBoardVO.attachVOList}">
					<span class="carbon-wrap"> <a href="#"
						data-frbatt-savename="${attachVO.frbattSavename}"
						class="carbonImg" rel="noopener sponsored"> 
						<img
							src="<%=request.getContextPath()%>/resources/images/fileImage.jpg"
							alt="ads via Carbon" border="0" height="30" width="30"
							data-no-statview="no" style="max-width: 130px;">
					</a> <a href="#" class="carbon-text" rel="noopener sponsored">
							${attachVO.frbattOriginalnm} </a>
					</span>
				</c:forEach>
			</div>
			<!-- // 게시글 내용 -->

			<!-- 게시글 태그 -->

			<!-- // 게시글 태그 -->

			<!-- 게시글 이모티콘 -->

			<!-- // 게시글 이모티콘 -->
		</div>
		<!-- // 게시글 보기 -->

		<c:set value="<%=session.getAttribute(\"authId\")%>" var="user" />
		<form class="qna_answer_form" name="qna_answer_form"
			action="/FinalProject/frBoardList/comment" method="post">
			<input type="hidden" name="usersId" value="${user}" /> <input
				type="hidden" name="frbNo" value="${param.frbNo}" />
			<div class="comment_input_wrap">
				<div class="comment_input img_add">
					<span class="nickname"> ${fn:substring(user, 0, 1)} <c:choose>
							<c:when test="${fn:length(user) > 1}">
	                       ****
	                    </c:when>
						</c:choose>
					</span>
					<textarea name="coContent" id="contents" class="scrollbar"
						placeholder="“나도 이런 고민했었지, 라떼는 말이야~” 위 고민과 같은 경험이 있거나, 알고 계신 정보가 있다면 조언 부탁드려요!"
						rows="24" cols="80"></textarea>
					<ul class="add_img_list" style="display: none;">
						<li>
							<div class="thumb">
								<img id="reply_preview"
									src="http://www.saraminimage.co.kr/sri/company_review/dummy_pic1.png"
									alt="">
							</div>
							<button type="button" class="img_delete"></button>
						</li>
					</ul>
				</div>
				<div class="comment_input_bot info_write">

					<span class="comment_count bytes"> <em>0</em>/1000자
					</span>
				</div>
				<button type="submit"
					class="BtnType SizeL comment_submit btn_anwr_register"
					name="btn_anwr_register">댓글 등록</button>
			</div>
		</form>

		<div class="comment_lists_wrap" id="qna_answer_box">
			<div class="list_answer paywall">
				<ul class="comment_lists">
					<c:forEach var="commentVO" items="${commentVOList}" varStatus="stat">
					<li>
						<div class="wrap_comment ">
							<div class="comment_view">
								<span class="comment_txt">${commentVO.rnum}번째 댓글<br /> ${commentVO.coContent}</span>
								<div class="comment_info">
									<span class="comment_from"> <span class="nickname">
											<span class="nickname"> ${fn:substring(commentVO.usersId, 0, 1)} <c:choose>
													<c:when test="${fn:length(commentVO.usersId) > 1}">
							                       ****
							                    </c:when>
												</c:choose>
											</span>
									</span>님이 <fmt:formatDate value="${commentVO.coDate}" pattern="yyyy-MM-dd" /> 
									</span>
									<div class="profile_pic_wrap">
										<button type="button" data-co-no="${commentVO.coNo}" class="btns BtnType SizeXS btnCoNo">신고</button>
<!-- 										<a href="/zf_user/company-review-qst-and-ans/profile?idx=3730496" target="_blank"> -->
<!-- 											<div class="profile_pic profile1"><svg><use xlink:href="#profile_pic1"></use></svg></div> -->
<!-- 											</a> -->
									</div>
								</div>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>

<!-- 						<button type="button" class="btn_comment_etc">수정 및 삭제</button> -->
<!-- 						<div class="comment_modify_wrap"> -->
<!-- 							<button class="btn_comment_mnd comment_report" -->
<!-- 								onmousedown="DETAILPAGE.Detail.reportLayerShow('918759', 'anwr', 'reload')">신고</button> -->
<!-- 							<button class="btn_comment_mnd comment_report" -->
<!-- 								onmousedown="DETAILPAGE.Detail.reportLayerShow('16340409', 'mem', 'reload')">사용자 -->
<!-- 								신고</button> -->
<!-- 							<button class="btn_comment_mnd comment_report" -->
<!-- 								onmousedown="DETAILPAGE.Detail.blackList('16340409', '10744767')">사용자 -->
<!-- 								차단</button> -->
<!-- 						</div> -->

<!-- 						<div class="comment_reply_wrap list_reply"> -->
<!-- 							<div id="list_reply_918759"></div> -->
<!-- 						</div> -->
						 <!-- 대댓글/답글 입력 --> <!--             <div class="comment_reply_input"> -->
						<!--                 <div class="comment_write"> --> <!--                     <input type="text" name="reply_contents_918759" id="reply_contents_918759" value="" class="" placeholder="답변에 댓글을 입력해 보세요.">                </div> -->
						<!--                 <button type="button" class="btn_post btn_reply_register comment_reply_submit" data-qust_idx="71023" data-call_mem_idx="" data-uper_anwr_idx="918759" onclick=""> -->
						<!--                     등록 --> <!--                 </button> -->
						<!--             </div> --> <!-- //대댓글/답글 입력 --> <!--             </li> -->

						<!--                     <div class="add_list_answer_contents"></div> -->
						<!--                 </ul> --> <!--                 <div class="row_login"> -->
						<!--                     <div class="inner"> --> <!--                         <p class="txt">댓글 내용은 로그인 후에 확인하실 수 있어요!<br> -->
						<!--                             앗 혹시 비회원이신가요?? 회원가입 빠르게 하고, <br> 댓글을 확인해보세요~</p> -->
						<!--                         <a href="javascript:void(0);" onclick="login()" class="btn_login">로그인/회원가입</a> -->
						<!--                     </div> --> <!--                 </div> -->

						<!--                             </div> --> <!--         </div> -->

						<!-- 게시글 하단 -->
						<div class="post_detail_footer">
							<a href="<%=request.getContextPath()%>/frBoardList"
								class="BtnType SizeS btn_gray bnt_post_all"><span>목록</span></a>
						</div> <!-- // 게시글 하단 -->
			</div>
		</div>
	</div>
</div>