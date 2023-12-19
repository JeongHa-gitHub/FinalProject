<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.member" var="member"/>
</security:authorize>
<%-- <p>개똥이 : ${member}</p> --%>
<form id="frm" name="frm" method="post" action="/FinalProject/frBoardList/createPost?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
<div class="boardFormWrap" style="justify-content:center;align-items:center;display:flex;">
	<div class="contents_container qna_write_wrap">
		<div class="qna_write_selection">
			<span class="qna_category_tit">자유게시글 작성</span>
		</div>
		<div class="qna_wright_cont">
			<input type="text" name="frbTitle" id="frbTitle" value=""
				class="qna_subject_input" title="제목 입력" placeholder="제목을 입력해주세요" required />
			<textarea rows="3" cols="10" id="frbWrite" name="frbWrite" style="display:none;"></textarea>
			<div class="qna_write_post">
				<div class="editor_wrap h_max" style="overflow: auto;"
					contenteditable="true" id="frbWriteDiv" name="frbWriteDiv"
					data-ph="내용을 입력해주세요

* 아이디의 첫 글자를 제외한 뒷 부분은 *로 등록됩니다.
* 저작권 침해, 음란, 청소년 유해물, 기타 위법자료 등을 게시할 경우 게시물은 경고 없이 삭제 됩니다."></div>
				<div class="qna_input_bottom">
					<input type="file" name="uploadFile" id="uploadFile" accept="image/*" multiple style="display: none" /> 
						<label for="uploadFile" class="btn_image_add">이미지첨부</label> 
						<span class="post_count"><em>0</em>/2000자</span>
				</div>
			</div>
		</div>
		<div class="qna_write_foot">
			<button type="button" id="btnSubmit" class="BtnType SizeXL btn_qna_write">게시글 등록</button>
		</div>
	</div>
</div>
<security:csrfInput/>
</form>
<script type="text/javascript">
$(function(){
	$("#btnSubmit").on("click",function(){
		let frbWriteDiv = $("#frbWriteDiv").html();
		$("#frbWrite").val(frbWriteDiv);
		$("#frm").submit();
	});
	
	//내용의 글자수를 표시해줌
	$("#frbWriteDiv").keydown(function(e) {
		$(".post_count").children("em").html($(this).html().length);
		  console.log($(this).html().length);
	});
});
</script>
