<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
   prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="sri_section">
   <div id="content" class="basic_wide vix_main">
      <div class="main_content">
          <div class="section_concierge">
                 <ul class="concierge_dashboard cmpnyBox">
                   <li class="item">
                         <div class="concierge_header">
                           <strong class="title"><span class="ico ico_prod"></span>공지사항</strong>
                        </div>
                       <div class="concierge_cont">
                           <ul class="board_list">
                         <li>
                             <a href="#" class="board_link">
                                 <span class="type">공지</span>
                                 <p class="tit">${resultMap.noticeList[0].noticeTitle }</p>
                                 <span class="date">${resultMap.noticeList[0].noticeDate }</span>
                             </a>
                         </li>
                         <li>
                             <a href="#" class="board_link">
                                 <span class="type">공지</span>
                                 <p class="tit">${resultMap.noticeList[1].noticeTitle }</p>
                                 <span class="date">${resultMap.noticeList[1].noticeDate }</span>
                             </a>
                         </li>
                         <li>
                             <a href="#" class="board_link">
                                 <span class="type">공지</span>
                                 <p class="tit">${resultMap.noticeList[2].noticeTitle }</p>
                                 <span class="date">${resultMap.noticeList[2].noticeDate }</span>
                             </a>
                         </li>
                         <li>
                             <a href="#" class="board_link">
                                 <span class="type">공지</span>
                                 <p class="tit">${resultMap.noticeList[3].noticeTitle }</p>
                                 <span class="date">${resultMap.noticeList[3].noticeDate }</span>
                             </a>
                         </li>
                         <li>
                             <a href="#" class="board_link">
                                 <span class="type">공지</span>
                                 <p class="tit">${resultMap.noticeList[4].noticeTitle }</p>
                                 <span class="date">${resultMap.noticeList[4].noticeDate }</span>
                             </a>
                         </li>
                     
                     </ul>                  
                        </div>
                   </li>
                   <li class="item">
                      <div class="concierge_header">
                           <strong class="title"><span class="ico ico_recruit"></span>기업정보</strong>                                 
                      </div>
                      <div class="concierge_cont">
	                     <div class="company_info">	                      	                        
	                         <div class="company_top">
							    <c:choose>
							        <c:when test="${empty resultMap.companyList}">
							            <p class="cpnyEmtyInfo">등록된 기업정보가 없습니다</p>
							        </c:when>
							        <c:otherwise>
							            <div class="logo_box TipBox">
							                <button type="button" class="logo cmpLgo">
							                    <span class="thumb">
							                        <img class="mainLogo" src="<%=request.getContextPath()%>/resources/upload/cominfo/${resultMap.companyList[0].cominfoFile}" alt="Logo">
							                    </span>
							                </button>
							                <div class="TipCont LeftBottom logo_tip blind">
							                    <span class="Tail">
							                        <svg class="icon_tail">
							                            <use xlink:href="#TipBox_tail_side"></use>
							                        </svg>
							                    </span>
							                </div>
							            </div>
							            <h2 class="name">${resultMap.companyList[0].companyNm }</h2>
							            <span class="member_condition certify">${resultMap.companyList[0].companyPermission }</span>
							        </c:otherwise>
							    </c:choose>
							</div>
	                         
	                         
	                         <div class="company_name">
	                             <p class="person">
	                                 담당자<strong>${resultMap.companyList[0].companyDnm }</strong>
	                             </p>      
	                             <button type="button" class="btn_set">
	                                 <span class="blind">설정하기</span>
	                                 <span><a href="<%=request.getContextPath()%>/companyMemInfo"><i class="fa-solid fa-gear"></i></a> </span>
	                             </button>
	                         </div>
	                     </div>                         
                      </div>
                   </li>
                </ul>
          </div>
        
         <div class="section_status">
				<div class="recruit">
			    	<div class="box">
			        	<h2 class="section_title">공고 현황</h2>
			            	<div class="progress">
							    <div class="title">
							        <strong>
							            <span class="type">진행중 공고</span>
							            <a href="${pageContext.request.contextPath }/company/recruitListUI" class="more">
							            <span class="count unclosedRecruitProcedureCount">${resultMap.unClosedRecruitProcedureCount }</span>
							            <span class="unit">건</span>전체보기</a>
							        </strong>
							    </div>
							    <ul class="board_list bdLst">
								    <li>
								        <a href="#" class="board_link">
								            <p class="tit">${resultMap.unclosedRecruitProcedureList[0].rcrtTitle }</p>
								        </a>
								    </li>
								
								    <li>
								        <a href="#" class="board_link">
								            <p class="tit">${resultMap.unclosedRecruitProcedureList[1].rcrtTitle }</p>
								        </a>
								    </li>
								
								</ul>
							</div>                            
							<div class="progress">
							    <div class="title">
							        <strong>
							            <span class="type">마감된 공고</span>
							            <a href="${pageContext.request.contextPath }/company/recruitListUI" class="more">
							            <span class="count closedRecruitProcedureCount">${resultMap.closedRecruitProcedureCount }</span>
							            <span class="unit">건</span>전체보기</a>
							        </strong>
							    </div>
			   				
								<ul class="board_list bdLst">
								    <li>
								        <a href="#" class="board_link">
								            <p class="tit">${resultMap.closedRecruitProcedureList[0].rcrtTitle }</p>
								        </a>
								    </li>
								
								    <li>
								        <a href="#" class="board_link">
								            <p class="tit">${resultMap.closedRecruitProcedureList[1].rcrtTitle }</p>
								        </a>
								    </li>
								
								</ul>   
							</div>
							<a href="${pageContext.request.contextPath }/company/testListUI" class="btnSizeL colorWhite testLink"><i class="fa-solid fa-pencil"></i>시험지 보기</a>
			         </div>
				</div>
			    <div class="position asdf">
			    	<div class="box">
				        <h2 class="section_title">내 프로모션</h2>
				       	<div class="progresses progress">
						    <div class="title">
						        <strong>
						            <span class="type">진행중 이미지광고</span>
						            <a href="${pageContext.request.contextPath }/companyMyPromotionView" class="more">
							            <span class="count">${resultMap.countValidImgAdvrtList}</span>
							            <span class="unit">건</span>전체보기
						            </a>
						        </strong>
						    </div>
						</div>
						<div class="progresses progress">
						    <div class="title">
						        <strong>
						            <span class="type">진행중 기업광고</span>
						            <a href="${pageContext.request.contextPath }/companyMyPromotionView" class="more"><span class="count">${resultMap.countValidCmpAdvrtList}</span>
						            <span class="unit">건</span>전체보기</a>
						        </strong>
						    </div>
						</div> 
 						<div class="no_data noDataStyle"></div>  
			        </div>
				</div>
			</div>

         <div class="banner_box" style="">
             <a href="https://billing.saramin.co.kr/products/recruit-package" target="_blank" onmousedown="pushDataLayer('ga_lead', 'company_main', 'content_banner', 'center_banner');">
                 <div class="banner_txt">
                     <h3 class="tit" style="color: #fff">NEW 채용광고 패키지</h3>
                     <p class="txt" style="color: #fff">#고민말고 #잘모를땐 패키지,  특별 할인 최대 58%</p>
                 </div>
                 <img src="https://www.saraminbanner.co.kr/new/sub/2023/11/s4eob0_l233-1brdx6z_.png" alt="NEW 채용광고 패키지">
             </a>
         </div>
      </div>
    </div>
</div>