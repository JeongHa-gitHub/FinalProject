<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
 <!-- Begin Page Content -->
 <div class="container-fluid">

     <!-- Page Heading -->
     <h1 class="h3 mt-4 mb-4 text-gray-800">비속어 필터링</h1>
	
	 <div class="search_right">
            <div class="searchTypoBox">
                    <input type="text" name="keyword" id="keyword" class="inpTypo" style="width:276px;" title="" value="" placeholder="새비속어추가">
                    <a href="#" class="btn btn-secondary btn-icon-split">
						<span class="text">추가</span>
                    </a>
            </div>
     </div>    
   
     <div class="card shadow mt-4 mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">비속어목록</h6>
         </div>
         <div class="card-body">
             <div class="slangTxt">
             시발
             <i class="fa-solid fa-x"></i>
             </div>
         </div>
     </div>
     
      <!-- DataTales Example -->
     <div class="tblTopBtn">
     	<a href="#" class="btn btn-info btn-icon-split">
        	 <span class="text">저장</span>
     	</a>
     </div>

 </div>

 
 
	
