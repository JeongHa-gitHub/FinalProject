<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!-- Sidebar -->
<div class="leftMenuWrap">
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath() %>/indexAdmin">
                 <i class="fas fa-fw fa-tachometer-alt"></i> <span>대시보드</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
            

			 <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/promotionMgmtView">
                     <i class="fa fa-window-restore"></i>
                    <span>프로모션관리</span></a>
            </li>	
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#order"
                    aria-expanded="true" aria-controls="collapsePages">
                     <i class="fa fa-credit-card-alt"></i>
                    <span>결제관리</span>
                </a>
                <div id="order" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="<%=request.getContextPath()%>/imgAdPayMgmtView">이미지광고</a>
                        <a class="collapse-item" href="<%=request.getContextPath()%>/payMgmtView">결제내역</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#member"
                    aria-expanded="true" aria-controls="collapsePages">
                     <i class="fa fa-address-book"></i>
                    <span>회원관리</span>
                </a>
                <div id="member" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       
                        <a class="collapse-item" href="<%=request.getContextPath() %>/memberMgmt">개인회원</a>
                        <a class="collapse-item" href="<%=request.getContextPath() %>/memberCmpny">기업회원</a>
                    </div>
                </div>
            </li>		
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#lecture"
                    aria-expanded="true" aria-controls="collapsePages">
                     <i class="fa fa-list"></i>
                    <span>공지사항관리</span>
                </a>
                <div id="lecture" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       
                        <a class="collapse-item" href="<%=request.getContextPath() %>/noticeMgmt">공지사항</a>
                        <a class="collapse-item" href="<%=request.getContextPath() %>/questionMgmt">1:1문의</a>

                    </div>
                </div>
            </li>	
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#counseling"
                    aria-expanded="true" aria-controls="consulting">
                     <i class="fa fa-university"></i>
                    <span>기업관리</span>
                </a>
                <div id="counseling" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       
                        <a class="collapse-item" href="<%=request.getContextPath() %>/bsnsLcnsNmbr">사업자등록번호</a>
                        <a class="collapse-item" href="<%=request.getContextPath() %>/recruitMgmt">채용공고</a>
                    </div>
                </div>
            </li>	
             <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/intvwRevMgmt">
                     <i class="fas fa-fw fa-cog"></i>
                    <span>면접후기관리</span>
                </a>
            </li>	
             <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/couponMgmt">
                     <i class="fa fa-copyright"></i>
                    <span>쿠폰관리</span>
                </a>
            </li>	
             <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/eventMgmt">
                     <i class="fa fa-bullhorn"></i>
                    <span>이벤트관리</span>
                </a>
            </li>	
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/freeBoardMgmt">
                     <i class="fa fa-server"></i>
                    <span>자유게시판관리</span></a>
            </li>	
		</ul>
</div>