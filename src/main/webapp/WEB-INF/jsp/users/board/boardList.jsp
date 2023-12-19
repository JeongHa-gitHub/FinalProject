<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<div class="boardListWrap">
	<div class="contents_container">
		<div class="sub_top_wrap tag_list">
			<span class="sub_title_tag"> <strong class="stit">게시글
					전체</strong>
			</span>
			<div class="sub_title_desc">현재까지 등록된 전체 게시글입니다.</div>
		</div>

		<script>
			(function($) {
				function sliderDisableCheck() {
					if ($('.wrap_slide_category .bx-next').hasClass('disabled')) {
						$('.wrap_slide_category').addClass('category_end');
					} else {
						$('.wrap_slide_category').removeClass('category_end');
					}
				}
				var page = Math.floor($('.list_category.js-category').find(
						'li>a.selected').closest('li').index() / 9);
				var slider = $('.js-category').bxSlider({
					mode : 'horizontal',
					slideWidth : 114,
					maxSlides : 35,
					minSlides : 5,
					slideMargin : 12,
					controls : true,
					pager : false,
					infiniteLoop : false,
					hideControlOnEnd : true,
					prevText : '<span class="blind">이전</span>',
					nextText : '<span class="blind">다음</span>',
					touchEnabled : (navigator.maxTouchPoints > 0),
					onSliderLoad : function() {
						this.goToSlide(page);
						sliderDisableCheck();
						$(this).removeClass('visible_hidden');
					},
					onSlideAfter : function() {
						$(window).trigger('resize');
						sliderDisableCheck();
					}
				});
				window.sss = slider;

				sliderDisableCheck();
			})(jQuery);
		</script>
		<div class="search_form">
			<div class="list_num_tit sub">
				전체<strong>${paging.totalRecord } </strong>건
			</div>
			<div class="box_search">
				     <!-- 검색 -->
                            <div class="search_area">
                                <div id="searchUI" class="row g-3 d-flex justify-content-center">
                                    <div class="col-auto">
							<form:select path="simpleCondition.searchType"
								class="form-select">
<%-- 								<form:option label="전체" value="" /> --%>
								<form:option value="title" label="제목" />
								<form:option value="content" label="내용" />
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
			<div class="" style="display: none">
				<svg xmlns="http://www.w3.org/2000/svg">
	        		<symbol id="svg_my_8" viewBox="0 0 24 24">
	           		<path fill="currentColor"
							d="M7 0c3.866 0 7 3.134 7 7 0 1.756-.647 3.36-1.714 4.59l.068.056 3.394 3.395c.195.195.195.511 0 .707-.174.173-.443.193-.638.058l-.07-.058-3.394-3.394-.056-.068C10.36 13.353 8.756 14 7 14c-3.866 0-7-3.134-7-7s3.134-7 7-7zm0 1C3.686 1 1 3.686 1 7s2.686 6 6 6 6-2.686 6-6-2.686-6-6-6z"
							transform="translate(-1125 -399) translate(447 335) translate(678 64) translate(4 4)"></path>
	        		</symbol>
    			</svg>
			</div>
		</div>
		<!-- H03 : 기업 / H02 : 일반 / H01 : 관리자 -->
<%-- 		<p>${memberVO}</p> --%>
		<div class="qna_list_wrap">
			<div class="qna_list_sort">
				<div class="InpBox"></div>

				<button type="button" class="BtnType SizeL btn_qna_write"
					onclick="location.href='/FinalProject/frBoardList/create'"
						<c:if test="${memberVO.memDivision=='H03'}">disabled</c:if>
					>게시글 작성</button>
			</div>
			<c:set var="frboardList" value="${paging.dataList }" />
                                        <c:if test="${empty frboardList }">
                                            <ul>
                                                <li style="text-align: center;">작성된 글이 없습니다.</li>
                                            </ul>
                                        </c:if>
			<ul class="qna_list" id="qst_and_ans_list">
				<c:if test="${not empty frboardList }">
					<c:forEach items="${frboardList }" var="board">
						<div class="list_qna">
							<span class="position" style="transform: translateY(66px);"></span>
							<li>
								<div class="qna_subject_wrap">

									<span class="qna_subject"><a
										href="/FinalProject/frBoardList/detail?frbNo=${board.frbNo}">${board.frbTitle }</a></span>
								</div> <span class="qna_desc">${board.frbWrite }</span>
								<div class="qna_data_infos">

									<span class="qna_info qna_view">조회 <strong>${board.frbLno}</strong></span>
									<div class="qna_member_info">
										<span class="qna_from"> ${fn:substring(board.usersId, 0, 1)}
											<c:choose>
												<c:when test="${fn:length(board.usersId) > 1}">
							                       ****
							                    </c:when>
											</c:choose> 님이 <fmt:formatDate value="${board.frbDate }"
												pattern="yyyy-MM-dd HH:mm" />
										</span>

									</div>
								</div>
							</li>
						</div>
					</c:forEach>
				</c:if>
			</ul>
			<div class="jstfyCntntCntr">
				${paging.pagingHTML }			
			</div>
			<form:form modelAttribute="simpleCondition" method="get"
				id="searchForm">
				<form:input type="hidden" path="searchType" readonly="readonly"
					placeholder="searchType" />
				<form:input type="hidden" path="searchWord" readonly="readonly"
					placeholder="searchWord" />
				<input type="hidden" name="page" readonly="readonly"
					placeholder="page" />
			</form:form>
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
</script>