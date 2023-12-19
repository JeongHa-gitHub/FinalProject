<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
 <!-- Begin Page Content -->
 <div class="container-fluid">

     <!-- Page Heading -->
     <h1 class="h3 mt-4 mb-4 text-gray-800">이벤트등록</h1>
     
     <div class="searchArea mb-3">
 
     </div>

     <!-- DataTales Example -->
     
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">이벤트내용</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive intvwTbl">
				 <!-- MEMBER테이블 -->
                <table class="table table-bordered" id="dataTable">
				    <tr>
				        <th>이벤트번호</th>
						<td><input type="text" name="" id="" class="" title="" value="" placeholder=""></td>
					</tr>
				    <tr>
				        <th>제목</th>
				        <td><input type="text" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				    <tr>
				        <th>내용</th>
				        <td><input type="text" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				    <tr>
				        <th>썸네일이미지</th>
				        <td><input type="text" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				    <tr>
				        <th>내용이미지</th>
				        <td><input type="text" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				    <tr>
				        <th>등록일자</th>
				        <td><input type="date" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				    <tr>
				        <th>시작일자</th>
				        <td><input type="date" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				    <tr>
				        <th>만료일자</th>
				        <td><input type="date" name="" id="" class="" title="" value="" placeholder=""></td>
				    </tr>
				   
				</table>
				<div style="float: right;">
					<a href="#" id="memDltBtn" class="btn btn-danger btn-icon-split">
                           <span class="text">취소</span>
                    </a>
					<a href="#" class="btn btn-info btn-icon-split">
                           <span class="text">등록</span>
                    </a>
				</div>
             </div>
         </div>
     </div>

 </div>
<script>
    document.getElementById("memDltBtn").addEventListener("click", function() {
        var confirmation = confirm("정말로 취소하시겠습니까?");
        
        if (confirmation) {
            alert("등록취소되었습니다.");
        } else {
            alert("등록취소가 취소되었습니다.");
        }
    });
</script>
  



	