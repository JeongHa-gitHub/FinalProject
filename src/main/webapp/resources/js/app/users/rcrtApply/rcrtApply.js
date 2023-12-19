/**
 * 
 */

$(function(){
	
	let cPath = this.body.dataset.contextPath;
	
	/* 탭 클릭 시 호출되는 function */
	selectTab = (rcrtNo, rprocOrder) => {
		location.href = `${cPath}/user/apply/${rcrtNo}/${rprocOrder}`;
	}
	
	let rprocTypeno = $('.recruit-content').data("rprocTypeno");
	let rcrtNo = $('.recruit-content').data("rcrtNo");
	let rprocOrder = $('.recruit-content').data("rprocOrder");
	
	/* 서류 지원 정보 */
	let resumeSettings = {
		url : `${cPath}/user/apply/ajax/${rcrtNo}/${rprocOrder}`,
		dataType : "json",
		success : function(resp) {
			
			result = '';
			if(resp.dataList.length>0) {
				$.each(resp.dataList, function(i,v) {
					result += `
						<tr>
							<td>${v.company.companyNm}</td>
							<td>${v.recruit.rcrtTitle}</td>
							<td>${v.rProcedure.rprocSdate}~${v.rProcedure.rprocEdate}</td>
							<td>${v.aProcedure.aprocPass == 'Y' ? "합격" : 'N' ? "불합격" : "진행중"}</td>
							<td>${v.aProcedure.aprocDate}</td>
							<td href="#">${v.resumeTitle}</td>
						</tr>
					`;
				}); // $.each end
			} else {
				result += `
					<tr>
						<td colspan="6">해당 정보가 없습니다.</td>
					</tr>
				`;
			}
				$('.resume-tbody').html(result);
		},
		error : function(xhr) {
			console.log("상태 : "+xhr.status);
		}
	};
	
	/* 적성검사 지원 정보 */
	let aptSettings = {
		url : `${cPath}/user/apply/ajax/${rcrtNo}/${rprocOrder}`,
		dataType : "json",
		success : function(resp) {
			
			result = '';
			if(resp.dataList.length>0) {
				$.each(resp.dataList, function(i,v) {
					result += `
						<tr>
							<td>${v.company.companyNm}</td>
							<td>${v.recruit.rcrtTitle}</td>
							<td>${v.rProcedure.rprocSdate}~${v.rProcedure.rprocEdate}</td>
							<<td>${v.aProcedure.aprocPass == 'Y' ? "합격" : 'N' ? "불합격" : "진행중"}</td>
							<td>${v.aProcedure.aprocDate}</td>
						</tr>
					`;
				}); // $.each end
			} else {
				result += `
					<tr>
						<td colspan="5">해당 정보가 없습니다.</td>
					</tr>
				`;
			}
				$('.apt-tbody').html(result);
		},
		error : function(xhr) {
			console.log("상태 : "+xhr.status);
		}
	};
	
	/* 기술시험 지원 정보  */
	
	let techSettings = {
		url : `${cPath}/user/apply/ajax/${rcrtNo}/${rprocOrder}`,
		dataType : "json",
		success : function(resp) {
			
			result = '';
			if(resp.dataList.length>0) {
				$.each(resp.dataList, function(i,v) {
					result += `
						<tr>
							<td>${v.company.companyNm}</td>
							<td>${v.recruit.rcrtTitle}</td>
							<td>${v.rProcedure.rprocSdate}~${v.rProcedure.rprocEdate}</td>
							<td>${v.aProcedure.aprocPass == 'Y' ? "합격" : 'N' ? "불합격" : "진행중"}</td>
							<td>${v.aProcedure.aprocDate}</td>
						</tr>
					`;
				}); // $.each end
			} else {
				result += `
					<tr>
						<td colspan="5">해당 정보가 없습니다.</td>
					</tr>
				`;
			}
				$('.tech-tbody').html(result);
		},
		error : function(xhr) {
			console.log("상태 : "+xhr.status);
		}
	};
	
	/* 면접 지원 정보 */
	
	let intrSettings = {
		url : `${cPath}/user/apply/ajax/${rcrtNo}/${rprocOrder}`,
		dataType : "json",
		success : function(resp) {
			
			result = '';
			if(resp.dataList.length>0) {
				$.each(resp.dataList, function(i,v) {
					result += `
						<tr>
							<td>${v.company.companyNm}</td>
							<td>${v.recruit.rcrtTitle}</td>
							<td>${v.rProcedure.rprocSdate}~${v.rProcedure.rprocEdate}</td>
							<td>${v.aProcedure.aprocPass == 'Y' ? "합격" : 'N' ? "불합격" : "진행중"}</td>
							<td>${v.aProcedure.aprocDate}</td>
							<td>${v.interviewVO.intrTypeNm}</td>
							<td>${v.interviewVO.intrDate}</td>
							<td>${v.interviewVO.intrPlace}</td>
						</tr>
					`;
				}); // $.each end
			} else {
				result += `
					<tr>
						<td colspan="8">해당 정보가 없습니다.</td>
					</tr>
				`;
			}
				$('.intr-tbody').html(result);
		},
		error : function(xhr) {
			console.log("상태 : "+xhr.status);
		}
	};
	
})