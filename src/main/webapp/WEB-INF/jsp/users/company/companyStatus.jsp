<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<div id="sri_section" class="  ">
	<div id="sri_wrap">
		<div id="content">


			<div class="wrap_jview">
				<section class="jview jview-0-46999600">
					<div class="wrap_jv_cont">
						<div class="jv_cont jv_statics expand">
							<a class="placeholder" tabindex="-1"></a>
							<h2 class="jv_title">지원자 통계</h2>
							<div class="cont">
								<!--wmg-31170-->
								<!--//wmg-31170-->
								<div class="details">
									<div class="layer">
										<div class="box_chart narrow count sub">
											<dl class="total">
												<dt>지원자수</dt>
												<dd>
													<span>1</span>명
												</dd>
											</dl>
											<div class="scroll">
												<dl class="detail">
													<dt title="영업">영업</dt>
													<dd>
														<span>1</span>명
													</dd>
												</dl>
											</div>
										</div>
										<div class="box_chart narrow">
											<strong class="tit_stats">경력별 현황</strong>
											<div class="chart_line ">
												<div class="col ">
													<em class="legend" title="신입">신입</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="1년 미만">1년 미만</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="1~3년">1~3년</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="3~5년">3~5년</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="5년 이상">5년 이상</em>
													<div class="bar">
														<div class="fill" style="height: 100%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart narrow">
											<strong class="tit_stats">성별 현황</strong>
											<div class="chart_donut">
												<!-- donut chart 일때 -->
												<svg class="donut" width="172" height="172"
													viewBox="0 0 172 172">
													<circle cx="86" cy="86" r="76" fill="transparent"
														stroke-width="20" stroke="#4876EF"></circle>
													<circle cx="86" cy="86" r="76" fill="transparent"
														stroke-width="20" stroke="#ff5656"
														stroke-dasharray="477.521984"
														stroke-dashoffset="477.521984"></circle></svg>
												<div class="legend">
													<div class="total">
														<span>지원자수</span>
													</div>
													<dl class="male">
														<dt class="spr_jview">
															<svg width="24" height="24" viewBox="0 0 24 24"
																fill="none" aria-hidden="true" focusable="false"
																class="ic">
																<rect width="24" height="24" fill="white"></rect>
																<circle cx="12" cy="5" r="3" fill="#4876EF"></circle>
																<path
																	d="M15.5014 9.5H9.08161C7.63325 9.5 6.66514 10.9917 7.25498 12.3145L10.5755 19.7614C11.2901 21.3639 13.5745 21.3352 14.2487 19.7154L17.3478 12.2685C17.8961 10.9512 16.9282 9.5 15.5014 9.5Z"
																	fill="#4876EF"></path></svg>
															남자
														</dt>
														<dd class="perc">
															<span>100</span>%
														</dd>
														<dd>1 명</dd>
													</dl>
													<dl class="female">
														<dt class="spr_jview">
															<svg width="24" height="24" viewBox="0 0 24 24"
																fill="none" aria-hidden="true" focusable="false"
																class="ic">
																<rect width="24" height="24" fill="white"></rect>
																<circle cx="12" cy="5" r="3" fill="#FF5656"></circle>
																<path
																	d="M14.9606 21H9.02674C7.59257 21 6.62453 19.535 7.18694 18.2157L10.1381 11.2929C10.8277 9.67534 13.1189 9.67094 13.8147 11.2858L16.7974 18.2086C17.3661 19.5288 16.3981 21 14.9606 21Z"
																	fill="#FF5656"></path></svg>
															여자
														</dt>
														<dd class="perc">
															<span>0</span>%
														</dd>
														<dd>0 명</dd>
													</dl>
												</div>
											</div>
										</div>
										<div class="box_chart ">
											<strong class="tit_stats">연령별 현황</strong>
											<div class="chart_line ">
												<div class="col ">
													<em class="legend" title="20대">20대</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="30대">30대</em>
													<div class="bar">
														<div class="fill" style="height: 100%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="40대">40대</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="50대">50대</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="60대 이상">60대 이상</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart ">
											<strong class="tit_stats">학력별 현황</strong>
											<div class="chart_line ">
												<div class="col ">
													<em class="legend" title="고졸이하">고졸이하</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="2~3년제">2~3년제</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="4년제">4년제</em>
													<div class="bar">
														<div class="fill" style="height: 100%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="석사">석사</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="박사">박사</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart ">
											<strong class="tit_stats">외국어 현황</strong>
											<div class="chart_line sub">
												<div class="col emph">
													<em class="legend" title="TOEIC">TOEIC</em>
													<div class="bar">
														<div class="fill" style="height: 50%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="TOEFL">TOEFL</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="TEPS">TEPS</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="TOEIC Speaking">TOEIC
														Speaking</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="OPIC">OPIC</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="JPT">JPT</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="HSK">HSK</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="기타">기타</em>
													<div class="bar">
														<div class="fill" style="height: 50%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart ">
											<strong class="tit_stats">TOEIC</strong>
											<div class="chart_line sub">
												<div class="col ">
													<em class="legend" title="600<br>미만">600<br>미만
													</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="700<br>미만">700<br>미만
													</em>
													<div class="bar">
														<div class="fill" style="height: 100%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="800<br>미만">800<br>미만
													</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="900<br>미만">900<br>미만
													</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="900<br>이상">900<br>이상
													</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart ">
											<strong class="tit_stats">자격증 현황</strong>
											<div class="chart_line ">
												<div class="col ">
													<em class="legend" title="일반행정사">일반행정사</em>
													<div class="bar">
														<div class="fill" style="height: 13%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="1종보통운전면허">1종보통운전면허</em>
													<div class="bar">
														<div class="fill" style="height: 13%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="정보통신기술자 경력수첩">정보통신기술자..</em>
													<div class="bar">
														<div class="fill" style="height: 13%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="MOS Excel 2002 Core">MOS
														Excel 2002..</em>
													<div class="bar">
														<div class="fill" style="height: 13%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="MOS Word 2002 core">MOS Word
														2002 ..</em>
													<div class="bar">
														<div class="fill" style="height: 13%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="기타">기타</em>
													<div class="bar">
														<div class="fill" style="height: 38%">
															<span class="value">3</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart ">
											<strong class="tit_stats">자격증 개수</strong>
											<div class="chart_line ">
												<div class="col ">
													<em class="legend" title="미보유">미보유</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="1개">1개</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="2개">2개</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col ">
													<em class="legend" title="3개">3개</em>
													<div class="bar">
														<div class="fill" style="height: 0%">
															<span class="value">0</span>
														</div>
													</div>
												</div>
												<div class="col emph">
													<em class="legend" title="4개이상">4개이상</em>
													<div class="bar">
														<div class="fill" style="height: 100%">
															<span class="value">1</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="box_chart portfolio ">
											<strong class="tit_stats">포트폴리오 및 기타문서 제출</strong>
											<div class="chart_donut">
												<svg class="donut" width="172" height="172"
													viewBox="0 0 172 172" style="transform: rotate(-90deg)">
													<circle cx="86" cy="86" fill="transparent" r="76"
														stroke-width="20" stroke="#4876ef"
														stroke-dasharray="157.17402778188 318.34805556377"
														stroke-dashoffset="-0"></circle>
													<circle cx="86" cy="86" fill="transparent" r="76"
														stroke-width="20" stroke="#17a187"
														stroke-dasharray="157.17402778188 318.34805556377"
														stroke-dashoffset="-159.17402778188"></circle>
													<circle cx="86" cy="86" fill="transparent" r="76"
														stroke-width="20" stroke="#ff5656"
														stroke-dasharray="155.17402778188 320.34805556377"
														stroke-dashoffset="-318.34805556377"></circle></svg>
												<ul class="info">
													<li class="resume"><i>2</i><span><em>포트폴리오</em><em>1명</em></span></li>
													<li class="career"><i>3</i><span><em>기획서</em><em>1명</em></span></li>
												</ul>
												<span class="count">1</span>
												<div class="legend">
													<dl class="ptf">
														<dt class="spr_jview">증명서</dt>
														<dd class="perc">
															<span>1</span>명
														</dd>
													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<button type="button" class="btn_more_cont"
									onmousedown="try{n_trackEvent('relay_view', 'statistics', 'statistics_more', '');}catch(e){}">
									<span class="spr_jview">내용 닫기</span>
									<svg class="ic" width="16" height="16" viewBox="0 0 16 16"
										fill="none">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M8 10.8195L14.1609 5.1326C14.3638 4.9453 14.6801 4.95795 14.8674 5.16086C15.0547 5.36377 15.0421 5.6801 14.8391 5.8674L8.33914 11.8674C8.14761 12.0442 7.85239 12.0442 7.66086 11.8674L1.16086 5.8674C0.957952 5.6801 0.945299 5.36377 1.1326 5.16086C1.3199 4.95795 1.63623 4.9453 1.83914 5.1326L8 10.8195Z"
											fill="#8491A7"></path></svg>
								</button>
							</div>
						</div>
					</div>
				</section>
			</div>
















		</div>
	</div>

</div>