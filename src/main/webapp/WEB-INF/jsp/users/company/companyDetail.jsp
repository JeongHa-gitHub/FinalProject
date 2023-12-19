<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<div id="sri_section" class=" layout_full companyDetail">
	<div id="sri_wrap">
		<div id="content">

			<div class="wrap_company_view">
				<!-- 기업소개 header -->
				<input type="hidden" name="companyinfo_view_csn"
					value="aHJWVUlMaXJQWVBCdjFRTUJTa1pIdz09" id="companyinfo_view_csn"><input
					type="hidden" name="companyinfo_company_nm" value="(주)아이티유"
					id="companyinfo_company_nm"><input type="hidden"
					name="companyinfo_company_cd" value="1" id="companyinfo_company_cd"><input
					type="hidden" name="companyinfo_tab_type" value="introduce"
					id="companyinfo_tab_type"><input type="hidden"
					name="t_ref_content" value="" id="t_ref_content"><input
					type="hidden" name="mem_gb" value="" id="mem_gb">
				<div class="company_info_svg" style="display: none;">
					<svg xmlns="http://www.w3.org/2000/svg">
           
            
        <!-- WMG-36086 사이드바 네비 아이콘 -->
        <symbol id="ico_building" fill="none" viewBox="0 0 24 24">
            <path fill-rule="evenodd" clip-rule="evenodd"
							d="M4.6 19.26V4.8h10.3v6.275a1.581 1.581 0 0 0-.002.069v8.116H4.6Zm10.298 1.6H4.5a1.5 1.5 0 0 1-1.5-1.5V4.7a1.5 1.5 0 0 1 1.5-1.5H15a1.5 1.5 0 0 1 1.5 1.5v4.944h3.544a1.5 1.5 0 0 1 1.5 1.5v8.216a1.5 1.5 0 0 1-1.5 1.5h-5.146Zm1.602-1.6h3.444v-8.016H16.5v8.016ZM6.7 8.296a.75.75 0 0 1 .75-.75h4.5a.75.75 0 0 1 0 1.5h-4.5a.75.75 0 0 1-.75-.75Zm.75 2.56a.75.75 0 0 0 0 1.5h4.5a.75.75 0 0 0 0-1.5h-4.5Z"
							fill="#292E41"></path>
        </symbol>
        <symbol id="ico_person" fill="none" viewBox="0 0 24 24">
            <path fill-rule="evenodd" clip-rule="evenodd"
							d="M6.81 4.826a3.026 3.026 0 1 1 6.053 0 3.026 3.026 0 0 1-6.052 0ZM9.838.2a4.626 4.626 0 1 0 0 9.252 4.626 4.626 0 0 0 0-9.252Zm-2.04 10.647a6.8 6.8 0 0 0-6.8 6.8v.326a.8.8 0 1 0 1.6 0v-.326a5.2 5.2 0 0 1 5.2-5.2h4.297a5.2 5.2 0 0 1 5.2 5.2v.326a.8.8 0 1 0 1.6 0v-.326a6.8 6.8 0 0 0-6.8-6.8H7.796Z"
							fill="#292E41"></path>
        </symbol>
        <symbol id="ico_supporting" fill="none" viewBox="0 0 24 24">
            <path fill-rule="evenodd" clip-rule="evenodd"
							d="M3.898 2.2a2 2 0 0 0-2 2v14.6a2 2 0 0 0 2 2h7.6a.8.8 0 1 0 0-1.6h-7.6a.4.4 0 0 1-.4-.4V4.2c0-.22.18-.4.4-.4h11.9a.4.4 0 0 1 .4.4v4.3a.8.8 0 0 0 1.6 0V4.2a2 2 0 0 0-2-2h-11.9ZM6.5 7a.8.8 0 1 0 0 1.6h6.6a.8.8 0 0 0 0-1.6H6.5Zm0 3.31a.8.8 0 1 0 0 1.6h3.9a.8.8 0 0 0 0-1.6H6.5Zm11.352.721a.95.95 0 0 0-1.704 0l-1.115 2.261-2.495.363a.95.95 0 0 0-.526 1.62l1.805 1.76-.426 2.484a.95.95 0 0 0 1.378 1.001l2.231-1.173 2.231 1.173a.95.95 0 0 0 1.379-1.001l-.426-2.485 1.805-1.76a.95.95 0 0 0-.527-1.62l-2.494-.362-1.116-2.26Zm-1.602 3.184.75-1.52.75 1.52a.95.95 0 0 0 .716.52l1.678.244-1.214 1.183a.95.95 0 0 0-.274.841l.287 1.671-1.5-.789a.95.95 0 0 0-.885 0l-1.5.79.286-1.672a.95.95 0 0 0-.273-.84l-1.214-1.184 1.678-.244a.95.95 0 0 0 .715-.52Z"
							fill="#292E41"></path>
        </symbol>
        <symbol id="ico_money" fill="none" viewBox="0 0 24 24">
            <path fill-rule="evenodd" clip-rule="evenodd"
							d="M3.1 9.27V7.1h2.416c-.122.402-.298.81-.565 1.163-.355.469-.906.888-1.851 1.007Zm0 5.756V16.9h2.316a3.423 3.423 0 0 0-.465-.867c-.355-.47-.906-.888-1.851-1.007Zm0-1.609c1.475.133 2.476.79 3.127 1.65.45.594.71 1.256.87 1.833h9.8c.159-.577.419-1.238.869-1.833.651-.86 1.655-1.519 3.134-1.65v-2.538c-1.48-.131-2.483-.79-3.134-1.65-.53-.7-.796-1.492-.945-2.129H7.17c-.149.637-.415 1.43-.944 2.128-.65.86-1.652 1.517-3.127 1.65v2.539ZM20.9 16.9h-2.324c.114-.303.264-.6.465-.867.356-.47.909-.89 1.859-1.008V16.9Zm0-9.8v2.17c-.95-.117-1.503-.537-1.859-1.007a3.688 3.688 0 0 1-.565-1.163H20.9ZM1.5 7A1.5 1.5 0 0 1 3 5.5h18A1.5 1.5 0 0 1 22.5 7v10a1.5 1.5 0 0 1-1.5 1.5H3A1.5 1.5 0 0 1 1.5 17V7Zm11.628 4.954a1.127 1.127 0 1 1-2.254 0 1.127 1.127 0 0 1 2.254 0Zm1.6 0a2.727 2.727 0 1 1-5.455 0 2.727 2.727 0 0 1 5.455 0Z"
							fill="#292E41"></path>
        </symbol>
        <symbol id="ico_chart" fill="none" viewBox="0 0 24 24">
            <path fill-rule="evenodd" clip-rule="evenodd"
							d="M10.998 4.6v13.8h2V4.6h-2Zm-.4-1.6a1.2 1.2 0 0 0-1.2 1.2v14.6a1.2 1.2 0 0 0 1.2 1.2h2.8a1.2 1.2 0 0 0 1.2-1.2V4.2a1.2 1.2 0 0 0-1.2-1.2h-2.8ZM4.8 14.248V18.4h2v-4.152h-2Zm-.4-1.6a1.2 1.2 0 0 0-1.2 1.2V18.8A1.2 1.2 0 0 0 4.4 20h2.8a1.2 1.2 0 0 0 1.2-1.2v-4.952a1.2 1.2 0 0 0-1.2-1.2H4.4ZM17.198 18.4v-8.286h2V18.4h-2Zm-1.6-8.686a1.2 1.2 0 0 1 1.2-1.2h2.8a1.2 1.2 0 0 1 1.2 1.2V18.8a1.2 1.2 0 0 1-1.2 1.2h-2.8a1.2 1.2 0 0 1-1.2-1.2V9.714Z"
							fill="#292E41"></path>
        </symbol>
        <symbol id="ico_partnership" fill="none" viewBox="0 0 24 16">
            <g clip-path="url(#aa)">
                <path
							d="M23.37 7.61 20 .76a.69.69 0 0 0-.4-.35.724.724 0 0 0-.54.03l-2.94 1.45a.7.7 0 0 0-.32.94l3.03 6.16c-.85 1.33-3.09 2.71-3.93 3.14l-4.82 2.35c-.09.05-.17.04-.22.03a.283.283 0 0 1-.06-.52l.1-.06.1-.06h.01l2.92-1.71a.65.65 0 0 0-.66-1.12l-3 1.76-1.44.8c-.09.05-.17.04-.21.03a.267.267 0 0 1-.17-.13c-.06-.1.02-.26-.02-.24l4.45-2.57c.31-.18.42-.58.24-.89a.654.654 0 0 0-.89-.24l-4.42 2.56s-.08.02-.12.04c-.06.04-.15.04-.24.02a.334.334 0 0 1-.2-.14.285.285 0 0 1-.03-.21c.01-.04.04-.12.13-.17l4.45-2.57c.31-.18.42-.58.24-.89a.654.654 0 0 0-.89-.24L6.27 10.2c-.28.13-.4.02-.48-.12a.285.285 0 0 1-.03-.21c.01-.04.04-.12.12-.16L8.1 8.52c.32-.17.44-.56.27-.88a.697.697 0 0 0-.28-.26h.08c1.86 0 2.98-1.1 3.49-2.06l1.89.47c.29.07.58.08.86.04 1.4-.21 1.65-1.07 1.69-1.44.06-.56-.19-1.23-.79-1.44l-4.94-1.58c-1.16-.4-1.78-.1-2.01.07-.55.32-1.07.27-1.37.2a.702.702 0 0 0-.43-.46L3.73.22a.69.69 0 0 0-.88.43L.59 7.21a.7.7 0 0 0 .43.89l2.81.97c.07.03.15.04.23.04a.69.69 0 0 0 .66-.47l1.97-5.73c.56.12 1.45.17 2.41-.41 0 0 .23-.11.84.1l4.85 1.55s.01.07 0 .09c-.02.19-.42.27-.59.3-.11.02-.23.01-.35-.02l-2.43-.61a.665.665 0 0 0-.78.43c-.08.25-.827 2.035-3.05 1.62-.35-.11-.8.075-.9.415-.11.34-.044.626.3.836.42.13.23.06.6.1-.04.01-.08.01-.12.03l-2.24 1.2a1.575 1.575 0 0 0-.58 2.16c.11.19.25.34.41.47-.05.09-.08.19-.11.3-.11.41-.05.83.16 1.2.21.36.57.63.99.75h.04c0 .23.06.47.19.7a1.554 1.554 0 0 0 1.37.79c.26 0 .51-.07.74-.19.03.1.07.19.13.28a1.554 1.554 0 0 0 1.38.79c.27 0 .53-.07.74-.19l4.79-2.33c.13-.07 2.85-1.49 4.21-3.24.04 0 .07.02.11.02.11 0 .21-.02.31-.07l2.94-1.45a.7.7 0 0 0 .32-.94v.02Zm-19.75-.1L2.14 7l1.8-5.23 1.48.51-1.8 5.23Zm16.5.92-2.75-5.59 1.68-.83L21.8 7.6l-1.68.83Z"
							fill="#292E41"></path>
            </g>
            <defs>
                <clipPath id="aa">
                    <path fill="#fff" transform="translate(.55 .18)"
							d="M0 0h22.9v15.64H0z"></path>
                </clipPath>
            </defs>
        </symbol>

       
    </svg>
				</div>

				<div class="sidebar recommendation" style="">
					<div class="scroller">
						<div class="company_info">
							<div class="box_logo">
								<img id="(주)아이티유의 기업로고" alt="(주)아이티유의 기업로고"
									src="https://pds.saramin.co.kr/company/logo/202009/17/qgsm4o_9f7o-1onq4jg_logo.png"
									width="54" height="54">
							</div>
							<div class="box_title">
								<h1 class="tit_company" title="(주)아이티유">
									(주)아이티유<span class="txt_info">기업정보</span>
								</h1>
								<p class="txt_job">내부 통신배선 공사업</p>
							</div>
							<div class="box_btns">
								<button type="button" class="interested_corp ga_data_layer "
									csn="aHJWVUlMaXJQWVBCdjFRTUJTa1pIdz09" del_fl="n"
									first_nudge="off"
									onclick="try{Saramin.btnJob('favor', this, '', 'company_view');}catch(e){}"
									data-ga_data_layer="ga_lead|company_view|header|favorite_com">
									<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
										class="icon_interested">
                        <path
											d="M6.02498 12.7861L5.64593 12.4305L5.26661 12.0676L4.9045 11.7145L4.57727 11.3886L4.30315 11.1078L4.09798 10.8878L3.60986 10.3434L3.3016 9.99345L3.02797 9.67542L2.79004 9.38984L2.58897 9.13749L2.42437 8.91736L2.35722 8.8214C2.09522 8.43618 1.89245 8.04622 1.73708 7.6185C1.41094 6.38491 1.4304 5.39882 1.73942 4.62739C2.06107 3.82442 2.56896 3.24401 3.25465 2.87112C3.97841 2.47923 4.74412 2.39639 5.56989 2.63105C6.18765 2.82443 6.71818 3.1964 7.16412 3.7682L7.29598 3.94787L7.58589 4.37863L8.00062 4.99485L8.41545 4.3787L8.71259 3.93737C9.13803 3.32866 9.65597 2.91815 10.2666 2.68825L10.4462 2.62682C11.2606 2.39707 12.0242 2.47999 12.7465 2.87106C13.4323 3.24395 13.9403 3.82439 14.262 4.62745C14.5705 5.39767 14.5909 6.3831 14.2537 7.6522C14.1088 8.04661 13.9058 8.43727 13.6424 8.82404C13.6227 8.85295 13.6015 8.88333 13.5787 8.9152L13.4124 9.13756L13.2113 9.38998L12.9737 9.67507L12.549 10.1656L12.1189 10.6483L12.1177 10.6497L11.8097 10.99L11.569 11.2414L11.2664 11.5467L10.7343 12.0681L10.3555 12.4306L9.97658 12.786L9.61564 13.1169L9.28863 13.4077C9.1893 13.4942 9.09986 13.57 9.0226 13.6331C9.02237 13.6333 9.02214 13.6335 9.02192 13.6336L8.00223 14.461L7.999 14.4634L6.85007 13.5257C6.76132 13.4504 6.66238 13.3642 6.55569 13.2693L6.20886 12.9558C6.20844 12.9554 6.20801 12.955 6.20759 12.9546C6.148 12.9 6.08733 12.844 6.02592 12.787C6.02561 12.7867 6.0253 12.7864 6.02498 12.7861Z"
											fill="white" stroke="#8491A7"></path>
                    </svg>
									<span>42 관심기업</span>
								</button>
								<button type="button" class="btn_share ga_data_layer"
									data-ga_data_layer="ga_lead|company_view|header|share">
									<svg width="16" height="16" viewBox="0 0 16 16" fill="none"
										class="icon_share">
                        <path d="M11 3.5L4.625 7.25V8.375L11 12.5"
											stroke="#8491A7"></path>
                        <circle cx="12.127" cy="3.125" r="2.125"
											fill="white" stroke="#8491A7"></circle>
                        <circle cx="12.127" cy="12.875" r="2.125"
											fill="white" stroke="#8491A7"></circle>
                        <circle cx="3.875" cy="7.62476" r="2.125"
											fill="white" stroke="#8491A7"></circle>
                    </svg>
									<span class="blind">공유하기</span>
								</button>
								<div class="layer_share">
									<div class="cont_share">
										<ul class="list_sns">
											<li class="sns_copyurl">
												<button type="button" class="btn_url">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                        <path
															d="M7.30237 18.7765C6.74243 19.046 6.11266 19.1349 5.50004 19.031C4.88741 18.9271 4.32216 18.6355 3.88237 18.1965C3.60269 17.9178 3.38078 17.5867 3.22936 17.222C3.07794 16.8573 3 16.4664 3 16.0715C3 15.6767 3.07794 15.2857 3.22936 14.9211C3.38078 14.5564 3.60269 14.2253 3.88237 13.9465L9.54237 8.29655C10.1049 7.73475 10.8674 7.41919 11.6624 7.41919C12.4574 7.41919 13.2199 7.73475 13.7824 8.29655C14.3442 8.85905 14.6597 9.62155 14.6597 10.4165C14.6597 11.2116 14.3442 11.974 13.7824 12.5365L11.6624 14.6565"
															stroke="#67738E" stroke-width="1.5"
															stroke-linecap="round" stroke-linejoin="round"></path>
                                        <path
															d="M16.0214 6.29665C16.5814 6.02724 17.2111 5.93834 17.8237 6.04224C18.4364 6.14613 19.0016 6.43769 19.4414 6.87665C19.7211 7.15536 19.943 7.48654 20.0944 7.85119C20.2458 8.21585 20.3238 8.6068 20.3238 9.00165C20.3238 9.39649 20.2458 9.78745 20.0944 10.1521C19.943 10.5168 19.7211 10.8479 19.4414 11.1266L13.7814 16.7766C13.2189 17.3384 12.4564 17.654 11.6614 17.654C10.8664 17.654 10.1039 17.3384 9.54142 16.7766C8.97962 16.2141 8.66406 15.4516 8.66406 14.6566C8.66406 13.8616 8.97962 13.0991 9.54142 12.5366L11.6614 10.4166"
															stroke="#67738E" stroke-width="1.5"
															stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
													<span class="blind">URL 공유하기</span>
												</button>
											</li>
										</ul>
										<button type="button" class="btn_close">
											<span class="blind">닫기</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<nav class="company_navi">
							<ul class="menu_list">
								<li class="menu_item selected">
									<button type="button" class="btn_menu ga_data_layer"
										onclick="window.location.href='/zf_user/company-info/view?csn=aHJWVUlMaXJQWVBCdjFRTUJTa1pIdz09';"
										data-ga_data_layer="ga_lead|company_view|tab|com_intro">
										<svg class="ico">
                            <use xlink:href="#ico_building"></use>
                        </svg>
										기업소개
									</button>
								</li>
								<li class="menu_item ">
									<button type="button" class="btn_menu ga_data_layer"
										onclick="window.location.href='/zf_user/company-info/view-job-report?csn=aHJWVUlMaXJQWVBCdjFRTUJTa1pIdz09';"
										data-ga_data_layer="ga_lead|company_view|tab|job_report">
										<svg class="ico">
                                <use xlink:href="#ico_supporting"></use>
                            </svg>
										직무 리포트 <span class="badge badge_new">N</span>
									</button>
								</li>
								<li class="menu_item ">
									<button type="button" class="btn_menu ga_data_layer"
										onclick="window.location.href='/zf_user/company-info/view-inner-recruit?csn=aHJWVUlMaXJQWVBCdjFRTUJTa1pIdz09';"
										data-ga_data_layer="ga_lead|company_view|tab|jobs_rec">
										<svg class="ico">
                                <use xlink:href="#ico_person"></use>
                            </svg>
										채용정보 <span class="badge">진행중</span>
									</button>
								</li>
								<li class="menu_item ">
									<button type="button" class="btn_menu ga_data_layer"
										onclick="window.location.href='/zf_user/company-info/view-inner-finance?csn=aHJWVUlMaXJQWVBCdjFRTUJTa1pIdz09';"
										data-ga_data_layer="ga_lead|company_view|tab|finance">
										<svg class="ico">
                                <use xlink:href="#ico_chart"></use>
                            </svg>
										재무정보
									</button>
								</li>
							</ul>
						</nav>

					</div>
				</div>

				<div class="main_content cont_introduce">
					<!-- 기업 개요 -->
					<section class="section first_section">
						<div class="section_content">
							<div class="favor_company">
								<div class="favor_company_header">
									<strong class="title">이 기업의 관심도는?</strong>
								</div>
								<ul class="favor_company_infos">
									<li class="favor_company_item"><span class="tit">조회수</span>
										<div class="counting">
											<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
												class="ico_arrow_rising">
                                    
                                </svg>
											<span class="count"><strong class="num">196</strong>회</span>
										</div></li>
									<li class="favor_company_item"><span class="tit">관심기업</span>
										<div class="counting">
											<span class="count"><strong class="num">1</strong>회</span>
										</div></li>
								</ul>
							</div>

						</div>
					</section>


					<!-- 사내 근무 환경 -->
					<section class="section workplace_section">
						<div class="section_header">
							<h2 class="section_tit">한눈에 보는 우리 회사, 미리 확인해 보세요!</h2>
						</div>

						<div class="section_content">

							<div class="area_company_infos">
								<!-- <h3 class="blind">기업 개요</h3>-->
								<ul class="company_summary">
									<li class="company_summary_item"><svg
											xmlns="http://www.w3.org/2000/svg" width="44" height="44"
											viewBox="0 0 44 44" fill="none">
                                    <g
												clip-path="url(#clip0_3593_59268)">
                                        <path
												d="M21.125 11V21.1185L28.5 24" stroke="#373F57"
												stroke-width="2" stroke-miterlimit="10"
												stroke-linecap="round"></path>
                                        <path
												d="M33.886 30.6569C30.9657 34.5159 26.3387 37 21.1239 37C12.2871 37 5.11914 29.832 5.11914 20.9953C5.11914 12.1585 12.2871 5 21.1239 5C28.1876 5 34.1799 9.57955 36.3037 15.9227C36.8347 17.5156 37.1286 19.2222 37.1286 21.0047"
												stroke="#373F57" stroke-width="2" stroke-miterlimit="10"
												stroke-linecap="round"></path>
                                        <path
												d="M34 20L36.8235 23L40 20" stroke="#373F57"
												stroke-width="2" stroke-linecap="round"></path>
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_3593_59268">
                                            <rect width="44" height="44"
												fill="white"></rect>
                                        </clipPath>
                                    </defs>
                                </svg> <strong class="company_summary_tit">업력
											5년차 </strong>
										<p class="company_summary_desc">2019년 6월 11일 설립</p></li>


									<li class="company_summary_item"><svg
											xmlns="http://www.w3.org/2000/svg" width="44" height="44"
											viewBox="0 0 44 44" fill="none">
                                    <circle cx="29.5762" cy="13.5"
												r="5.5" stroke="#373F57" stroke-width="2"></circle>
                                    <path
												d="M29.6071 24C23.8021 24 18.9924 28.7728 18.1357 35.0059C17.9853 36.1002 18.8954 37 20 37H39.2143C40.3189 37 41.229 36.1002 41.0786 35.0059C40.2219 28.7728 35.4122 24 29.6071 24Z"
												stroke="#373F57" stroke-width="2"></path>
                                    <circle cx="14.5762" cy="13.5"
												r="5.5" stroke="#373F57" stroke-width="2"></circle>
                                    <path
												d="M13.6786 37H5C3.89543 37 2.98423 36.0999 3.13738 35.006C3.99868 28.8542 8.8059 24.4835 14.6071 24.4835C15.7353 24.4835 16.8259 24.6638 17.8571 25"
												stroke="#373F57" stroke-width="2" stroke-linecap="round"></path>
                                </svg>
										<div class="box_align">
											<strong class="company_summary_tit"> 9명 </strong>
											<div class="TipBox">
												<button type="button" class="btn_open_tooltip">
													<svg width="16" height="16" viewBox="0 0 16 16" fill="none">
                                                <circle cx="8" cy="8"
															r="7.4" stroke="#8491A7" stroke-width="1.2"></circle>
                                                <path
															d="M8 6C8.552 6 9 5.552 9 5C9 4.4475 8.552 4 8 4C7.448 4 7 4.4475 7 5C7 5.552 7.448 6 8 6Z"
															fill="#8491A7"></path>
                                                <path
															d="M8.79462 7.9067C8.74841 7.50883 8.41027 7.2 8 7.2C7.55817 7.2 7.2 7.55817 7.2 8V11.6L7.20538 11.6933C7.25159 12.0912 7.58973 12.4 8 12.4C8.44183 12.4 8.8 12.0418 8.8 11.6V8L8.79462 7.9067Z"
															fill="#8491A7"></path>
                                            </svg>
												</button>
												<div class="TipCont TopCenter">
													<span class="Tail"> <svg class="icon_tail">
                                                            <use
																xlink:href="#TipBox_tail"></use>
                                                        </svg>
													</span>
													<div class="TipTxt">출처: 국민연금</div>
												</div>
											</div>
										</div>
										<p class="company_summary_desc">직원수</p></li>
									<li class="company_summary_item"><svg
											xmlns="http://www.w3.org/2000/svg" width="44" height="44"
											viewBox="0 0 44 44" fill="none">
                                    <g
												clip-path="url(#clip0_3593_59290)">
                                        <rect x="3" y="24" width="9"
												height="14" rx="1" stroke="#373F57" stroke-width="2"></rect>
                                        <rect x="31" y="15" width="9"
												height="23" rx="1" stroke="#373F57" stroke-width="2"></rect>
                                        <rect x="17" y="5" width="9"
												height="33" rx="1" stroke="#373F57" stroke-width="2"></rect>
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_3593_59290">
                                            <rect width="44" height="44"
												fill="white"></rect>
                                        </clipPath>
                                    </defs>
                                </svg> <strong class="company_summary_tit">
											26억 9,629만원</strong>
										<p class="company_summary_desc">매출액</p></li>
								</ul>
								<div class="content_fold active">
									<dl class="company_details">
										<div class="company_details_group">
											<dt class="tit">업종</dt>
											<dd class="desc">내부 통신배선 공사업</dd>
										</div>
										<div class="company_details_group">
											<dt class="tit">대표자명</dt>
											<dd class="desc">이나영</dd>
										</div>
										<div class="company_details_group">
											<dt class="tit">홈페이지</dt>
											<dd class="desc">
												<a href="http://itu.kr" target="_blank">http://itu.kr</a>
											</dd>
										</div>
										<div class="company_details_group">
											<dt class="tit">사업내용</dt>
											<dd class="desc">
												<p class="ellipsis"
													title="정보통신공사/일반용전기조명장치,CCTV,정보통신제품,방송장비,비디오,영상기기,컴퓨터,전산소모품,소프트웨어 제조">
													정보통신공사/일반용전기조명장치,CCTV,정보통신제품,방송장비,비디오,영상기기,컴퓨터,전산소모품,소프트웨어
													제조</p>
											</dd>
										</div>
										<div class="company_details_group">
											<dt class="tit">주소</dt>
											<dd class="desc">
												<p class="ellipsis" title="대전 유성구 테크노2로 240, 9동 2-2">대전
													유성구 테크노2로 240, 9동 2-2</p>
												<a
													href="http://map.kakao.com/link/map/%28%EC%A3%BC%29%EC%95%84%EC%9D%B4%ED%8B%B0%EC%9C%A0,36.4206087314412,127.408614027619"
													class="BtnType SizeXS link_map ga_data_layer"
													target="_blank"
													data-ga_data_layer="ga_lead|company_view|com_intro|map"
													title="새 창 열림">지도보기</a>
											</dd>
										</div>
									</dl>



								</div>
							</div>
						</div>
						<cite class="citation"> <a
							href="https://www.nicebizinfo.com/ep/EP0100M002GE.nice?kiscode=JQ1051"
							data-ga_data_layer="ga_lead|company_view|source|nice"
							target="_blank" title="새 창 열림" class="link ga_data_layer">출처
								: NICE평가정보</a> , 국민연금(직원수)
						</cite>
					</section>
					<!-- 연혁 -->

					<!-- 채용중 공고 -->
					<section class="section" id="companyIntroduceIngRecruitContainer">
						<h2 class="section_tit">현재 채용 중인 공고 놓치지 마세요</h2>
						<div class="section_content">
							<ul class="list_curation_item">
								<li><a
									href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=46914825"
									onclick="try{s_trackApply(this, 'company_info_view', 'ing_intro')}catch(e){}"
									class="newcomer_link_view" target="_blank">
										<div class="list_curation_slide">
											<span class="announcement"> (주)아이티유 IoT 데이터 표출 소프트웨어
												개발자 모집 <span class="cover"></span>
											</span>
											<div class="desc_bottom">
												<div class="info">
													<span> 경력1년↑ </span> <span>학력무관</span> <span>정규직</span> <span>대전
														대덕구</span>
												</div>
											</div>
											<span class="day">~ 11/20 (월)</span>
										</div>
								</a>
									<div class="btn_immediately_wrap">
										<button class="sri_btn_sm" title="클릭하면 입사지원할 수 있는 창이 뜹니다."
											onclick="try{quickApplyForm('46914825','','t_category=company_info_view&amp;t_content=ing_intro&amp;t_ref_content=ing_intro', ''); return false;} catch (e) {}; return false;"
											onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}">
											<span class="sri_btn_immediately">입사지원</span>
										</button>
									</div></li>

								<li><a href="/zf_user/resume/resume-manage"
									class="landing_card type_resume resume_manage_card ga_data_layer"
									target="_blank" title="새 창 열림"
									data-ga_data_layer="ga_lead|company_view|com_intro|resume_write"
									data-auth_type="not-login"> <strong class="landing_tit">이력서
											쓰고,<br>가고 싶은 회사에<br>지원해 보세요!
									</strong>
										<div class="looks_button">
											<span class="looks_button_txt">이력서 작성하기</span>
										</div>
								</a></li>
							</ul>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</div>