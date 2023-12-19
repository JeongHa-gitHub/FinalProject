<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<div class="companyList">
	<div id="sp_main_wrapper" class="wrap_main_panel"
		data-default="domestic">

		<div class="main_option ">
			<ul class="tab_section">
				<li class="area_section on">
					<button type="button" class="btn_area btn_open_layer ">
						<span class="input_placeholder">지역</span> <span class="input_text"></span>
					</button>
				</li>
			</ul>
			<div class="wrap_section_contents">
				<div class="option_content area_section on">
					<h2 class="blind">지역 선택</h2>
					<div class="select_keyword">
						<div class="wrap_auto_keyword">
							<span class="ipt_keyword"> <label for="area_ipt_keyword"
								class="blind">검색어 입력</label> <input type="text" name="loc"
								id="area_ipt_keyword" placeholder="검색어 입력" autocomplete="off">
								<button type="button" class="btn_delete">삭제</button>
							</span>
							<div class="wrap_result has_result" id="autocomplete_has_result"
								style="display: none;">
								<div class="wrap_scroll" style="height: 183px;">
									<div class="ScrollBar">
										<div class="track">
											<div class="thumb">
												<div class="end"></div>
											</div>
										</div>
									</div>
									<div class="viewport">
										<div class="overview" style="top: 0px;">
											<ul class="list_keyword"></ul>
										</div>
									</div>
								</div>
								<div class="area_btn">
									<button type="button" class="btn_close">닫기</button>
								</div>
							</div>
							<div class="wrap_result no_result" id="autocomplete_no_result"
								style="display: none;">
								<p class="empty">검색결과가 없습니다.</p>
								<div class="area_btn">
									<button type="button" class="btn_close">닫기</button>
								</div>
							</div>
						</div>

						<script id="sp_area_auto_complete_tmpl"
							type="text/x-handlebars-template">          
        </script>
					</div>
					<!-- 카테고리 depth -->
					<div class="wrap_depth_category ">
						<h4 class="blind">카테고리 선택</h4>
						<div class="wrap_scroll depth1" style="height: 245px;">
							<div class="scrollbar" style="height: 245px;">
								<div class="track" style="height: 245px;">
									<div class="thumb" style="top: 4.7025px; height: 115.211px;">
										<div class="end"></div>
									</div>
								</div>
							</div>
							<div class="viewport">
								<div class="overview" style="top: -10px;">
									<ul>
										<script id="sp_area_1depth_template"
											type="text/x-handlebars-template">                     
                    </script>
										<li class="depth1_btn_wrapper on" id="depth1_btn_101000"><button
												type="button" class="depth1_btn_101000" data-code="101000">
												<span class="txt">서울 </span><span class="count">(57,470)</span>
											</button></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="wrap_scroll depth_check" style="height: 245px;">
							<div class="scrollbar" style="height: 245px;">
								<div class="track" style="height: 245px;">
									<div class="thumb" style="top: 0px; height: 179.179px;">
										<div class="end"></div>
									</div>
								</div>
							</div>
							<div class="viewport">
								<div class="overview" style="top: 0px;">
									<div class="wrap_list_check">
										<script id="sp_area_lastDepth_template"
											type="text/x-handlebars-template">
                   
                    </script>
										<ul class="list_check" id="sp_area_lastDepth_101000"
											style="display: block;">
											<li>
												<div class="inpChk">
													<input type="checkbox" id="loc_mcd_101000" name="loc_mcd[]"
														value="101000" data-is_representative="n"
														data-representative="" data-mcode="101000"
														data-check-type="all"> <label for="loc_mcd_101000"
														class="lbl"><span class="txt">서울전체</span></label>
												</div>
											</li>
										</ul>
										<div class="area_btn">
											<button type="button" class="btn_all_category"
												data-logging-flow="area">지역 펼쳐보기</button>
											<button type="button" class="btn_reset">지역 초기화</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="bg"></div>
		<div id="sp_preview" class="wrap_search_result preview_v2 resetting"
			style="">
			<div class="add_keyword">
				<div id="sp_preview_selected" class="keywords"
					style="display: none;"></div>
				<p class="result_txt">채용공고를 찾고 있습니다. 잠시만 기다려주세요.</p>
				<p class="reset_txt">검색조건을 설정해 주세요.</p>
			</div>
			<div class="area_btn">
				<button type="button" class="btn_expand" style="display: none;">펼쳐보기</button>
				<button type="button" class="btn_reset" style="display: none;">선택초기화</button>
			</div>
			<button type="button" id="search_btn" class="btn_search active">
				<span> <span class="count"><span id="search_count_txt">선택된
					</span><b id="sp_preview_total_cnt">0</b>건</span> <span id="search_btn_txt">검색하기</span>
				</span> <span class="ripple"></span>
			</button>
		</div>
	</div>
</div>







<div id="content" class="companyList">
	<div class="common_recruilt_list">
		<div class="area_title list_total_count">
			<h2>전체 채용정보</h2>
			<span class="total_count" id="total_count"><em>"${paging.totalRecord}"</em>건</span>
			<button type="button" class="btnSizeM resumeStatus colorBlue" onclick="window.location.href='${pageContext.request.contextPath }/company/companyInsert'"
			data-confirm-status="unconfirmed" style="float: right;">기업 등록하기</button>
		</div>
		<div class="list_info">
			<div class="list_select">
				<div class="InpBox">
					<select name="sort" id="sort">
						<option value="name" selected>이름순</option>
						<option value="hit">조회순</option>					
					</select>
				</div>
			</div>
		</div>
		<div class="listBody">
		</div>
	</div>
	
<%-- 	<form action="<c:url value='cominfo/companyListData'/>" id="searchForm" class="border"> --%>
<!-- 	<h4>전송 UI</h4>	 -->
<!-- 	<input type="text" id="currpage" name="page" readonly="readonly" placeholder="page"/> -->
<%-- </form> --%>

	<div class="PageBox" id="pagingArea">	
		</div>
</div>

<script src="<%=request.getContextPath()%>/resources/js/app/company/cominfo/cominfo.js"></script>