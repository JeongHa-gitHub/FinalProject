<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div id="sri_section" class="has_banner qnaListWrap">
    <div id="sri_wrap">
        <div id="content">
            <div class="wrap_title_recruit">
                <h1 class="title_common">고객센터</h1>
            </div>
            <div class="navigation_help_depth2"></div>
            <!-- 하위 메뉴 리스트 -->
            <div class="navigation_help_depth3">
                <ul>
                    <li><a class="" href="<%=request.getContextPath() %>/member/noticeList" data-nav-track="ga_lead|section-gnb|help|notice_notice"><span>공지사항</span></a></li>
                    <li><a class="selected" href="<%=request.getContextPath() %>/member/qna/qnaList" data-nav-track="ga_lead|section-gnb|help|notice_event"><span>1:1문의</span></a></li>
                    <li><a class="" href="<%=request.getContextPath()%>/eventIng.do" data-nav-track="ga_lead|section-gnb|help|notice_event"><span>이벤트</span></a></li>
                </ul>
            </div>
            <!-- 하웨 메뉴 리스트 끝 -->

            <!-- 게시판 -->
            <div class="wrap_board">
                <!-- 검색 -->
                <div class="search_area">
                    <strong class="count">총 <span class="num">${paging.totalRecord }</span>건
                    </strong>
<%--                     <a href="<%=request.getContextPath()%>/member/qna/form" class="btn btn-primary" id="insertBtn">문의글 작성</a> --%>
                </div>
                <!-- 검색 끝 -->

                <!-- 데이터 -->
                <div class="tblType">
                    <table>
                        <caption class="blind">게시판</caption>
                        <thead>
                            <tr>
                                <th style="width: 100px;">번호</th>
                                <th style="width: 200px;">제목</th>
                                <th style="width: 107px;">문의일자</th>
                                <th style="width: 107px;">답변여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="qnaList" value="${paging.dataList }" />
                            <c:if test="${empty qnaList }">
                                <tr>
                                    <td colspan="4">문의내역이 없습니다.</td>
                                </tr>
                            </c:if>
                            <c:if test="${not empty qnaList }">
                                <c:forEach items="${qnaList }" var="qna">
                                    <tr>
                                        <td>${qna.rnum }</td>
                                        <td>
                                        	<a href="<%=request.getContextPath() %>/member/qna/${qna.qstnNo}">${qna.qstnTitle }</a>
                                        </td>
                                        <td>${qna.qstnDate }</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${qna.qstnReply eq 'N'}">답변 대기중</c:when>
                                                <c:when test="${qna.qstnReply eq 'Y'}">답변완료</c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                        </tbody>
                    </table>
                </div>
                  <br />
                <div class="qna_list_sort" >
					<div class="InpBox"></div>
					<button href="" type="button" class="BtnType SizeL btn_qna_write" style="float:right;justify-context:right;display:flex;" 
					onclick="location.href='/FinalProject/member/qna/create'">게시글 작성</button>
				</div>
                <!-- 데이터 끝 -->
                <tr>
                    <td colspan="7">${paging.pagingHTML }</td>
                </tr>
                <form:form modelAttribute="simpleCondition" method="get" id="searchForm">
                    <form:input type="hidden" path="searchType" readonly="readonly" placeholder="searchType" />
                    <form:input type="hidden" path="searchWord" readonly="readonly" placeholder="searchWord" />
                    <input type="hidden" name="page" readonly="readonly" placeholder="page" />
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