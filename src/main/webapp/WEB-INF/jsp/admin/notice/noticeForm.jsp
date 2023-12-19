<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

 <!-- Begin Page Content -->
 <div class="container-fluid">
    <!-- Page Heading -->
     <h1 class="h3 mt-4 mb-4 text-gray-800">공지 등록</h1>

     <!-- DataTales Example -->
     
     <div class="card shadow mb-4">
        <form id="frm" name="frm" method="post" action="/FinalProject/noticeMgmt/createPost" >
		<div class="boardFormWrap" style="justify-content:center;align-items:center;display:flex;">
			<div class="contents_container qna_write_wrap">
				<div class="qna_write_selection">
					<span class="qna_category_tit">공지사항 작성</span>
				</div>
				<div class="qna_wright_cont">
					<input type="text" name="noticeTitle" id="noticeTitle" value=""
						class="qna_subject_input" title="제목 입력" placeholder="제목을 입력해주세요" required />
					<textarea rows="3" cols="10" id="noticeContent" name="noticeContent" style="display:none;"></textarea>
					<div class="qna_write_post">
						<div class="editor_wrap h_max" style="overflow: auto;"
							contenteditable="true" id="frbWriteDiv" name="frbWriteDiv" data-ph="내용을 입력해주세요">
						</div>
						<div class="qna_input_bottom" style="float:right; padding-right:0;">
							<a href="#" id="inputDataNotice" class="btn btn-secondary btn-icon-split">
		                      <span class="text textWhite">자동완성</span>
		                  </a>				
						</div>
					</div>
				</div>
				<div class="qna_write_foot mb-5">
					<button type="button" id="btnSubmit" class="BtnType SizeXL btn_qna_write">공지 등록</button>
				</div>
			</div>
		</div>
		</form>
     </div>

 </div>
<script type="text/javascript">
$(function(){
	$("#btnSubmit").on("click",function(){
		let frbWriteDiv = $("#frbWriteDiv").html();
		$("#noticeContent").val(frbWriteDiv);
		
		$("#frm").submit();
	});
});

$("#inputDataNotice").on("click",function(){
    $("#noticeTitle").val("12/22(금) 전체 서비스 일시 중지 안내");
    $("#frbWriteDiv").html("더 나은 서비스를 제공해드리기 위해 시스템 점검을 진행합니다. 빠른 시간안에 작업을 마지고 정상적인 서비스를 제공하도록 노력하겠습니다.");
 });
</script>
  



	