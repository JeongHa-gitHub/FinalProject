<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<style>
    
      .canvas {
        width: 500px;
       
       
      }
    </style>
<div id="sri_section" class="">
   <div id="sri_wrap">
      <div id="content">
<!--          여기서부터  내용-->
         <div class="wrap_jview mt100">
            <section class="jview jview-0-46882362">
               <a class="placeholder" tabindex="-1"></a>
               <div class="wrap_jv_cont swDetail">
                  <input type="hidden" name="track_url_0" value="t_category=relay_view&amp;t_content=relay_view_search&amp;t_ref=search&amp;t_ref_content=generic&amp;t_ref_scnid=&amp;dpId=&amp;search_uuid=c234ec83-cc78-4c7b-9e28-9bde6e56dffe"
                     class="track_url" data-view_type="search" id="track_url_0">
                  <input type="hidden" name="logging_url_46882362" value="" class="logging-url" id="logging_url_46882362">
                  <div class="wrap_jv_header">
                     <a class="placeholder" tabindex="-1"></a>
                     <div class="jv_header" data-rec_idx="46882362" data-rec_seq="0">
                        <div class="title_inner">
                           <a class="company" title="">${recruit.company.companyNm}</a>
                           <button type="button" id="scrapBtn" csn="TVUrT2lHWkZvZGZWU1RmQ2N6K1RMQT09" title="공고 스크랩" del_fl="n" aria-pressed="false" class="btn_jview spr_jview btn_interest" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" onmousedown="try {n_trackEvent('relay_view', 'title', 'favor', '');}catch(e){}" first_nudge="off"><span>공고 스크랩</span></button>
                        </div>
                        <h1 class="tit_job">${recruit.rcrtTitle}</h1>

                        <div class="btn_apply">
                           <span class="dday">D-23</span>
                           <button class="sri_btn_lg for_btn_event"
                              title="클릭하면 입사지원할 수 있는 창이 뜹니다."
                              id="applyBtn"  data-bs-toggle="modal" data-bs-target="#mModal" data-backdrop="false"
                              onmousedown="try{n_trackEvent('relay_view','summary','quick_apply','');}catch(e){}">
                              <span class="sri_btn_immediately"></span>
                           </button>
                        </div>
                     </div>
                  </div>
                  <div class="jv_cont jv_summary">
                     <h2 class="jv_title blind">핵심 정보</h2>
                     <div class="cont">
                        <div class="col">
                           <dl>
                              <dt>경력</dt>
                              <dd>
                                 <strong>${recruit.rcrtCareer} ↑</strong>
                              </dd>
                           </dl>
                           <dl>
                              <dt>학력</dt>
                              <dd>
                                 <strong>${recruit.rcrtEdu}</strong>
                              </dd>
                           </dl>
                           <dl>
                              <dt>근무형태</dt>
                              <dd>
                                 <strong>${recruit.rcrtType}</strong>
                              </dd>
                           </dl>
                        </div>
                        <div class="col">
                           <dl>
                              <dt>급여</dt>
                              <dd>${recruit.rcrtSalary}</dd>
                           </dl>
                           <dl>
                              <dt>근무지역</dt>
                              <dd>
                                 ${recruit.rcrtLoc}
                              </dd>
                           </dl>
                        </div>
                        <div class="meta">
                           <span class="salary_desc"><strong>최저임금계산에 대한 알림</strong>
                              하단에 명시된 급여, 근무 내용 등이 최저임금에 미달하는 경우 위 내용이 우선합니다.</span>
                           <ul class="list_meta">
                              <li>조회수 <strong>${recruit.rcrtHit}</strong></li>
                              <li class="wrap_share">
                                 <div class="share">
                                    <button type="button" class="spr_jview btn_jview btn_share">
                                       <svg aria-hidden="true" focusable="false" class="ic">
                                          <use xlink:href="#icon_sns_share"></use></svg>
                                       <span>공유하기</span>
                                    </button>
                                    <ul class="spr_jview list_share">
                                       <li>
                                          <a href="http://www.facebook.com/share.php?api_key=137906922916817&amp;display=popup&amp;u=https%3A%2F%2Fwww.saramin.co.kr%2Fzf_user%2Fjobs%2Frelay%2Fview%3Frec_idx%3D46882362%26view_type%3Dsearch"
                                             class="spr_jview facebook"
                                             onclick="window.open(this.href, this.target, 'width=578,height=380'); return false;"
                                             onmousedown="try{n_trackEvent('relay_view', 'top', 'facebook', '');}catch(e){}"
                                             title="페이스북 공유하기"><span class="blind">페이스북</span>
                                          </a>
                                       </li>
                                       <li>
                                          <a href="http://twitter.com/share?url=https%3A%2F%2Fwww.saramin.co.kr%2Fzf_user%2Fjobs%2Frelay%2Fview%3Frec_idx%3D46882362%26view_type%3Dsearch&amp;text=%EB%8C%80%EC%A0%84%20%EB%A1%AF%EB%8D%B0%20%EC%9B%B0%ED%91%B8%EB%93%9C%20%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%20JAVA%20JSP%20%EC%9B%B9%EA%B0%9C%EB%B0%9C%EC%9E%90%20%EA%B2%BD%EB%A0%A5%204%EB%85%84%EC%9D%B4%EC%83%81%20-%20%28%EC%A3%BC%29%ED%95%9C%EA%B5%AD%EC%98%A4%ED%94%88%EC%86%94%EB%A3%A8%EC%85%98%20%23saramin"
                                             class="spr_jview twitter"
                                             onclick="window.open(this.href, this.target, 'width=554,height=454'); return false;"
                                             onmousedown="try{n_trackEvent('relay_view', 'top', 'twitter', '');}catch(e){}"
                                             title="트위터 공유하기"><span class="blind">트위터</span>
                                          </a>
                                       </li>
                                       <li>
                                          <button type="button" class="spr_jview copy_url"
                                             title="공고 주소 복사하기"
                                             onclick="JobsView.copyUrl('https://www.saramin.co.kr/zf_user/jobs/relay/view?rec_idx=46882362&amp;view_type=search');"
                                             onmousedown="try{n_trackEvent('relay_view', 'top', 'copyurl', '' );}catch(e){}">
                                             <span class="blind">URL복사</span>
                                          </button>
                                       </li>
                                       <li>
                                          <button type="button" class="spr_jview send_sms"
                                             title="이 공고 내 폰으로 전송하기"
                                             onclick="Saramin.showQuickLogin();"
                                             onmousedown="try{n_trackEvent('relay_view', 'top', 'sendsms', '');}catch(e){}">
                                             <span class="blind">SMS발송</span>
                                          </button>
                                       </li>
                                    </ul>
                                 </div>
                              </li>
                              </ul>
                        </div>
                     </div>
                  </div>
                  <div class="jv_cont jv_detail">
                     <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"
                        style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px">
                        <tbody>                           
                           <tr>
                              <td style="padding: 0 45px">
                                 <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"
                                    style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px">
                                    <tbody>
                                       <tr>
                                          <td style="font-family: malgun gothic, 맑은 고딕; font-size: 28px; line-height: 28px; letter-spacing: -2px; color: #0061AE;">모집분야&nbsp;</td>
                                       </tr>
                                       <tr>
                                          <td height="15"></td>
                                       </tr>
                                       <tr>
                                          <td>
                                             ㆍ직무/직업 :&nbsp; ${recruit.rcrtKeywordnm}<br>
                                             ㆍ모집분야명 :&nbsp; ${recruit.rcrtField}<br>
                                             ㆍ모집인원 :&nbsp; ${recruit.rcrtPerson}명<br>
                                             ㆍ경력 :&nbsp; ${recruit.rcrtCareer}<br>
                                             ㆍ필수우대조건 :&nbsp; ${recruit.rcrtCondition}<br>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </td>
                           </tr>
                           <tr>
                              <td height="65"></td>
                           </tr>
                           <tr>
                              <td style="padding: 0 45px"><table width="100%"
                                    border="0" cellpadding="0" cellspacing="0" align="center"
                                    style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px">
                                    <tbody>
                                       <tr>
                                          <td style="font-family: malgun gothic, 맑은 고딕; font-size: 28px; line-height: 28px; letter-spacing: -2px; color: #0061AE;">지원자격&nbsp;</td>
                                       </tr>
                                       <tr>
                                          <td height="15"></td>
                                       </tr>
                                       <tr>
                                          <td>ㆍ지원자 학력 :&nbsp; ${recruit.rcrtEdu}<br>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </td>
                           </tr>
                           <tr>
                              <td height="65"></td>
                           </tr>
                           <tr>
                              <td style="padding: 0 45px"><table width="100%"
                                    border="0" cellpadding="0" cellspacing="0" align="center"
                                    style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px">
                                    <tbody>
                                       <tr>
                                          <td style="font-family: malgun gothic, 맑은 고딕; font-size: 28px; line-height: 28px; letter-spacing: -2px; color: #0061AE;">근무조건&nbsp;</td>
                                       </tr>
                                       <tr>
                                          <td height="15"></td>
                                       </tr>
                                       <tr>
                                          <td>
                                          ㆍ근무지역 :&nbsp; ${recruit.rcrtLoc} <br>
                                          ㆍ근무형태 :&nbsp; ${recruit.rcrtType} <br>
                                          ㆍ급여 :&nbsp; ${recruit.rcrtSalary} <br>
                                          ㆍ근무요일 :&nbsp; ${recruit.rcrtWeek} <br>
                                          ㆍ출퇴근 시간 :&nbsp; ${recruit.rcrtStime} ~  ${recruit.rcrtEtime} <br>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </td>
                           </tr>
                           <tr>
                              <td height="65"></td>
                           </tr>
                           <tr>
                              <td style="padding: 0 45px">
                                 <table width="100%"
                                    border="0" cellpadding="0" cellspacing="0" align="center"
                                    style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px;">
                                    <tbody>
                                       <tr>
                                          <td style="font-family: malgun gothic, 맑은 고딕; font-size: 28px; line-height: 28px; letter-spacing: -2px; color: #0061AE;">
                                             전형절차</td>
                                       </tr>
                                       <tr>
                                          <td height="15"></td>
                                       </tr>
                                       <tr>
                                          <td align="">
<!--                                           <img src="https://www.saraminimage.co.kr/recruit/bbs_recruit2/feelhaus_step_200402.png"> -->
                                             <c:if test="${not empty procedureList}">
                                                <c:forEach items="${procedureList}" var="pro">
                                                      ※&nbsp;${pro.rprocOrder} 차 &nbsp;${pro.code.comCodeNm} ${pro.rprocSdate}~ ${pro.rprocEdate}<br>
                                                </c:forEach>
                                             </c:if>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </td>
                           </tr>
                           
                           <tr>
                              <td height="15"></td>
                           </tr>
                           <tr>
                              <td height="65"></td>
                           </tr>
                           <tr>
                              <td style="padding: 0 45px">
                                 <table width="100%"
                                    border="0" cellpadding="0" cellspacing="0" align="center"
                                    style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px">
                                    <tbody>
                                       <tr>
                                          <td style="font-family: malgun gothic, 맑은 고딕; font-size: 28px; line-height: 25px; letter-spacing: -2px; color: #0061AE;">
                                             접수기간 및 방법</td>
                                       </tr>
                                       <tr>
                                          <td height="15"></td>
                                       </tr>
                                       <tr>
                                          <td>
                                          ㆍ지원 접수 기간 :&nbsp;${recruit.rcrtSdate} ~ ${recruit.rcrtEdate} <br>
                                          ㆍ지원 접수 방법 :&nbsp;${recruit.rcrtRectype}<br>
                                          
                                          
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </td>
                           </tr>
                           <tr>
                              <td height="65"></td>
                           </tr>
                           <tr>
                              <td style="padding: 0 45px">
                                 <table width="100%"
                                    border="0" cellpadding="0" cellspacing="0" align="center"
                                    style="font-family: malgun gothic, 맑은 고딕; font-size: 15px; line-height: 25px; letter-spacing: -1px">
                                    <tbody>
                                       <tr>
                                          <td style="font-family: malgun gothic, 맑은 고딕; font-size: 28px; line-height: 25px; letter-spacing: -2px; color: #0061AE;">
                                             인사담당자/기업정보</td>
                                       </tr>
                                       <tr>
                                          <td height="15"></td>
                                       </tr>
                                       <tr>
                                          <td>
                                          
                                             ㆍ담당자 이름: :&nbsp;${recruit.rcrtNm}<br>
                                             ㆍ연&nbsp;락&nbsp;처&nbsp;:&nbsp;<span
                                             style="letter-spacing: 0">${recruit.rcrtTel}</span><br>
                                             ㆍ이메일 :&nbsp;${recruit.rcrtMail}<br>
                                             ㆍ복리후생 :&nbsp;${recruit.rcrtWlfr}<br>
                                             
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </td>
                           </tr>
                           <tr>
                              <td height="65"></td>
                           </tr>
                           <tr>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <!-- 상세요강끝 -->
                  <div id="map_0" class="jv_cont jv_location"
                     data-company-name="(주)한국오픈솔루션"
                     data-address="(34352) 대전 대덕구 신탄진로 임시"
                     data-latitude="36.3835134346404"
                     data-longitude="127.424393857109" data-hide_fl="n"
                     data-disable_fl="n">
                     <a class="placeholder" tabindex="-1"></a>
                     <h2 class="jv_title">근무지위치</h2>
                     <div class="cont box">
                        <address class="address">
                           <span class="spr_jview txt_adr">
                              <span class="wrap_ic">
                                 <svg class="ic" width="20" height="20" viewBox="0 0 20 20"
                                       fill="none">
                                       <path
                                          d="M14.305 10.9376L10.5998 16.6302C10.1775 17.2789 9.21948 17.2542 8.83119 16.5846L5.52495 10.883C4.85419 9.72631 4.5 8.39263 4.5 7.05307C4.5 4.01462 7.00816 1.5 10.0448 1.5C13.0381 1.5 15.5 3.92741 15.5 6.91099C15.5 8.34059 15.0849 9.73943 14.305 10.9376Z"
                                          stroke="#8491A7"></path>
                                       <circle cx="10" cy="7" r="2.5" stroke="#8491A7"></circle>
                                 </svg>
                              </span>
                               ${recruit.rcrtLoc}
                            </span>
                        </address>
                     </div>
                  </div>
               </div>
	            <!--  기업회원 로그인시 삭제, 수정 버튼 나오게 하기  -->
				<c:set value="<%=session.getAttribute(\"authId\")%>" var="loginCompany" />
				<c:set value="${recruit.companyId}" var="companyId"/>
				<c:choose>
					<c:when test="${loginCompany eq companyId }">
						<input type="button" value="수정" id="updateBtn" onclick="location.href='<%=request.getContextPath()%>/recruit/${recruit.rcrtNo}/editForm'"
							 class="btn btn-primary">
						<input type="button" value="삭제" id="delBtn"
							class="btn btn-primary">
					</c:when>
				</c:choose>
               <div class="jv_cont jv_howto swDetailbottom">
                     <a class="placeholder" tabindex="-1"></a>
                     <h2 class="jv_title">접수기간 및 방법</h2>
                     <div class="cont box">
                        <div class="status">
                           <div class="info_timer" data-remain-time="2018314">
                              <span class="txt">남은 기간</span><span class="day"></span>
                              <span class="txt_day"><span class="time"></span></span>
                           </div>
                           <dl class="info_period">
                              <dt>시작일</dt>
                              <dd>${recruit.rcrtSdate}</dd>
                              <dt class="end">마감일</dt>
                              <dd>${recruit.rcrtEdate}</dd>
                           </dl>
                        </div>
                        <dl class="guide guideStyle">
                        
                           <dt>지원방법</dt>
                           <dd class="manager">${recruit.rcrtRectype}</dd>
                           <dt>담당자</dt>
                           <dd class="manager">${recruit.rcrtNm}</dd>
                           <dt>연락처</dt>
                           <dd class="info">${recruit.rcrtTel}</dd>
                           <dt>이메일</dt>
                           <dd class="template">${recruit.rcrtMail}</dd>
                        </dl>
                        <p class="noti">
                           <svg aria-hidden="true" focusable="false" class="ic">
                              <use xlink:href="#icon_i"></use></svg>
                          
                        </p>
                        
                     </div>
               </div>
               
            </section>
         </div>
      </div>
   </div>
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

// DOMContentLoaded 이벤트
$(function(){
   // 현재 시간
   let currentDate = new Date();

   // 마감일 (예시: 2023-12-31)
   let deadlineDate = new Date("${recruit.rcrtEdate}")

   // 현재 시간과 마감일 간의 차이 계산
   let timeDifference = deadlineDate - currentDate;

   // 차이를 일과 시간으로 변환
//    let days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
//    end = days
   let days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
      
   if(days>1){
      days= "D-"+days;
      text = "입사 지원";
   }
   if(days<1){
      days ="마감된공고";
      text = "마감된 공고";
      $("#applyBtn").prop("disabled", true);
   }
   
   document.querySelector('.time').textContent = days;
   document.querySelector('.dday').textContent = days;
   document.querySelector('.sri_btn_immediately').textContent = text;

//스크랩 체크
    let url = "<%=request.getContextPath()%>/recruit/${recruit.rcrtNo}/scrapcheck";  

   $.ajax({
         type:"get",
         url: `\${url}`,
         //contentType:"application/json",
         //data:data,
         dataType:"text",
         success:function(resp){
            console.log("서버에서 받은값:",resp); // 항상 누느로 확인!
            console.log($(this));
            if(resp == "OK"){
               $("#scrapBtn").addClass("on")
                    .attr("aria-pressed", "true")
                 .attr("del_fl","y");
            }
         },
         error:function(xhr){
            console.log(xhr.status);
         }
      })   
      
//스크랩 버튼 누르면 스크랩 완료 / 스크랩 삭제
   $("#scrapBtn").on("click",function(){
	   
      let url = "<%=request.getContextPath()%>/recruit/${recruit.rcrtNo}/scrap";  
   	  
      $.ajax({
         type:"post",
         url: `\${url}`,
//         contentType:"application/json",
//         data:data,
         dataType:"text",
         success:function(resp){
            console.log("서버에서 받은값:",resp); // 항상 누느로 확인!
            console.log($(this));
            if(resp == "OK"){
               //jQuery는 꼬옥 변수로 받아서 써야 성능이 좋지만
               //일단 알아보기 편하겡
               $("#scrapBtn").addClass("on")
                             .attr("aria-pressed", "true")
                          .attr("del_fl","y");
            }else{
               $("#scrapBtn").removeClass("on")
                    .attr("aria-pressed", "false")
                 .attr("del_fl","n");
               
            }
         },
         error:function(xhr){
            console.log(xhr.status);
         }
      })
   }); //onclick
});//$function

//채용공고 삭제
$("#delBtn").on("click",function(){
	if (confirm("정말 삭제하시겠습니까?") == true) {
		$.ajax({
	        type:"post",
	        url: "<%=request.getContextPath()%>/recruit/${recruit.rcrtNo}/del",
	        dataType:"text",
	        success:function(resp){
	        	console.log(resp);
	        	if(resp=="OK"){
	        		//리스트로..
	        		location.href="<%=request.getContextPath()%>/company/recruitListUI";
	        	}else{
	        		alert("삭제 실패. 다시 시도해주세요.")
	        	}
	        },
	        error:function(xhr){
	           console.log(xhr.status);
	        }
	     })
	  } else {
	        return;
	    }
});

// 이력서 상세정보! 이미지로 만들기...
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
         
         console.log("eduList:",eduList);
         console.log("resume:",resume);
          swTitle = resume.resumeTitle;
         
         //여기
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
//시작하자마자 resulme 리스트 가져오기
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

</script>

<script type="text/javascript">

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
                    alert("swTitle"+swTitle);
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


//모달 입사지원 버튼 누르면 1차지원 완료 + 이력서는 사진으로 변환 후 저장
// $("#modalapplyBtn").on("click",function(){
	//중복 지원 막기
function ApplyCheck(){
// 	alert("ApplyCheck");
	let num ="${recruit.rcrtNo}";
	   
	
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

function fApply(resattNo){
//    alert("fApply");
   
   let applyVO = {
//       resattNo:"sown111",
//       aplNo:"apl2023",
         rcrtNo:"${recruit.rcrtNo}",
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
	ApplyCheck();
// 	fImg();
	
	})

// $(document).on("click","#modalapplyBtn",function(){
   
// }); //클릭


</script>


