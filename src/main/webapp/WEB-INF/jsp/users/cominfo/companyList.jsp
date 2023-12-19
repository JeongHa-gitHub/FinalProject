<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div id="content" class="companyList rctRgLst">
	<div class="common_recruilt_list">
		<div class="area_title list_total_count">
			<h1 class="recruit_hot_header swHeader title_common">기업정보</h1>
			<div class="area_title list_total_count mt-4">
				<h2>전체 기업정보</h2>
							<span class="total_count" id="total_count"><em>"${paging.totalRecord}"</em>건</span>
			</div>

			
			<c:set var="memDivision" value="${member.memDivision }" />
			<input type="text" name="memDivision" id="memDivision" value="${memDivision }" />
			
			<!-- 
			1. H02 : 일반사용자 / H03 : 기업회원
			2. H03인 사람만 기업등록하기 버튼이 나와야 함
			
			비고 : js 파일에서 수행해야 함. 리스트 자체를 애초에 js를 통해서 가지고 왔으니...
			 -->			
<%--  			<c:if test="${member.memDivision eq 'H03'}"> --%>
				<button id="btnDivision" type="button" class="btnSizeM resumeStatus colorBlue"
					onclick="window.location.href='${pageContext.request.contextPath }/users/companyInsert'"
					data-confirm-status="unconfirmed" style="float: right;display:none;">기업
					등록하기</button>
<%-- 			</c:if>	 --%>
		</div>
		<!-- 검색 -->
		<div class="searchArea mb-3">
			<div id="searchUI" class="search_right">
				<span class="inpSel inpSelStyle"> 
				<select id="selSearchType" name="selSearchType" class="form-select"
					style="width: 120px">
						<option value="" label="전체" />
						<option value="company" label="기업명" />
						<option value="sectors" label="업종명" />
				</select>
				</span>
				<div class="searchTypeCont">
					<input id="inputSearchWord" name="inputSearchWord" 
						class="inpTypo form-control" style="width: 276px;"
						placeholder="검색키워드" /> <a href="#" id="searchBtn"
						class="btn btn-primary btn-icon-split ml-2"> <span
						class="text">검색</span>
					</a>
				</div>
			</div>
		</div>
		<!-- 검색 끝 -->
		<div class="listBody"></div>
	</div>
	<!-- 동일한 jsp 내에서는 id 속성의 값이 유일해야 함 
	요청URI : /users/companyListData
	요청파라미터 : 
	-->
	<form action="<%=request.getContextPath()%>/users/companyListData" id="searchForm">
		<input type="hidden" id="searchType" name="searchType" readonly="readonly" placeholder="searchType" /> 
		<input type="hidden" id="searchWord" name="searchWord" readonly="readonly" placeholder="searchWord" /> 
		<input type="hidden" id="page" name="page" readonly="readonly" placeholder="page" />
	</form>
	<div class="PageBox" id="pagingArea"></div>
</div>

<script
	src="<%=request.getContextPath()%>/resources/js/app/company/cominfo/cominfo.js"></script>