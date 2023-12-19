<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<div class="rctRgLst">
<!-- 채용공고 리스트 -->
	<div class="common_recruilt_list">
		<h1 class="recruit_hot_header swHeader title_common">지역별 채용공고</h1>
		<div class="area_title list_total_count mt-4">
			<h2>전체 채용정보</h2>
			<em id="total_Record" class="totalRecord"></em><span>건</span>
		</div>
		<div class="list_info">
			<div class="list_select">
				<div class="InpBox">
					<!-- 			검색 필터 -->
					<div id="searchUI" class="searchUI">
						<select class="swselect" name="tregCode" id="tregCode">
							<option value>상위지역 선택</option>
							<c:forEach items="${TregCodeList}" var="Treg">
								<option value="${Treg.regCode}" id="${Treg.regCode}"
									class="${Treg.regCode}" label="${Treg.regNm}"></option>
							</c:forEach>
						</select> <select class="swselect" name="regCode" id="regCode">
							<option value>하위지역 선택</option>
							<c:forEach items="${regCodeList}" var="reg">
								<option value="${reg.regCode}" id="${reg.regCode}"
									class="${reg.tregCode }" label="${reg.regNm}"></option>
							</c:forEach>
						</select>
						<div class="InpBox inpBoxStyle">
							<div class="col-auto">
								<input type="text" name="rcrtTitle" placeholder="공고제목을 입력하세요"
									class="form-control swText" />
							</div>
							<div class="col-auto">
								<input type="button" value="검색" id="searchBtn"
									class="btn btn-primary" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 	리스트 시작  -->
	<div id="default_list_wrap" style="position: relative">
		<section class="list_recruiting">
			<h2 class="blind">공고리스트</h2>
			<div class="list_body">
				<div id="rec-46883303" class="list_item">
					<div class="similar_recruit"></div>
				</div>
			</div>
		</section>
		<div class="PageBox" id="pagingArea"></div>
	</div>
	<!-- 				리스트 끝 -->
	<!--전송하는 hidden폼 페이징랑 검색 동시에 -->
	<form id="searchForm" method="get">
		<input type="hidden" name="tregCode"  readonly="readonly" placeholder="tregCode" />
		<input type="hidden" name="regCode"  readonly="readonly" placeholder="regCode" />
		<input type="hidden" name="rcrtTitle"  readonly="readonly" placeholder="rcrtTitle" />
		<input type="hidden" id="currpage" name="page" readonly="readonly" placeholder="page" />
	</form >
</div>
<!-- 모달 시작 -->
<div id="mModal" class="modal fade" data-bs-animation="false">
	<div class="modal-dialog">
		<div class="modal-content swContent">
			<!-- Modal Header -->
			<div class="modal-header">
				<h2 class="modal-title">${recruit.rcrtTitle}</h2>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<!-- Modal body -->
			<div class="modal-body modalBody">
				<div id="swmodal"></div>
				<div id="capture" style="padding: 10px; background:">
					<div id="resumeDetail"></div>
				</div>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn btn-info btn-icon-split" id="modalapplyBtn">
					<span class="text">지원</span>
				</a>
			</div>
		</div>
	</div>
</div>
<!--모달 끝 -->  

<script type="text/javascript">

// 함수 속 함수는 함수 속에서만 부를 수 있음
// 밖에서 불러야 되는 건 전역함수로 밖에 있어야 함!

// 지원 시작

//이력서 상세정보! 이미지로 만들기...

let swTitle;  //이력서 제목
const fSWresumeSel = (pThis)=>{
   console.log("체킁 이력서번호:",pThis.value);
   
   let resumeNo = pThis.value; //이력서 번호
   
   
   $.ajax({
      type:"get",
      url: `/FinalProject/apply/\${resumeNo}`,
   //   data:"",
      dataType:"json",
      success:function(resp){
         console.log("체킁 해당이력서정보",resp);
         var resume = resp.resume  //이력서
         var eduList = resp.eduList //학력
         var cerList = resp.cerList //자격증
         var covList = resp.covList //??
         var lagList = resp.lagList //어학
         var inaList = resp.inaList //대외활동
         var ostList = resp.ostList //해외연수
         var carList = resp.carList //경력
         
         console.log("eduList:",eduList)
         console.log("resume:",resume)
           swTitle = resume.resumeTitle;
         
         
         let code=`
        	 <div class="resumeswcontainer">
            <div class="swsection2">
        	     <h1 class="swh1">\${resume.resumeTitle}</h1>
        	     <h2 class="swh2 swhighlight">기본정보</h2>
        	    <div class="swswcompany-info">
        	    <img id="jyImg" class="swImg" alt="" src="<%=request.getContextPath()%>/recruit/usersInfo\${resume.users.usersImg}"/>         
        	    `;
                   if(carList.length > 0){
                  code+=`<p class="point-swtext"><span class="swhighlight">이름:</span> \${resume.users.usersNm}(경력)</span></p>`;
                  }else{
                  code+=`<p class="point-swtext"><span class="swhighlight">이름:</span> \${resume.users.usersNm}(신입)</span></p>`;
                   }
        	        
                 if(resume.users.usersGen =="F"){
                  code+=`<p class="point-swtext"><span class="swhighlight">성별:</span> 여자</p>`;
                 }else{
                  code+=`<p class="point-swtext"><span class="swhighlight">성별:</span> 남자</p>`;
                 }
                  let birthYear = parseInt(resume.users.usersBir);
                  let currentYear = new Date().getFullYear();
                  let age = currentYear - birthYear;
                 code+=`<p class="point-swtext"><span class="swhighlight">나이:</span> \${resume.users.usersBir}년 (나이 \${age} 세)</p>`;
                 code+=`
                        <p class="point-swtext"><span class="swhighlight">이메일:</span> \${resume.member.memMail }</p>
        	               <p class="point-swtext"><span class="swhighlight">전화번호:</span> \${resume.member.memTel }</p>
        	               <p class="point-swtext"><span class="swhighlight">우편번호:</span> \${resume.member.memZip }</p>
        	               <p class="point-swtext"><span class="swhighlight">주소:</span> \${resume.member.memAddr1 }</p>
        	    </div>
            </div>
        	    <div class="swsection2">
        	        <h2 class="swh2 swhighlight">경력</h2>`;
               if (carList.length > 0) {
                  $.each(carList, function(i, car) {
                     code += `
                     <div class="swcompany-info">
                           <h3>\${car.crCompanynm}</h3>
                           <p><span class="swhighlight"></span> \${car.crStdate || ''} ~ \${car.crEndate || ''}</p>
                           <p><span class="swhighlight"></span> \${car.crContent || ''}</p>
                     </div>`;
                  });
               } else {
                  code += `<p class="point-swtext">경력없음</p>`;
               }
               code += `
             </div>
             <div class="swsection2">
                  <h2 class="swh2 swhighlight">학력</h2>`;
               if(eduList.length > 0){
                  $.each(eduList,function(i,edu){
                     code += `
                     <div class="swcompany-info">
                           <h3>\${edu.eduSchoolnm } \${edu.eduType || ''}</h3>
                           <p><span class="swhighlight"></span> \${edu.eduStdate || ''} ~\${edu.eduEndate || ''} (\${edu.eduGraduate || ''})</p>
                           <p><span class="swhighlight"></span> \${edu.eduMajornm || ''}</p>`;
                          //모르겠음
                           let eduGrade = parseFloat(edu.eduGrade);  // 문자열 또는 정수에서 실수로 변환
                           let eduStandardGrade = parseFloat(edu.eduStandardGrade);
                           if (!isNaN(eduGrade) && !isNaN(eduStandardGrade) && edu.eduGrade !== 0.0 && edu.eduStandardGrade !== 0.0) {
                           code+=`<p><span class="swhighlight">\${edu.eduGrade.toFixed(2) || ''} / \${edu.eduStandardGrade.toFixed(2) || ''}</p>`;
                              console.log("값",eduGrade)
                        }
             code+=`</div>`;
                  });
               }else{
                  code += `<p class="point-swtext">학력 없음</p>`;
               } //eduList 첫번째.if
               code+=`
               </div>
               <div class="swsection2">
                  <h2 class="swh2 swhighlight">경제/활동/교육</h2>`;
               if(inaList.length > 0){
                  $.each(inaList,function(i,ina){
                     code+=`
                     <div class="swcompany-info">
                        <h3>\${ina.iaName || ''}</h3>
                        <p><span class="swhighlight"></span>\${ina.iaStdate || ''} ~ \${ina.iaEndate || ''}</p>
                        <p><span class="swhighlight"></span> \${ina.iaContent || ''}</p>
                        </div>`;
                  });
               }else{
                  code += `<p class="point-swtext">경제/활동/교육 없음</p>`;
               }
               code+=`   
                  <div class="swsection2">
                  <h2 class="swh2 swhighlight">해외연수</h2>`;
               if(ostList.length > 0 ){
                  $.each(ostList,function(i,ost){
                     code+=`
                     <div class="swcompany-info">
                        <h3>\${ost.osCountrynm || ''}</h3>
                        <p><span class="swhighlight"></span>\${ost.osStdate || ''} ~ \${ost.osEndate || ''}</p>
                        <p><span class="swhighlight"></span> \${ost.osContent || ''}</p>
                     </div>`;
                  });
               }else{
                  code += `<p class="point-swtext">해외연수 없음</p>`;
               }
               code+=`
               <div class="swsection2">
                  <h2 class="swh2 swhighlight">자격증</h2>`;
               if(cerList.length > 0){
                  $.each(cerList,function(i,cer){
                     code+=`
                     <div class="swcompany-info">
                        <h3>\${cer.cerNm || ''}</h3>
                        <p><span class="swhighlight"></span>\${cer.cerDateAcqst || ''}</p>
                     </div>`;
                  });
               }else{
                  code += `<p class="point-swtext">해외연수 없음</p>`;
               }
               code+=`
               <div class="swsection2">
                  <h2 class="swh2 swhighlight">어학</h2>`;
               if(lagList.length > 0){
                  $.each(lagList,function(i,lag){
                     code+=`
                     <div class="swcompany-info">
                        <h3>\${lag.lagTestnm || ''}(\${lag.lagLevel || ''}/PASS)</h3>
                        <p><span class="swhighlight"></span>\${lag.lagDateAcqst || ''}</p>
                        <p><span class="swhighlight"></span>\${lag.lagName || ''}</p>
                     </div>`;
                  });
               }else{
                  code += `<p class="point-swtext">어학 없음</p>`;
               }
               code+=`
               <div class="swsection2">
                  <h2 class="swh2 swhighlight">포트폴리오</h2>`;
               if(resume.resumePortfolio !=null){
                  code +=`
                  <div class="swcompany-info">
                     <a href="\${resume.resumePortfolio }" target="_blank" alt=" " title="ㅇㅇㅇㅇㅇ" class="file_link"><span>\${resume.resumePortfolio }</span></a> 
                  </div>`;
               }else{
                  code += `<p class="point-swtext">포트폴리오 없음</p>`;
               }
               code+=`
               <div class="swsection2">
                  <h2 class="swh2 swhighlight">자기소개서</h2>`;
               if(covList.length > 0){
                  $.each(covList,function(i,cov){
                  code +=`
                  <div class="swcompany-info infoText" id="test">
                     <h3>\${cov.psTitle || ''}</h3>
                     <span class="swhighlight"></span>\${cov.psContent || ''}</p>
                  </div>`;
                  });
               }else{
            	   code += `<p class="point-swtext">자기소개서 없음</p>`;
               }
               
               code+=`
         </div>
   	  `;//마지막 
            $("#resumeDetail").html(code);
      },
      error:function(xhr){
         console.log("error",xhr.status);
      }
   })
}

//모달창 이력서
const resumeList = function(resumes){
   let tags=`
      <select name=""  onchange="fSWresumeSel(this)">
       <option value="">이력서 선택</option>`;
       
       $.each(resumes,function(i, resume){
          tags+= `<option value="\${resume.resumeNo}">\${resume.resumeTitle}</option>`;
      });
    
       tags+= `</select>`;
       
   return tags;
}
//시작하자마자 이력서 리스트 가져오기
$.ajax({
   type:"get",
   url:"<%=request.getContextPath()%>/apply/resumeList",
   contentType:"applicant/json",
   success:function(resp){
      console.log("서버에서 받은값입니다",resp)
      tag="";
      tag+=resumeList(resp);
      
      $("#swmodal").html(tag);

   },error:function(xhr){
      console.log(xhr.state);
   }
})

//이력서 상세 이미지로 저장
  function fImg() {
//             alert("fImg");
            html2canvas(document.querySelector("#capture")).then(canvas => {
                document.body.appendChild(canvas)
                // 아작스로 파일보내깅
                canvas.toBlob((blob) => {
                    console.log("체킁:",blob);

                    let formData = new FormData();
                    formData.append("upload",blob);
                    formData.append("swName",swTitle);
                    
                    $.ajax({
                        type:"post",
                        url:"<%=request.getContextPath()%>/apply/resumeImage",
                        data: formData,
                        contentType:false,  // 필수 파일 보낼때
                        processData:false,  // 필수 파일 보낼때
                        cache:false,    //  선택
                        dataType:"text",
                        success:function(resp){
                            console.log("항상값체크:",resp);  // 보통 링크 URL

                            if(resp){
//                                alert("파일이 잘 올라갔다네용!ㅋㅋ");
                               fApply(resp);
                            }

                        },
                        error:function(xhr){
                            console.log("ERROR",xhr.status);
                        }
                    })
                    
                });
            });
        }

//중복 지원 막기
function ApplyCheck(rcrtNo){
// 	alert("ApplyCheck");
	let num =rcrtNo;
	console.log("rcrtNo",rcrtNo)
	   
	   $.ajax({
		      type:"get",
		      url:`/FinalProject/apply/\${num}/applyCheck`,
// 		      contentType:"application/json;charset=UTF-8",
		      dataType:"text",
// 		      data: JSON.stringify(applyVO),
		      success:function(resp){
		         console.log("ApplyCheck확인:",resp)
		         if(resp == "OK"){
		            fImg();
// 		            alert("지원 완료");
		         }else {
		            alert("이미 지원한 공고입니다.");
		            $('#mModal').modal('hide');
		         }
		      },
		      error:function(xhr){

		         console.log(xhr.status)
		      }
		      
		   })// ajax
}

let swRcrtNo;  // 전역변수를 잘 쓰면 편하지만, 이름이 중복되거나 그러면 힘든일이 발생!
function fSaveNo(rcrtNo){
	swRcrtNo = rcrtNo;
}

function fApply(resattNo){
//    alert("fApply");
   
   let applyVO = {
//       resattNo:"sown111",
//       aplNo:"apl2023",
         rcrtNo:swRcrtNo,
       	resattNo:resattNo
   };
   
   $.ajax({
      type:"post",
      url:"<%=request.getContextPath()%>/apply/applyInsert",
      contentType:"application/json;charset=UTF-8",
      dataType:"text",
      data: JSON.stringify(applyVO),
      success:function(resp){
         console.log("모달이거확인:",resp)
         if(resp == "OK"){
            alert("지원 완료");
            $('#mModal').modal('hide');
         }else {
            alert("이미 지원한 공고입니다.");
         }
      },
      error:function(xhr){

         console.log(xhr.status)
      }
      
   })// ajax

}
$("#modalapplyBtn").on("click",function(){
	//alert("#modalapplyBtn 클릭");
	ApplyCheck(swRcrtNo);
// 	fImg();
	
	})

$(function(){
	
	const contextPath = "<%=request.getContextPath()%>";

// 검색
	$("select[name=tregCode]").on("change", function(event){
		let reg = $(this).val();
		let options =  $("select[name=regCode]").find("option");
		console.log("options : " ,options);
		$(options).hide();
		$(options).filter((i,e)=>i==0).show();
		if(reg){
			$(options).filter(`.\${reg}`).show();
		}else{
			$(options).show();
		}
	}).trigger("change");

// 		const cPath = $(this.div).data("contextPath"); // div 데이터 속성 가져오기
// 		baseUrl = `\${cPath}/recruit/recruitData;
//  document.addEventListener('DOMContentLoaded', function() {
	let makeTag = function(recruitVO){
		
		let currentDate = new Date();
	    let deadlineDate = new Date(recruitVO.rcrtEdate);
	
	    let timeDifference = deadlineDate - currentDate;
	    
	    let days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
	    
		let rsltMsg="";
		let rsltDisabled = "";
		let rsltSpan="";
// 		console.log("확인",days)
// 		console.log("확인",currentDate)
// 		console.log("확인",deadlineDate)
	    if (days < 0) {
	        // 마감일이 지났을 때
	        rsltmsg = "입사마감";
	        rsltDisabled = "disabled";
	        rsltSpan="style='border: 1px solid gray; color: gray;'";
	    } else {
	    	rsltmsg = "입사지원";
	    }
		 let trTag =`
	
			 <div class="box_item">
				<div class="col company_nm">
					<a href="" class="str_tit" target="_blank"> \${recruitVO.company.companyNm } </a>
				</div>
				<div class="col notification_info">
					<div class="job_tit">
						<a class="str_tit " id="rec_link_46883303"
							href="${pageContext.request.contextPath}/recruit/\${recruitVO.rcrtNo}"
							target="_blank" onmousedown="">\${recruitVO.rcrtTitle}<span>
						</span></a>
					</div>
					<div class="job_meta">
						<span class="job_sector"> <span>\${recruitVO.rcrtKeywordnm }</span>
						</span>
					</div>
				</div>
				<div class="col recruit_info">
					<ul>
						<li>
							<p class="work_place">\${recruitVO.rcrtLoc }</p>
						</li>
						<li>
							<p class="career">\${recruitVO.rcrtCareer}</p>
						</li>
						<li>
							<p class="education">\${recruitVO.rcrtEdu}</p>
						</li>
					</ul>
				</div>
				<div class="col support_info">
					<button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다."
						 \${rsltDisabled} id="applyBtn"  data-bs-toggle="modal" data-bs-target="#mModal" data-backdrop="false"
						 onclick="fSaveNo('\${recruitVO.rcrtNo}')" >
						<span class="sri_btn_immediately"  id="applySw" \${rsltSpan} >\${rsltmsg}</span>
					</button>
					<p class="support_detail">
						<span class="date">~\${recruitVO.rcrtEdate}</span> 
					</p>
				</div>
			</div>
       `;

		  	return trTag;
	};
	
// 	   // DOMContentLoaded 이벤트를 사용하여 문서가 로드된 후에 실행되도록 보장
//     document.addEventListener('DOMContentLoaded', function() {	
	$(searchForm).on("submit",function(event){
		event.preventDefault();  //폼 동기요청 중단-> 비동기
		
		
	    let url = contextPath + "/recruit/region/regionData";
		let method = this.method;  //get
	    let data = $(this).serialize();  // 폼 안에 있는 input  등 쿼리스트링 형태로 가져옴
		console.log(data);
		$.getJSON(`\${url}?\${data}`)
		.done(function(resp){  // 응답 데이터 
			
			let recruitList = resp.paging.dataList;
			 console.log(resp.paging.dataList);
			
			Tags="";
			if(recruitList.length > 0){
				$.each(recruitList,function(idx,recruitVO){
					Tags+=makeTag(recruitVO);
				
				});
				 $(pagingArea).html(resp.paging.pagingHTML);	
				 $(total_Record).html(resp.paging.totalRecord);
			}else{
				Tags+=`
		               <tr>
		                 <td> 정보 없음</td>
		               </tr>
		          `;
			}
			$(".list_item").html(Tags);
			
		});
	
	    return false;
		
}).submit();

//페이징 
fn_paging = function(page){
	
	searchForm.page.value = page;
	searchForm.requestSubmit();
	searchForm.page.value = "";
}
//필터
	$(searchUI).on("click","#searchBtn",function(event){
		let inputs = $(this).parents("#searchUI").find(":input[name]"); - //name 속성들이 있는것만 가져옴
		$.each(inputs,function(i,ipt){
			let name = ipt.name;
			let value = $(ipt).val();
			$(searchForm).find(`:input[name=\${name}]`).val(value);
		});//$each
		$(searchForm).submit();
	});//onclick
}); // $function
    
</script>
