<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
 <!-- Begin Page Content -->
 <div class="container-fluid">

     <!-- Page Heading -->
     <h1 class="h3 mt-4 mb-4 text-gray-800">면접후기 상세보기</h1>
     
     <div class="searchArea mb-3">
 
     </div>

     <!-- DataTales Example -->
     
     <div class="card shadow mb-4">
         <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">면접후기목록</h6>
         </div>
         <div class="card-body">
             <div class="table-responsive intvwTbl">
				 <!-- MEMBER테이블 -->
                <table class="table table-bordered" id="dataTable">
				    <tr>
				        <th>면접후기번호</th>
				        <td>0001</td>
				    </tr>
				    <tr>
				        <th>면접번호</th>
				        <td>아이디</td>
				    </tr>
				    <tr>
				        <th>전반적평가</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>난이도</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>면접및전형유형</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>면접인원</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>전형및면접진행방식</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>면접질문</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>면접TIP및특이사항</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>합격여부</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>작성날짜</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>승인여부</th>
				        <td></td>
				    </tr>
				    <tr>
				        <th>신고여부</th>
				        <td></td>
				    </tr>
				</table>
				<div style="float: right;">
					<a href="#" id="memDltBtn" class="btn btn-danger btn-icon-split">
                           <span class="text">반려</span>
                    </a>
					<a href="#" class="btn btn-info btn-icon-split">
                           <span class="text">승인</span>
                    </a>
				</div>
             </div>
         </div>
     </div>

 </div>
<script>
    // 버튼을 클릭할 때 대화식 알림 상자를 띄우는 함수
    document.getElementById("memDltBtn").addEventListener("click", function() {
        var reason = prompt("반려 시 해당 기업에게 알림이 전송됩니다.\n\n정말로 반려하시겠습니까?\n\n반려 사유를 입력하세요:");
        
        if (reason) {
            var confirmation = confirm("정말로 반려하시겠습니까?\n\n반려 사유: " + reason);
            
            if (confirmation) {
                // "예"를 선택했을 때의 동작
                alert("반려되었습니다.");
            } else {
                // "아니오"를 선택했을 때의 동작
                alert("반려가 취소되었습니다.");
            }
        } else {
            alert("반려 사유를 입력하지 않았습니다. 반려가 취소되었습니다.");
        }
    });
</script>
  



	