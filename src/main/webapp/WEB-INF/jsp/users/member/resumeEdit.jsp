 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <div class="resumeFormWrap">
     <div id="sri_section">
         <div id="sri_wrap">
             <div id="content">
                 <form id="frm" name="frm" method="post" action="/FinalProject/user/resume/update" enctype="multipart/form-data">
                     <input type="hidden" name="resumeNo" value="${resume.resumeNo}">
                     <div class="resume_wrap">
                         <div class="resume_snb">
                         </div>
                         <div class="resume_con">
                             <section id="basic" class="resume_basic">
                                 <div class="resume_view" style="display: block;">
                                     <div class="resume_top">
                                         <h1 class="user_name">${userInfo.users.usersNm }</h1>
                                     </div>
                                     <p class="user_desc">${userInfo.users.usersGen},
                                         ${userInfo.users.usersBir } (나이 세)</p>
                                     <ul class="user_info">
                                         <li value="resumeBasic_1701182989886" class="user_email">${userInfo.member.memMail }</li>
                                         <li value="resumeBasic_1701182989886" class="user_phone">${userInfo.member.memTel }</li>
                                         <li value="resumeBasic_1701182989886" class="user_address">(${userInfo.member.memZip }) ${userInfo.member.memAddr1 } ${userInfo.member.memAddr2 }</li>
                                     </ul>
                                     <div class="picture_box">
                                         <div class="picture">
                                             <img id="jyImg" alt="" src="<%=request.getContextPath()%>/recruit/usersInfo${userInfo.users.usersImg}" />
                                         </div>
                                     </div>
                                 </div>
                             </section>
                             <!-- 경력 -->
                             <section id="career" class="resume_career">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">경력</h2>
                                     </div>
                                     <button type="button" onclick="fJhAdd()" class="btn btn-outline-primary" onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'call_career_pc','event-flow': 'resume_write','event-label': 'write_career'});}catch(e){}">
                                         + 추가
                                     </button>
                                 </div>
                                 <div id="resumeCareerItem" class="resume_edit wrapHiddenForm" data-tpl="career-item" style="display: none;">
                                     <!-- 안보이는 거 -->
                                     <div class="item_row item_center">
                                         <div class="TypoBox TypeBtn item_m">
                                             <label for="careerCompanyNm_1701183047064" class="blind">회사명</label>
                                             <input type="text" value="" id="careerCompanyNm_1701183047064" class="Typo SizeL" placeholder="회사명 *" maxlength="80" data-auto_complete_item_group="input[name^='career_csn']" autocomplete="off">
                                         </div>
                                         <div class="TypoBox item item_s LblTop">
                                             <label for="careerStart_1701183047064" class="Lbl">입사일자 *</label>
                                             <input type="text" value="" id="careerStart_1701183047064" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                         </div>
                                         <div class="TypoBox item item_s LblTop">
                                             <label for="careerEnd_1701183047064" class="Lbl">퇴사일자 *</label>
                                             <input type="text" value="" id="careerEnd_1701183047064" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                         </div>
                                     </div>
                                     <h5 class="tit_sub">담당업무</h5>
                                     <div class="item_row">
                                         <div class="InpBox letter_box item item_full">
                                             <label for="careerContents_1701183047064" class="blind"></label>
                                             <textarea id="careerContents_1701183047064" class="ScrollBar charCount" placeholder="담당업무를 입력해주세요."></textarea>
                                             <div class="txt_count notCached"></div>
                                         </div>
                                     </div>
                                     <button type="button" onclick="fJhRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 안보이는 거 끝 -->
                                 <!-- 보이는 거 -->
                                 <c:forEach items="${carList}" var="careerVO" varStatus="status">
                                     <input type="hidden" name="careerVOList[${status.index}].crNo" value="${careerVO.crNo}">
                                     <div id="resumeCareerItem" class="resume_edit wrapHiddenForm" data-tpl="career-item" style="">
                                         <div class="item_row item_center">
                                             <div class="TypoBox TypeBtn item_m">
                                                 <label for="careerCompanyNm_1701183047064" class="blind">회사명</label>
                                                 <input type="text" name="careerVOList[${status.index}].crCompanynm" value="${careerVO.crCompanynm}" id="careerCompanyNm_1701183047064" class="Typo SizeL" placeholder="회사명 *" maxlength="80" data-auto_complete_item_group="input[name^='career_csn']" autocomplete="off">
                                             </div>
                                             <div class="TypoBox item item_s LblTop">
                                                 <label for="careerStart_1701183047064" class="Lbl">입사일자 *</label>
                                                 <input type="text" name="careerVOList[${status.index}].crStdate" value="${careerVO.crStdate}" id="careerStart_1701183047064" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                             </div>
                                             <div class="TypoBox item item_s LblTop">
                                                 <label for="careerEnd_1701183047064" class="Lbl">퇴사일자 *</label>
                                                 <input type="text" name="careerVOList[${status.index}].crEndate" value="${careerVO.crEndate}" id="careerEnd_1701183047064" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                             </div>
                                         </div>
                                         <h5 class="tit_sub">담당업무</h5>
                                         <div class="item_row">
                                             <div class="InpBox letter_box item item_full">
                                                 <label for="careerContents_1701183047064" class="blind"></label>
                                                 <textarea name="careerVOList[${status.index}].crContent" id="careerContents_1701183047064" class="ScrollBar charCount" placeholder="담당업무를 입력해주세요.">${careerVO.crContent}</textarea>
                                                 <div class="txt_count notCached"></div>
                                             </div>
                                         </div>
                                         <button type="button" onclick="fJhRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                     </div>
                                 </c:forEach>
                                 <!-- 보이는 거 끝 -->
                             </section>
                             <!-- 경력 끝 -->
                             <!-- 학력 -->
                             <section id="school" class="resume_school">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">학력</h2>
                                     </div>
                                     <button type="button" onclick="fShAdd()" class="btn btn-outline-primary">
                                         + 추가
                                     </button>
                                 </div>
                                 <input type="hidden" id="lastschool_id" value="resumeSchoolItem_1701182989888">
                                 <!-- 안보이는거 -->
                                 <div id="resumeSchoolItem" class="resume_edit wrapHiddenForm" data-tpl="school-university" style="display:none">
                                     <div class="item_row item_center">
                                         <div class="TypoBox TypeBtn item_m">
                                             <label class="blind" for="schoolNm_1701183039921">학교명 *</label>
                                             <input type="text" value="" id="schoolNm_1701183039921" class="Typo SizeL" maxlength="100" placeholder="학교명 *" autocomplete="off">
                                         </div>
                                     </div>
                                     <div class="item_row">
                                         <div class="TypoBox item_m LblTop">
                                             <label class="Lbl" for="schoolMajor_1701183039921">전공 *</label>
                                             <input type="text" value="" id="schoolMajor_1701183039921" class="Typo SizeL" maxlength="50" placeholder="전공 *">
                                         </div>
                                         <div class="InpBox SizeL item_s">
                                             <label for="schoolGraduationGb_1701183039921" class="blind"></label>
                                             <select id="schoolGraduationGb_1701183039921">
                                                 <option value="">졸업여부 *</option>
                                                 <option value="졸업">졸업</option>
                                                 <option value="재학중">재학중</option>
                                                 <option value="휴학중">휴학중</option>
                                                 <option value="중퇴">중퇴</option>
                                                 <option value="자퇴">자퇴</option>
                                                 <option value="졸업예정">졸업예정</option>
                                             </select>
                                         </div>
                                         <div class="TypoBox item_s LblTop">
                                             <label for="schoolEntranceDt_1701183039921" class="Lbl">입학일자</label>
                                             <input type="text" value="" id="schoolEntranceDt_1701183039921" class="Typo SizeL onlyNumber DatePic datePicker" data-dateformat="yyyymmdd" maxlength="8" placeholder="YYYYMMDD" pattern="[0-9]*">
                                         </div>
                                         <div class="TypoBox item_s LblTop">
                                             <label for="schoolGraduationDt_1701183039921" class="Lbl">졸업일자</label>
                                             <input type="text" value="" id="schoolGraduationDt_1701183039921" class="Typo SizeL onlyNumber DatePic datePicker" data-dateformat="yyyymmdd" maxlength="8" placeholder="YYYYMMDD" pattern="[0-9]*">
                                         </div>
                                         <div class="item_row item_center" style="display: flex;">
                                             <div class="TypoBox item_s LblTop" style="display: block;">
                                                 <label for="schoolMajorAvg_1701609400844" class="Lbl">학점</label>
                                                 <input type="text" value="" id="schoolMajorAvg_1701609400844" class="Typo SizeL onlyNumber additionalItem" maxlength="5" placeholder="학점">
                                             </div>
                                             <div class="InpBox SizeL item_s" style="display: block;">
                                                 <lavel for="schoolMajorPerfect_1701609400844" class="blind">기준학점</lavel>
                                                 <select id="schoolMajorPerfect_1701609400844">
                                                     <option value="" selected="selected">기준학점</option>
                                                     <option value="4.0">4.0</option>
                                                     <option value="4.3">4.3</option>
                                                     <option value="4.5">4.5</option>
                                                     <option value="5.0">5.0</option>
                                                     <option value="7.0">7.0</option>
                                                     <option value="100">100</option>
                                                 </select>
                                             </div>
                                         </div>
                                     </div>
                                     <button type="button" onclick="fShRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 보이는거 -->
                                 <c:forEach items="${eduList}" var="educationVO" varStatus="status">
                                     <input type="hidden" name="educationVOList[${status.index}].eduNo" value="${educationVO.eduNo}">
                                     <div id="resumeSchoolItem" class="resume_edit wrapHiddenForm" data-tpl="school-university" style="">
                                         <div class="item_row item_center">
                                             <div class="TypoBox TypeBtn item_m">
                                                 <label class="blind" for="schoolNm_1701183039921">학교명 *</label>
                                                 <input type="text" name="educationVOList[${status.index}].eduSchoolnm" value="${educationVO.eduSchoolnm }" id="schoolNm_1701183039921" class="Typo SizeL" maxlength="100" placeholder="학교명 *" autocomplete="off">
                                             </div>
                                         </div>
                                         <div class="item_row">
                                             <div class="TypoBox item_m LblTop">
                                                 <label class="Lbl" for="schoolMajor_1701183039921">전공 *</label>
                                                 <input type="text" name="educationVOList[${status.index}].eduMajornm" value="${educationVO.eduMajornm }" id="schoolMajor_1701183039921" class="Typo SizeL" maxlength="50" placeholder="전공 *">
                                             </div>
                                             <div class="InpBox SizeL item_s">
                                                 <label for="schoolGraduationGb_1701183039921" class="blind"></label>
                                                 <select name="educationVOList[${status.index}].eduGraduate" id="schoolGraduationGb_1701183039921">
                                                     <option value="">졸업여부 *</option>
                                                     <option value="졸업" ${educationVO.eduGraduate=='졸업' ? 'selected' : '' }>졸업</option>
                                                     <option value="재학중" ${educationVO.eduGraduate=='재학중' ? 'selected' : '' }>재학중</option>
                                                     <option value="휴학중" ${educationVO.eduGraduate=='휴학중' ? 'selected' : '' }>휴학중</option>
                                                     <option value="중퇴" ${educationVO.eduGraduate=='중퇴' ? 'selected' : '' }>중퇴</option>
                                                     <option value="자퇴" ${educationVO.eduGraduate=='자퇴' ? 'selected' : '' }>자퇴</option>
                                                     <option value="졸업예정" ${educationVO.eduGraduate=='졸업예정' ? 'selected' : '' }>졸업예정</option>
                                                 </select>
                                             </div>
                                             <div class="TypoBox item_s LblTop">
                                                 <label for="schoolEntranceDt_1701183039921" class="Lbl">입학일자</label>
                                                 <input type="text" name="educationVOList[${status.index}].eduStdate" value="${educationVO.eduStdate }" id="schoolEntranceDt_1701183039921" class="Typo SizeL onlyNumber DatePic datePicker" data-dateformat="yyyymmdd" maxlength="8" placeholder="YYYYMMDD" pattern="[0-9]*">
                                             </div>
                                             <div class="TypoBox item_s LblTop mt-2">
                                                 <label for="schoolGraduationDt_1701183039921" class="Lbl">졸업일자</label>
                                                 <input type="text" name="educationVOList[${status.index}].eduEndate" value="${educationVO.eduEndate }" id="schoolGraduationDt_1701183039921" class="Typo SizeL onlyNumber DatePic datePicker" data-dateformat="yyyymmdd" maxlength="8" placeholder="YYYYMMDD" pattern="[0-9]*">
                                             </div>
                                             <div class="item_row item_center mt-2" style="display: flex;">
                                                 <div class="TypoBox item_s LblTop" style="display: block;">
                                                     <label for="schoolMajorAvg_1701609400844" class="Lbl">학점</label>
                                                     <input type="text" name="educationVOList[${status.index}].eduGrade" value="${educationVO.eduGrade }" id="schoolMajorAvg_1701609400844" class="Typo SizeL onlyNumber additionalItem" maxlength="5" placeholder="학점">
                                                 </div>
                                                 <div class="InpBox SizeL item_s" style="display: block;">
                                                     <lavel for="schoolMajorPerfect_1701609400844" class="blind">기준학점</lavel>
                                                     <select name="educationVOList[${status.index}].eduStandardGrade" id="schoolMajorPerfect_1701609400844">
                                                         <option value="" selected="selected">기준학점</option>
                                                         <option value="4.0" ${educationVO.eduStandardGrade=='4.0' ? 'selected' : '' }>4.0</option>
                                                         <option value="4.3" ${educationVO.eduStandardGrade=='4.3' ? 'selected' : '' }>4.3</option>
                                                         <option value="4.5" ${educationVO.eduStandardGrade=='4.5' ? 'selected' : '' }>4.5</option>
                                                         <option value="5.0" ${educationVO.eduStandardGrade=='5.0' ? 'selected' : '' }>5.0</option>
                                                         <option value="7.0" ${educationVO.eduStandardGrade=='7.0' ? 'selected' : '' }>7.0</option>
                                                         <option value="100" ${educationVO.eduStandardGrade=='100' ? 'selected' : '' }>100</option>
                                                     </select>
                                                 </div>
                                             </div>
                                         </div>
                                         <button type="button" onclick="fShRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                     </div>
                                 </c:forEach>
                                 <!-- 보이는 거 끝 -->
                             </section>
                             <!-- 학력 끝 -->
                             <!-- 경험/활동/교육 -->
                             <section id="activity" class="resume_edu" style="">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">경험/활동/교육</h2>
                                     </div>
                                     <button type="button" onclick="fAtAdd()" class="btn btn-outline-primary">
                                         + 추가
                                     </button>
                                 </div>
                                 <div class="resume_none" style="display: none;">
                                     교육이수내역, 해외연수, 대내외활동 등의 경험을 작성해보세요!
                                 </div>
                                 <!-- 안보이는 거 -->
                                 <div id="resumeActivityItem" class="resume_edit wrapHiddenForm" data-tpl="activity-item" style="display: none;">
                                     <div class="item_row item_center">
                                         <div class="TypoBox item_m LblTop">
                                             <label for="activityOrg_1701183028892" class="Lbl">기관/장소/국가명 *</label>
                                             <input type="text" value="" id="activityOrg_1701183028892" class="Typo SizeL" placeholder="기관/장소명 *" maxlength="50">
                                         </div>
                                     </div>
                                     <div class="item_row">
                                         <div class="TypoBox item_s LblTop">
                                             <label for="activityStart_1701183028892" class="Lbl">시작일자</label>
                                             <input type="text" value="" id="activityStart_1701183028892" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                         </div>
                                         <div class="TypoBox item_s LblTop">
                                             <label for="activityEnd_1701183028892" class="Lbl">종료일자</label>
                                             <input type="text" value="" id="activityEnd_1701183028892" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                         </div>
                                     </div>
                                     <h5 class="tit_sub">활동 설명</h5>
                                     <div class="item_row">
                                         <div class="InpBox letter_box item_full">
                                             <label for="activityContents_1701183028892" class="blind">활동 설명</label>
                                             <textarea id="activityContents_1701183028892" class="ScrollBar charCount" placeholder="경험/활동/교육 상세내용 입력" data-default_placeholder="경험/활동/교육 상세내용 입력"></textarea>
                                         </div>
                                     </div>
                                     <button type="button" onclick="fAtRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 안보이는 거 끝 -->
                                 <!-- 보이는 거  -->
                                 <c:forEach items="${inaList}" var="IntrnActvtVO" varStatus="status">
                                     <input type="hidden" name="IntrnActvtVOList[${status.index}].iaNo" value="${IntrnActvtVO.iaNo}">
                                     <div id="resumeActivityItem" class="resume_edit wrapHiddenForm" data-tpl="activity-item" style="">
                                         <div class="item_row item_center">
                                             <div class="TypoBox item_m LblTop">
                                                 <label for="activityOrg_1701183028892" class="Lbl">기관/나라/장소명 *</label>
                                                 <input type="text" name="intrnActvtVOList[${status.index}].iaName" value="${IntrnActvtVO.iaName }" id="activityOrg_1701183028892" class="Typo SizeL" placeholder="기관/장소명 *" maxlength="50">
                                             </div>
                                         </div>
                                         <div class="item_row">
                                             <div class="TypoBox item_s LblTop">
                                                 <label for="activityStart_1701183028892" class="Lbl">시작일자</label>
                                                 <input type="text" name="intrnActvtVOList[${status.index}].iaStdate" value="${IntrnActvtVO.iaStdate }" id="activityStart_1701183028892" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                             </div>
                                             <div class="TypoBox item_s LblTop">
                                                 <label for="activityEnd_1701183028892" class="Lbl">종료일자</label>
                                                 <input type="text" name="intrnActvtVOList[${status.index}].iaEndate" value="${IntrnActvtVO.iaEndate }" id="activityEnd_1701183028892" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd">
                                             </div>
                                         </div>
                                         <h5 class="tit_sub">활동 설명</h5>
                                         <div class="item_row">
                                             <div class="InpBox letter_box item_full">
                                                 <label for="activityContents_1701183028892" class="blind">활동 설명</label>
                                                 <textarea name="intrnActvtVOList[${status.index}].iaContent" id="activityContents_1701183028892" class="ScrollBar charCount" placeholder="경험/활동/교육 상세내용 입력" data-default_placeholder="경험/활동/교육 상세내용 입력">${IntrnActvtVO.iaContent }</textarea>
                                             </div>
                                         </div>
                                         <button type="button" onclick="fAtRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                     </div>
                                 </c:forEach>
                                 <!-- 보이는거 끝 -->
                             </section>
                             <!-- 경험/활동/교육 끝 -->
                             <!-- 자격증 -->
                             <section id="license" class="resume_license" style="">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">자격증</h2>
                                     </div>
                                     <button type="button" onclick="fLiAdd()" class="btn btn-outline-primary">+ 추가</button>
                                 </div>

                                 <div class="resume_none" style="display: none;">
                                     자격/어학/수상 내역을 입력해주세요
                                 </div>
                                 <!-- 안보이는 거 -->
                                 <div id="resumeLicenseItem" class="resume_edit wrapHiddenForm" data-tpl="license-license" style="display: none;">
                                     <div class="item_row">
                                         <div class="TypoBox TypeBtn item_m">
                                             <label class="blind" for="licenseNm_1701183020055">자격증명</label>
                                             <input type="text" value="" id="licenseNm_1701183020055" class="Typo SizeL" placeholder="자격증명 *" maxlength="100" data-api_type="auto" data-api_id="license_nm" data-min_len="2" autocomplete="off">
                                         </div>
                                     </div>
                                     <div class="item_row">
                                         <div class="TypoBox item_s LblTop">
                                             <label for="licenseObtainDt_1701183020055" class="Lbl">합격일자</label>
                                             <input type="text" value="" id="licenseObtainDt_1701183020055" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd" data-only-number="true" autocomplete="off">
                                         </div>
                                     </div>
                                     <div class="resume_save notCached"></div>
                                     <button type="button" onclick="fLiRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 안보이는 거 끝 -->
                                 <!-- 보이는 거 -->
                                 <c:forEach items="${cerList}" var="CertificateVO" varStatus="status">
                                     <input type="hidden" name="CertificateVOList[${status.index}].cerNo" value="${CertificateVO.cerNo}">
                                     <div id="resumeLicenseItem" class="resume_edit wrapHiddenForm" data-tpl="license-license" style="">
                                         <div class="item_row">
                                             <div class="TypoBox TypeBtn item_m">
                                                 <label class="blind" for="licenseNm_1701183020055">자격증명</label>
                                                 <input type="text" name="certificateVOList[${status.index}].cerNm" value="${CertificateVO.cerNm }" id="licenseNm_1701183020055" class="Typo SizeL" placeholder="자격증명 *" maxlength="100" data-api_type="auto" data-api_id="license_nm" data-min_len="2" autocomplete="off">
                                             </div>
                                         </div>
                                         <div class="item_row">
                                             <div class="TypoBox item_s LblTop">
                                                 <label for="licenseObtainDt_1701183020055" class="Lbl">합격일자</label>
                                                 <input type="text" name="certificateVOList[${status.index}].cerDateAcqst" value="${CertificateVO.cerDateAcqst }" id="licenseObtainDt_1701183020055" class="Typo SizeL onlyNumber DatePic datePicker" placeholder="YYYYMMDD" maxlength="8" data-dateformat="yymmdd" data-only-number="true" autocomplete="off">
                                             </div>
                                         </div>
                                         <div class="resume_save notCached"></div>
                                         <button type="button" onclick="fLiRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                     </div>
                                 </c:forEach>
                                 <!-- 보이는 거 끝 -->
                             </section>
                             <!-- 자격증 끝 -->
                             <!-- 어학 -->
                             <section id="language" class="resume_language">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">어학</h2>
                                     </div>
                                     <button type="button" onclick="fLgAdd()" class="btn btn-outline-primary">
                                         + 추가
                                     </button>
                                 </div>
                                 <!-- 숨겨져있는거 -->
                                 <div id="resumeLanguageItem" class="resume_edit wrapHiddenForm" data-tpl="license-language-exam" style="display: none;">
                                     <div class="item_row">
                                         <div class="InpBox SizeL item_s">
                                             <label for="langExamLangcode_1701243506207" class="blind">언어</label>
                                             <select id="langExamLangcode_1701243506207">
                                                 <option value="" selected="" disabled="">언어</option>
                                                 <option value="영어">영어</option>
                                                 <option value="일본어">일본어</option>
                                                 <option value="중국어">중국어</option>
                                                 <option value="독일어">독일어</option>
                                                 <option value="불어">불어</option>
                                                 <option value="스페인어">스페인어</option>
                                                 <option value="러시아어">러시아어</option>
                                                 <option value="이탈리아어">이탈리아어</option>
                                                 <option value="한국어">한국어</option>
                                                 <option value="기타">기타</option>
                                             </select>
                                         </div>
                                         <div class="TypoBox TypeBtn item_m">
                                             <label for="langExamNm_1701243506207" class="blind">어학시험명</label>
                                             <input type="text" value="" id="langExamNm_1701243506207" class="Typo SizeL" data-api_type="auto" data-api_id="language_exam_nm" data-min_len="0" autocomplete="off" placeholder="언어 선택 후 어학시험명 입력">
                                         </div>
                                         <div class="TypoBox item_s LblTop">
                                             <label for="langExamObtainDt_1701243506207" class="Lbl">취득일자</label>
                                             <input type="text" value="" id="langExamObtainDt_1701243506207" class="Typo SizeL onlyNumber DatePic datePicker" data-dateformat="yymmdd" data-only-number="true" autocomplete="off" placeholder="YYYYMMDD" maxlength="8">
                                         </div>
                                     </div>
                                     <div class="item_row">
                                         <div class="TypoBox item_s LblTop">
                                             <input type="hidden" name="lang_exam_score[]" value="" class="onlyNumber" maxlength="7">
                                             <label for="langExamScore_1701243506207" class="Lbl">점수</label>
                                             <input type="text" value="" id="langExamScore_1701243506207" class="Typo SizeL onlyNumber" placeholder="점수" maxlength="7" data-max_score="">
                                         </div>
                                     </div>
                                     <button type="button" onclick="fLgRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 숨겨져있는 거 끝 -->
                                 <!-- 보이는 거 -->
                                 <c:forEach items="${lagList}" var="LanguageVO" varStatus="status">
                                     <input type="hidden" name="LanguageVOList[${status.index}].lagNo" value="${LanguageVO.lagNo}">
                                     <div id="resumeLanguageItem" class="resume_edit wrapHiddenForm" data-tpl="license-language-exam" style="">
                                         <div class="item_row">
                                             <div class="InpBox SizeL item_s">
                                                 <label for="langExamLangcode_1701243506207" class="blind">언어</label>
                                                 <select name="languageVOList[${status.index}].lagName" id="langExamLangcode_1701243506207">
                                                     <option value="" selected="" disabled="">언어</option>
                                                     <option value="영어" ${LanguageVO.lagName=='영어' ? 'selected' : '' }>영어</option>
                                                     <option value="일본어" ${LanguageVO.lagName=='일본어' ? 'selected' : '' }>일본어</option>
                                                     <option value="중국어" ${LanguageVO.lagName=='중국어' ? 'selected' : '' }>중국어</option>
                                                     <option value="독일어" ${LanguageVO.lagName=='독일어' ? 'selected' : '' }>독일어</option>
                                                     <option value="불어" ${LanguageVO.lagName=='불어' ? 'selected' : '' }>불어</option>
                                                     <option value="스페인어" ${LanguageVO.lagName=='스페인어' ? 'selected' : '' }>스페인어</option>
                                                     <option value="러시아어" ${LanguageVO.lagName=='러시아어' ? 'selected' : '' }>러시아어</option>
                                                     <option value="이탈리아어" ${LanguageVO.lagName=='이탈리아어' ? 'selected' : '' }>이탈리아어</option>
                                                     <option value="한국어" ${LanguageVO.lagName=='한국어' ? 'selected' : '' }>한국어</option>
                                                     <option value="기타" ${LanguageVO.lagName=='기타' ? 'selected' : '' }>기타</option>
                                                 </select>
                                             </div>
                                             <div class="TypoBox TypeBtn item_m">
                                                 <label for="langExamNm_1701243506207" class="blind">어학시험명</label>
                                                 <input type="text" name="languageVOList[${status.index}].lagTestnm" value="${LanguageVO.lagTestnm }" id="langExamNm_1701243506207" class="Typo SizeL" data-api_type="auto" data-api_id="language_exam_nm" data-min_len="0" autocomplete="off" placeholder="언어 선택 후 어학시험명 입력">
                                             </div>
                                             <div class="TypoBox item_s LblTop">
                                                 <label for="langExamObtainDt_1701243506207" class="Lbl">취득일자</label>
                                                 <input type="text" name="languageVOList[${status.index}].lagDateAcqst" value="${LanguageVO.lagDateAcqst }" id="langExamObtainDt_1701243506207" class="Typo SizeL onlyNumber DatePic datePicker" data-dateformat="yymmdd" data-only-number="true" autocomplete="off" placeholder="YYYYMMDD" maxlength="8">
                                             </div>
                                         </div>
                                         <div class="item_row">
                                             <div class="TypoBox item_s LblTop">
                                                 <input type="hidden" name="lang_exam_score[]" value="" class="onlyNumber" maxlength="7">
                                                 <label for="langExamScore_1701243506207" class="Lbl">점수</label>
                                                 <input type="text" name="languageVOList[${status.index}].lagLevel" value="${LanguageVO.lagLevel }" id="langExamScore_1701243506207" class="Typo SizeL onlyNumber" placeholder="점수" maxlength="7" data-max_score="">
                                             </div>
                                         </div>
                                         <button type="button" onclick="fLgRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                     </div>
                                 </c:forEach>
                                 <!-- 보이는 거 끝 -->
                             </section>
                             <!-- 어학 끝 -->
                             <!-- 포트폴리오 -->
                             <section id="attach_files" class="resume_etc" style="">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">포트폴리오</h2>
                                     </div>
                                     <button type="button" onclick="fPfAdd()" class="btn btn-outline-primary">
                                         + 추가
                                     </button>
                                 </div>
                                 <div class="resume_none" style="display: none;">
                                     포트폴리오
                                 </div>
                                 <!-- 숨겨져있는 거 -->
                                 <div id="resumeAttachFiles" class="resume_edit wrapHiddenForm" data-tpl="attach-files" style="display: none;">
                                     <div class="item_row">
                                         <div class="item item_full">
                                             <div class="TypoBox item_full LblTop">
                                                 <label for="introTitle_1701183010781" class="Lbl">URL</label>
                                                 <!-- 포트폴리오 주소 resumePortfolio -->
                                                 <input type="text" id="introTitle_1701183010781" name="resumePortfolio" class="Typo SizeL" value="" placeholder="http://" maxlength="100">
                                             </div>
                                         </div>
                                     </div>
                                     <ul class="file_box">
                                     </ul>
                                     <button class="btn btn-outline-secondary" onclick="fPfRemove(this)"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 숨겨져있는 거 끝 -->
                                 <!-- 보이는 거 -->
                                 <div id="resumeAttachFiles" class="resume_edit wrapHiddenForm" data-tpl="attach-files" style="">
                                     <div class="item_row">
                                         <div class="item item_full">
                                             <div class="TypoBox item_full LblTop">
                                                 <label for="introTitle_1701183010781" class="Lbl">URL</label>
                                                 <!-- 포트폴리오 주소 resumePortfolio -->
                                                 <input type="text" id="introTitle_1701183010781" value="${resume.resumePortfolio }" name="resumePortfolio" class="Typo SizeL" placeholder="http://" maxlength="100">
                                             </div>
                                         </div>
                                     </div>
                                     <ul class="file_box">
                                     </ul>
                                     <button class="btn btn-outline-secondary" onclick="fPfRemove(this)"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 보이는 거 끝 -->
                             </section>
                             <!-- 포트폴리오 끝 -->
                             <!-- 자기소개서 -->
                             <section id="introduce" class="resume_letter" style="">
                                 <div class="resume_tit">
                                     <div class="box_tit">
                                         <h2 class="tit">자기소개서</h2>
                                     </div>
                                     <button type="button" onclick="fInAdd()" class="btn btn-outline-primary">
                                         + 추가
                                     </button>
                                 </div>
                                 <div class="resume_none" style="display: none;">
                                     자기소개서를 작성해주세요.
                                 </div>
                                 <!-- 숨겨져있는거 -->
                                 <div id="resumeIntroduceItem" class="resume_edit wrapHiddenForm" data-tpl="introduce-item" style="display: none;">
                                     <div class="item_row item_nowrap">
                                         <div class="TypoBox item_full LblTop">
                                             <label for="introTitle_1701183010781" class="Lbl">자기소개서 제목</label>
                                             <!-- 제목 psTitle -->
                                             <input type="text" id="introTitle_1701183010781" class="Typo SizeL" value="" placeholder="자기소개서 제목" maxlength="100">
                                         </div>
                                     </div>
                                     <div class="item_row">
                                         <div class="InpBox letter_box item item_full">
                                             <label for="introContents_1701183010781" class="blind">자기소개서 내용</label>
                                             <!-- 내용 psContent -->
                                             <textarea id="introContents_1701183010781" class="ScrollBar charCount autoHeight" placeholder="내용을 입력하세요." style="height: 246px;"></textarea>
                                         </div>
                                     </div>
                                     <button type="button" onclick="fInRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                 </div>
                                 <!-- 숨겨져있는거 끝 -->
                                 <!-- 보이는거 -->
                                 <c:forEach items="${covList}" var="CoverLetterVO" varStatus="status">
                                     <input type="hidden" name="CoverLetterVOList[${status.index}].psNo" value="${CoverLetterVO.psNo}">
                                     <div id="resumeIntroduceItem" class="resume_edit wrapHiddenForm" data-tpl="introduce-item" style="">
                                         <div class="item_row item_nowrap">
                                             <div class="TypoBox item_full LblTop">
                                                 <label for="introTitle_1701183010781" class="Lbl">자기소개서 제목</label>
                                                 <!-- 자기소개서 제목 psTitle -->
                                                 <input type="text" id="introTitle_1701183010781" name="coverLetterVOList[${status.index}].psTitle" class="Typo SizeL" value="${CoverLetterVO.psTitle }" placeholder="자기소개서 제목" maxlength="100">
                                             </div>
                                         </div>
                                         <div class="item_row">
                                             <div class="InpBox letter_box item item_full">
                                                 <label for="introContents_1701183010781" class="blind">자기소개서 내용</label>
                                                 <!-- 자기소개서 내용  psContent -->
                                                 <textarea id="introContents_1701183010781" name="coverLetterVOList[${status.index}].psContent" class="ScrollBar charCount autoHeight" placeholder="내용을 입력하세요." style="height: 246px;">${CoverLetterVO.psContent }</textarea>
                                             </div>
                                         </div>
                                         <button type="button" onclick="fInRemove(this)" class="btn btn-outline-secondary"><i class="fa-solid fa-trash"></i></button>
                                     </div>
                                 </c:forEach>
                                 <!-- 보이는거 끝-->
                             </section>
                             <!-- 자기소개서 끝 -->
                             <!-- 공개여부 -->
                             <section id="open_status" class="resume_open">
                                 <input type="hidden" name="open_fl" value="n" id="open_fl"><input type="hidden" name="recomnd_status" value="n" id="recomnd_status"><input type="hidden" name="re_consent" value="n" id="re_consent"><input type="hidden" name="allow_company_codes" value="" id="allow_company_codes"><input type="hidden" name="cell_open_fl" value="y" id="cell_open_fl"><input type="hidden" name="email_open_fl" value="n" id="email_open_fl"><input type="hidden" name="tel_open_fl" value="y" id="tel_open_fl"><input type="hidden" name="cell_privacy" value="n" id="cell_privacy">
                                 <div class="offer_setting">
                                     <h2 class="tit_setting">이력서를 공개 하시겠어요?</h2>
                                     <p class="txt_setting resume_close">
                                         <strong>최종 합격 시 제출한 이력서가 비공개 설정이면 포인트를 받을 수 없어요.</strong>
                                     </p>
                                     <ul class="resume_open_option">
                                         <li>
                                             <div class="InpBox Bg White">
                                                 <span class="Rdo">
                                                     <input type="radio" id="openStatusActive" name="resumeOpenStatus" value="Y" class="inp_check" ${resume.resumeOpenStatus=='Y' ? 'checked' : '' }>
                                                     <label class="Lbl" for="openStatusActive" onmousedown="pushDataLayer('ga_lead', 'resume_PC', 'offer_status_b', 'opened_resume_actively')">
                                                         이력서 공개
                                                     </label>
                                                 </span>
                                             </div>
                                         </li>
                                         <li>
                                             <div class="InpBox Bg White">
                                                 <span class="Rdo">
                                                     <input type="radio" id="openStatusRecomnd" name="resumeOpenStatus" value="N" class="inp_check" ${resume.resumeOpenStatus=='N' ? 'checked' : '' }>
                                                     <label class="Lbl" for="openStatusRecomnd" onmousedown="pushDataLayer('ga_lead', 'resume_PC', 'offer_status_b', 'opened_resume')">
                                                         이력서 비공개
                                                     </label>
                                                 </span>
                                             </div>
                                         </li>
                                     </ul>
                                 </div>
                             </section>
                         </div>
                     </div>
                     <div class="resume_btm">
                         <section id="resume_title">
                             <div class="inner">
                                 <div class="TipBox Click tit_recommend">
                                     <div class="TipCont BottomLeft resume_title_option">
                                         <span class="Tail"></span>
                                     </div>
                                 </div>
                                 <strong class="tit_resume">이력서 제목</strong>
                                 <label for="title" class="bar_title blind">이력서 제목</label>
                                 <input type="text" id="title" value="${resume.resumeTitle }" name="resumeTitle" class="resume_title_input" value="" placeholder="이력서 제목을 입력하세요." maxlength="100" autocomplete="off">
                                  <button type="button" id="resumeAutoInsert" class="BtnType BtnTypeRd SizeML btn_preview evtResumePreview">이력서 자동완성</button>
                                 <input type="submit" value="작성완료" class="BtnType BtnTypeRd SizeML evtResumeSave">
                             </div>
                         </section>
                     </div>
                 </form>
                 <!-- 끝 -->
             </div>
         </div>
     </div>
 </div>
 <script>
 var userGen = '${userInfo.users.usersGen}';
 var birthYear = parseInt('${userInfo.users.usersBir}', 10);

 if (!isNaN(birthYear)) {
     var currentYear = new Date().getFullYear();
     var age = currentYear - birthYear;

     if (userGen === 'F') {
         document.querySelector('.user_desc').textContent = '여, ${userInfo.users.usersBir} ' +
             '(' + age + '세)';
     } else if (userGen === 'M') {
         document.querySelector('.user_desc').textContent = '남, ${userInfo.users.usersBir} ' +
         '(' + age + '세)';
     } else {
         document.querySelector('.user_desc').textContent = '성별 정보 없음';
     }
 } else {
     document.querySelector('.user_desc').textContent = '생년월일 정보가 유효하지 않음';
 }
 </script>
 <script type="text/javascript">
     //추가
     let carNum = $ {
         carList.size()
     };

     function fJhAdd() {
         let copyDiv = tempCareer.cloneNode(true);

         let jhComNmIn = copyDiv.querySelector("#careerCompanyNm_1701183047064");
         jhComNmIn.name = `careerVOList[\${carNum}].crCompanynm`;
         console.log("체킁: ", jhComNmIn);

         let jhIpSaIn = copyDiv.querySelector("#careerStart_1701183047064");
         jhIpSaIn.name = `careerVOList[\${carNum}].crStdate`;
         console.log("체킁: ", jhIpSaIn);

         let jhOutIn = copyDiv.querySelector("#careerEnd_1701183047064");
         jhOutIn.name = `careerVOList[\${carNum}].crEndate`;
         console.log("체킁: ", jhOutIn);

         let jhMissIn = copyDiv.querySelector("#careerContents_1701183047064");
         jhMissIn.name = `careerVOList[\${carNum}].crContent`;
         console.log("체킁: ", jhMissIn);

         copyDiv.style.display = "block"
         jhSectionBasic.appendChild(copyDiv);

         carNum++;
     }

     let scNum = $ {
         eduList.size()
     };

     function fShAdd() {
         let copyDiv = tempSchool.cloneNode(true);

         let jhScNmIn = copyDiv.querySelector("#schoolNm_1701183039921");
         jhScNmIn.name = `educationVOList[\${scNum}].eduSchoolnm`;
         console.log("체킁: ", jhScNmIn);

         let jhScMaIn = copyDiv.querySelector("#schoolMajor_1701183039921");
         jhScMaIn.name = `educationVOList[\${scNum}].eduMajornm`;
         console.log("체킁: ", jhScMaIn);

         let jhGrNmIn = copyDiv.querySelector("#schoolGraduationGb_1701183039921");
         jhGrNmIn.name = `educationVOList[\${scNum}].eduGraduate`;
         console.log("체킁: ", jhGrNmIn);

         let jhStNmIn = copyDiv.querySelector("#schoolEntranceDt_1701183039921");
         jhStNmIn.name = `educationVOList[\${scNum}].eduStdate`;
         console.log("체킁: ", jhStNmIn);

         let jhEnNmIn = copyDiv.querySelector("#schoolGraduationDt_1701183039921");
         jhEnNmIn.name = `educationVOList[\${scNum}].eduEndate`;
         console.log("체킁: ", jhEnNmIn);

         let jhGradeNmIn = copyDiv.querySelector("#schoolMajorAvg_1701609400844");
         jhGradeNmIn.name = `educationVOList[\${scNum}].eduGrade`;
         console.log("체킁: ", jhGradeNmIn);

         let jhSgNmIn = copyDiv.querySelector("#schoolMajorPerfect_1701609400844");
         jhSgNmIn.name = `educationVOList[\${scNum}].eduStandardGrade`;
         console.log("체킁: ", jhSgNmIn);

         copyDiv.style.display = "block"
         jhSectionSchool.appendChild(copyDiv);

         scNum++;
     }

     let atNum = $ {
         inaList.size()
     };

     function fAtAdd() {
         let copyDiv = tempActivity.cloneNode(true);

         let jhAtNmIn = copyDiv.querySelector("#activityOrg_1701183028892");
         jhAtNmIn.name = `intrnActvtVOList[\${atNum}].iaName`;
         console.log("체킁: ", jhAtNmIn);

         let jhAtStIn = copyDiv.querySelector("#activityStart_1701183028892");
         jhAtStIn.name = `intrnActvtVOList[\${atNum}].iaStdate`;
         console.log("체킁: ", jhAtStIn);

         let jhAtEnIn = copyDiv.querySelector("#activityEnd_1701183028892");
         jhAtEnIn.name = `intrnActvtVOList[\${atNum}].iaEndate`;
         console.log("체킁: ", jhAtEnIn);

         let jhAtCoIn = copyDiv.querySelector("#activityContents_1701183028892");
         jhAtCoIn.name = `intrnActvtVOList[\${atNum}].iaContent`;
         console.log("체킁: ", jhAtCoIn);

         copyDiv.style.display = "block"
         jhSectionActivity.appendChild(copyDiv);

         atNum++;
     }

     let liNum = $ {
         cerList.size()
     };

     function fLiAdd() {
         let copyDiv = tempLicense.cloneNode(true);

         let jhLiNmIn = copyDiv.querySelector("#licenseNm_1701183020055");
         jhLiNmIn.name = `certificateVOList[\${liNum}].cerNm`;
         console.log("체킁: ", jhLiNmIn);

         let jhLiStIn = copyDiv.querySelector("#licenseObtainDt_1701183020055");
         jhLiStIn.name = `certificateVOList[\${liNum}].cerDateAcqst`;
         console.log("체킁: ", jhLiStIn);

         copyDiv.style.display = "block"
         jhSectionLicense.appendChild(copyDiv);

         liNum++;
     }

     let lgNum = $ {
         lagList.size()
     };

     function fLgAdd() {
         let copyDiv = tempLanguage.cloneNode(true);

         let jhLgTyNmIn = copyDiv.querySelector("#langExamLangcode_1701243506207");
         jhLgTyNmIn.name = `languageVOList[\${lgNum}].lagName`;
         console.log("체킁: ", jhLgTyNmIn);

         let jhLgNmIn = copyDiv.querySelector("#langExamNm_1701243506207");
         jhLgNmIn.name = `languageVOList[\${lgNum}].lagTestnm`;
         console.log("체킁: ", jhLgNmIn);

         let jhLgStIn = copyDiv.querySelector("#langExamObtainDt_1701243506207");
         jhLgStIn.name = `languageVOList[\${lgNum}].lagDateAcqst`;
         console.log("체킁: ", jhLgStIn);

         let jhLgScIn = copyDiv.querySelector("#langExamScore_1701243506207");
         jhLgScIn.name = `languageVOList[\${lgNum}].lagLevel`;
         console.log("체킁: ", jhLgScIn);

         copyDiv.style.display = "block"
         jhSectionLanguage.appendChild(copyDiv);

         lgNum++;
     }

     let inNum = $ {
         covList.size()
     };

     function fInAdd() {
         let copyDiv = tempIntroduce.cloneNode(true);

         let jhInTiIn = copyDiv.querySelector("#introTitle_1701183010781");
         jhInTiIn.name = `coverLetterVOList[\${inNum}].psTitle`;
         console.log("체킁: ", jhInTiIn);

         let jhInCoIn = copyDiv.querySelector("#introContents_1701183010781");
         jhInCoIn.name = `coverLetterVOList[\${inNum}].psContent`;
         console.log("체킁: ", jhInCoIn);


         copyDiv.style.display = "block"
         jhSectionIntroduce.appendChild(copyDiv);

         inNum++;
     }

     function fPfAdd() {
         let copyDiv = tempPortfolio.cloneNode(true);
         copyDiv.style.display = "block"
         jhSectionPortfolio.appendChild(copyDiv);
     }

     //삭제
     function fPfRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let portFolioItem = $(pThis).closest(".resume_edit")[0];
         jhSectionPortfolio.removeChild(portFolioItem); // 삭제
     }

     function fInRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let introduceItem = $(pThis).closest(".resume_edit")[0];
         jhSectionIntroduce.removeChild(introduceItem); // 삭제
         inNum--;
     }

     function fLgRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let languageItem = $(pThis).closest(".resume_edit")[0];
         jhSectionLanguage.removeChild(languageItem); // 삭제
         laNum--;
     }

     function fLiRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let licenseItem = $(pThis).closest(".resume_edit")[0];
         jhSectionLicense.removeChild(licenseItem); // 삭제
         liNum--;
     }

     function fAtRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let activityItem = $(pThis).closest(".resume_edit")[0];
         jhSectionActivity.removeChild(activityItem); // 삭제
         atNum--;
     }

     function fShRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let schoolItem = $(pThis).closest(".resume_edit")[0];
         jhSectionSchool.removeChild(schoolItem); // 삭제
         scNum--;
     }

     function fJhRemove(pThis) {
         event.stopPropagation();
         console.log("체킁:", $(pThis).closest(".resume_edit")[0]);
         let careerItem = $(pThis).closest(".resume_edit")[0];
         jhSectionBasic.removeChild(careerItem); // 삭제
         carNum--;
     }

     let jhSectionBasic;
     let jhSectionSchool;
     let jhSectionActivity;
     let jhSectionLicense;
     let jhSectionLanguage;
     let jhSectionIntroduce;
     let jhSectionPortfolio;

     let tempCareer;
     let tempSchool;
     let tempActivity;
     let tempLicense;
     let tempLanguage;
     let tempIntroduce;
     let tempPortfolio;

     $(() => {
         jhSectionBasic = document.querySelector("#career");
         jhSectionSchool = document.querySelector("#school");
         jhSectionActivity = document.querySelector("#activity");
         jhSectionLicense = document.querySelector("#license");
         jhSectionLanguage = document.querySelector("#language");
         jhSectionIntroduce = document.querySelector("#introduce");
         jhSectionPortfolio = document.querySelector("#attach_files");

         tempCareer = document.querySelector("#resumeCareerItem")
         tempSchool = document.querySelector("#resumeSchoolItem");
         tempActivity = document.querySelector("#resumeActivityItem");
         tempLicense = document.querySelector("#resumeLicenseItem")
         tempLanguage = document.querySelector("#resumeLanguageItem");
         tempIntroduce = document.querySelector("#resumeIntroduceItem");
         tempPortfolio = document.querySelector("#resumeAttachFiles");
     })
 </script>