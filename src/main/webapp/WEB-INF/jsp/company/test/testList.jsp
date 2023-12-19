<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 날짜 선택 api -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="<%=request.getContextPath()%>/resources/js/app/company/test/testList.js"></script>
<script>
	console.log("authId",<%=session.getAttribute("authId") %>);
</script>
<div id="content" class="basic_wide vix_main">
   <div class="wrap_content">
	<!-- 채용 절차 탭 -->
    <div class="area_payment">
        <div class="area_tab">
            <ul class="tabList twoList" role="tablist">
                <li class="inner inTab testClass select" role="tab" data-tab-order="1" id="T01"><p class="inTab"><span>적성검사</span></p></li>
                <li class="inner inTab testClass" role="tab" data-tab-order="2" id="T02"><p class="inTab"><span>기술시험</span></p></li>
            </ul>
        </div>

        <div class="tab_part">
        	<div class="box_lookup">
       			<c:set value='<%=session.getAttribute("authId") %>' var="authId" />
	        		<c:if test="${not empty authId }">
	                   <div class="box_right">
	                   		  
	                          <button type="button" class="btnSizeL colorWhtie" onclick='addTest("T01")'>적성검사 생성</button>
	                          <button type="button" class="btnSizeL colorWhtie" onclick='addTest("T02")'>기술시험 생성</button>
	                   </div>
                   </c:if>
            </div>
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
	                              <input type="text" name="eDate" id="eDate">
	                          </span>
	                          <div class="searchTypoBox">
	                              <input type="text" name="testTitle" class="inpTypo sword" placeholder="제목">
	                              <button type="button" class="btnSizeS colorBlue" id="testSearchBtn">검색</button>
	                          </div>
	                      </div>
	                    </div>
	                </div>
                </div>
                <div class="tblWrap">
                    <table class="sms-breakdown">
                       
                        <thead>
	                        <tr>
	                            <th scope="col">시험제목</th>
	                            <th scope="col">등록일</th>
	                        </tr>
                        </thead>
                        <tbody class="test-tbody" data-list-order="1">
		                    <!-- 적성검사 리스트 출력하는 곳 -->
                        </tbody>
                        <tbody class="test-tbody" data-list-order="2" style="display:none">
		                    <!-- 기술시험 리스트 출력하는 곳 -->
                        </tbody>
                    </table>
                
                </div>
                
                
               <div class="paging" id="paging">
                    <!-- 페이지 출력하는 곳 -->
		       </div>
		       
				<form action="<%=request.getContextPath()%>/company/test" id="searchForm">
					<input type="hidden" readonly name="testType" />
					<input type="hidden" readonly name="sDate" />
					<input type="hidden" readonly name="eDate" />
					<input type="hidden" readonly name="testTitle" />
					<input type="hidden" readonly name="page" />
				</form>
		       
            </div>
        </div>
    </div>
</div>
</div>


