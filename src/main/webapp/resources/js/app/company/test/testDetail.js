/**
 * 
 */

$(function(){
	
	const cPath = this.body.dataset.contextPath;
	
	/* 시험지 목록 조회 버튼 클릭 */
	$('#testListBtn').on("click",function(){
		location.href = `${cPath}/company/testListUI`;
	})
	
	/* 시험지 수정 버튼 클릭  */
	$('#testModBtn').on("click",function(){
		let testType = $(this).data("testType");
		let testNo = $(this).data("testNo");
		location.href = `${cPath}/company/test/${testType}/${testNo}/edit`;
	})
	
	/* 시험지 삭제 버튼 클릭 */
	$('#testDelBtn').on("click",function(){
		let password = prompt("비밀번호 입력 : ");
		deleteForm.memPass.value = password;
		deleteForm.requestSubmit();
	})
	
})

