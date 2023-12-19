<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!-- 날짜 선택 api -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="<%=request.getContextPath()%>/resources/js/app/company/recruit/recruitList.js"></script>

<div id="content" class="basic_wide vix_main">
   <div class="wrap_content">
	<!-- 채용 절차 탭 -->
    <div class="area_payment">
        <div class="area_tab">
            <ul class="tabList twoList" role="tablist">
                <li class="inner inTab recruitListClass select" role="tab" data-tab-order="1" data-tab-category="unClosed"><p class="inTab"><span>진행중</span></p></li>
                <li class="inner inTab recruitListClass" role="tab" data-tab-order="2" data-tab-category="closed"><p class="inTab"><span>마감</span></p></li>
            </ul>
        </div>

        <div class="tab_part">
			<div class="box_lookup"></div>
			
            <!-- 리스트 출력 영역 -->
            <div id="list_position">
            
            	<!-- 검색 UI -->
            	<div id="searchUI">
	                <div class="area_list_top">
	                    <div class="box_center">
	                       <div class="search_right">
	                          <span class="inpSel">
	                              <input type="text" name="sDate" id="sDate">
	                          </span>
	                          <span class="inpSel">
	                              <input type="text" name="eDate" id="eDate" >
	                          </span>
	                          <div class="searchTypoBox">
	                              <input type="text" name="rcrtTitle" class="inpTypo sword" placeholder="제목">
	                              <button type="button" class="btnSizeS colorBlue" id="recruitListSearchBtn">검색</button>
	                          </div>
                              <select name="sortCategory" id="sortCategory">
                              	<option value="date" selected>등록일순</option>
                              	<option value="eDate">마감일순</option>
                              </select>
	                      </div>
	                    </div>
	                </div>
                </div>
                
                <div class="tblWrap">
	                <!--  리스트 출력되는 곳 -->
	                <div class="recruitListContWrap" data-list-order="1">
	                	<!-- 진행중 공고 출력되는곳 -->
					</div>
					<div class="recruitListContWrap" data-list-order="2" style="display:none">
						<!-- 마감 공고 출력되는곳 -->
					</div>
                </div>
                
                
               <div class="paging" id="paging">
                    <!-- 페이지 출력하는 곳 -->
                    
		       </div>
		       
				<form action="<%=request.getContextPath()%>/company/test" id="searchForm">
					<input type="hidden" readonly name="sDate" placeholder="sDate" />
					<input type="hidden" readonly name="eDate" placeholder="eDate" />
					<input type="hidden" readonly name="rcrtTitle" placeholder="rcrtTitle" />
					<input type="hidden" readonly name="tabCategory" placeholder="tabCategory" />
					<input type="hidden" readonly name="sortCategory" placeholder="sortCategory" />
					<input type="hidden" readonly name="page" placeholder="page" />
				</form>
		       
            </div>
        </div>
    </div>
</div>
</div>


