<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top">
	<a href="<%=request.getContextPath()%>/" class="bi" aria-label="사람인" data-nav-track="ga_lead|main-gnb|global_menu|ci"> 
		<span class="frame"> 
			<img class="mainLogo" style="width: 5rem;" src="<%=request.getContextPath()%>/resources/images/mainLogo.png" alt="Logo">
		</span>
	</a>

    <ul class="navbar-nav ml-auto">
    	<li class="nav-item no-arrow">
         	<a class="cpyPgLink" href="<%=request.getContextPath()%>/indexCompany">
         		<i class="fa-solid fa-house-user fa-sm fa-fw"></i> 기업페이지
         	</a>
         </li>
         <div class="topbar-divider d-none d-sm-block"></div>
         <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자</span>
                <span class="user_name"><i class="fa-regular fa-user"></i></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#"  onclick="submitForm();" href="javascript:;">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    로그아웃
                </a>
            </div>
        </li>
    </ul>
</nav>

<script>
//로그아웃
function submitForm() {
    var form = $('<form>', {
        'method': 'post',
        'action': '<%=request.getContextPath()%>/logoutProcess'
    });
    
    $('body').append(form);
    
    form.submit();
}
</script>