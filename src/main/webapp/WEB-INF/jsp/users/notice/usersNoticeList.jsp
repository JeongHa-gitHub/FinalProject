<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="sri_section" class="has_banner noticeListWrap">
	<div id="sri_wrap">
		<div id="content">
			<div class="wrap_title_recruit">
				<h1 class="title_common">공지사항</h1>
			</div>
			<div class="navigation_help_depth2"></div>
			<!-- 하위 메뉴 리스트 -->
			<div class="navigation_help_depth3">
				<ul>
					<li><a class="selected" href="<%=request.getContextPath() %>/member/noticeList"
						data-nav-track="ga_lead|section-gnb|help|notice_notice"><span>공지사항</span></a></li>
					<li><a class="" href="<%=request.getContextPath() %>/member/qnaList"
						data-nav-track="ga_lead|section-gnb|help|notice_event"><span>1:1문의</span></a></li>
					<li><a class="" href="<%=request.getContextPath()%>/eventIng.do"
						data-nav-track="ga_lead|section-gnb|help|notice_event"><span>이벤트</span></a></li>
				</ul>
			</div>
			<!-- 하웨 메뉴 리스트 끝 -->

			<!-- 게시판 -->
			<div class="wrap_board">
				<!-- 검색 -->
				<div class="search_area">
					<strong class="count">총 <span class="num">${paging.totalRecord }</span>건
					</strong>
					<div id="searchUI" class="row g-3 d-flex justify-content-center">
						<div class="col-auto">
							<form:select path="simpleCondition.searchType"
								class="form-select">
								<form:option label="전체" value="" />
								<form:option value="title" label="제목" />
								<form:option value="content" label="내용" />
							</form:select>
						</div>
						<div class="col-auto">
							<form:input path="simpleCondition.searchWord"
								class="form-control" placeholder="키워드를 입력하세요." />
						</div>
						<div class="col-auto">
							<input type="button" value="검색" id="searchBtn"
								class="btn btn-primary" />
						</div>
					</div>
				</div>
				<!-- 검색 끝 -->

				<!-- 데이터 -->
				<div class="tblType">
					<table>
						<caption class="blind">게시판</caption>
						<thead>
							<tr>
								<th style="width: 130px;">번호</th>
								<th style="width: 107px;">유형</th>
								<th>제목</th>
								<th style="width: 107px;">날짜</th>
								<th style="width: 107px;">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="noticeList" value="${paging.dataList }" />
							<c:if test="${empty noticeList }">
								<tr>
									<td colspan="5">검색 조건에 맞는 글이 없음.</td>
								</tr>
							</c:if>
							<c:if test="${not empty noticeList }">
								<c:forEach items="${noticeList }" var="notice">
									<tr>
										<td>${notice.rnum }</td>
										<td class="category">${notice.noticeType }</td>
										<td class="title"><a
											href="<%=request.getContextPath()%>/member/noticeDetail/${notice.noticeNo}">
												${notice.noticeTitle } </a></td>
										<td class="">${notice.noticeDate }</td>
										<td class=""><fmt:formatNumber value="${notice.noticeLno }" pattern="#,###" /></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
				<!-- 데이터 끝 -->
					<tr>
						<td colspan="7">${paging.pagingHTML }</td>
					</tr>
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
			<!-- 게시판 끝 -->
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

