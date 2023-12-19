<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/kjh/index_promotion.js" />
<script src="${cpath}/resources/js/jquery-3.7.1.min.js"></script>

<body id="sri_main" class="userIndexWrap fixed">
	<div role="region" aria-label="추천공고" id="section_contents" class="cont_top">
		<!-- 메인 슬라이드 영역 -->
		<div class="owl-carousel owl-theme owl-loaded">
			<div class="owl-stage-outer">
				<div class="owl-stage" id="imgAdvrtIndex">
					<!-- <div class="owl-item">
						<a href="#" class="">
							<img src="https://c.incru.it/2023/11/231122_kbiz_home.png" alt="">
						</a>
					</div>
					<div class="owl-item">
						<a href="#" class="">
							<img src="https://c.incru.it/2023/11/231120_kitri.png" alt="">
						</a>
					</div>
					<div class="owl-item">
						<a href="#" class="">
							<img src="https://c.incru.it/2023/10/231005_saltlux_home.png" alt="">
						</a>
					</div>
					<div class="owl-item">
						<a href="#" class="">
							<img src="https://c.incru.it/2023/11/231102_kopia_home.png" alt="">
						</a>
					</div>
					<div class="owl-item">
						<a href="#" class="">
							<img src="https://c.incru.it/2023/11/homelive_303x160.png" alt="">
						</a>
					</div>
					<div class="owl-item">
						<a href="#" class="">
							<img src="https://c.incru.it/2023/08/230814_job_possible_homelive.png" alt="">
						</a>
					</div>  --> 
				</div>
			</div>
		</div>
		<!-- 배너광고 영역 -->
		<div class="cont_top_google">
			<div class="google_inner" id="bannerAdvrtIndex">
<%-- 				<img class="mainBanner" src="<%=request.getContextPath() %>/resources/images/bannerImg.png" alt="banner" style="width:100%;">
 --%>			</div>
		</div>
	</div>
	<!-- 기업광고 영역 -->
	<section aria-labelledby="h-primary-products" id="section_banner" class="sri_product">
		<input type="hidden" id="billing_ui_host" value="https://billing.saramin.co.kr">
		<h2 id="h-primary-products" class="blind">주요채용</h2>
		<div class="cont_product cont_platinum">
			<div class="inner_cont">
				<div class="top_poduct">
					<strong class="tit_cont" id="product_platinum">기업광고</strong>
					<button class="btn_product" data-banner="platinum" aria-label="플래티넘 상품 안내" aria-haspopup="true" aria-expanded="false">
						<span class="track_event" data-track_event="main|Ads_click_guide|platinum|layer_click">
							<svg class="icon_info"></svg> 더보기 >
						</span>
					</button>
				</div>
				<ul class="list_product" id="_platinum">
					<li class="open" data-rec_idx="46790488">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46790488"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|1"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/06/rwzprq_qhe7-2so27c_platinum7984245.jpg"
									class="img" alt="자이씨앤에이(주)"></span> <strong class="poduct_tit">자이씨앤에이(주)</strong>
								<em class="product_desc">2023 하반기 신입사원 채용</em> <em
								class="product_desc open"><span class="txt">건축/설비/전기/재경/IT</span><span
									class="txt">신입사원 채용</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2z748_h8js-2so27f_03.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46788090">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46788090"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|2"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/10/s2pccj_83ko-2so340_platinum7391105logo.png"
									class="img" alt="엔에이치엔커머스(주)"></span> <strong class="poduct_tit">엔에이치엔커머스(주)</strong>
								<em class="product_desc">2023 하반기 신입사원 공개채용</em> <em
								class="product_desc open"><span class="txt">2023 하반기</span><span
									class="txt">신입사원 공개채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">2003년 설립 (21년차)</span><span class="txt_desc">매출액
										334억 6천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 209명 <span class="base_year">(2021년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2pcl5_misx-2so340_05pcplatinum.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/kova"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|3"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2022/04/ra9h42_3df6-2so28w_platinum6432927a1.png"
									class="img" alt="(사)벤처기업협회"></span> <strong class="poduct_tit">(사)벤처기업협회</strong>
								<em class="product_desc">제5차 우수벤처기업 공동채용관</em> <em
								class="product_desc open"><span class="txt">제5차
										우수벤처기업</span><span class="txt">공동채용관</span></em> <span
								class="thumb_product"><img class="img" rel="nofollow"
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2nfgp_9jhg-2so27w_pcbnplatinum110X110.png"></span>
								<span class="bg"></span>
							</a> <span class="recruit_func"> <span class="blind">공고
									마감일</span>
							</span>
						</div>
					</li>
					<li class="open" data-rec_idx="46817106">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46817106"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|4"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/04/rskfhx_p0kp-2so271_platinum6268268oh2l97source.png"
									class="img" alt="㈜종근당"></span> <strong class="poduct_tit">㈜종근당</strong>
								<em class="product_desc">2023년 하반기 수시채용</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기 수시채용</span><span class="txt">11/08(수) 23:50 까지</span></em> <span
								class="thumb_product"><img class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2yilo_h9rn-2so340_16pcplatinum.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46842627">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46842627"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|5"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/07/pbfgc1_bdbr-2rxee8_platinum7610208logo.png"
									class="img" alt="(주)한샘"></span> <strong class="poduct_tit">(주)한샘</strong>
								<em class="product_desc">한샘 홈 인테리어 디자인 영업 전문직 대규모 공개채용</em> <em
								class="product_desc open"><span class="txt">디자인 영업
										전문직</span><span class="txt">대규모 공개채용</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s33zf3_h6i0-2so26s_202147.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46796862">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46796862"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|6"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/04/rt1oua_yno7-2so26m_platinum8100844tyecho.png"
									class="img" alt="통영에코파워(주)"></span> <strong class="poduct_tit">통영에코파워(주)</strong>
								<em class="product_desc">2023년 제3차 경력 및 신입사원 공개채용</em> <em
								class="product_desc open"><span class="txt">HDC그룹
										계열사</span><span class="txt">경력 및 신입사원 채용</span></em> <span
								class="wrap_desc"><span class="txt_desc">2013년 설립
										(11년차)</span><span class="txt_desc">사원수 11명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2r6ht_fuh9-2so26n_.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46887829">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46887829"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|7"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/11/s3fs7o_5yik-2so26n_platinum8102929.png"
									class="img" alt="(주)에스원"></span> <strong class="poduct_tit">(주)에스원</strong>
								<em class="product_desc">[에스원] 5급 첨단보안직(CS) 신입사원 채용</em> <em
								class="product_desc open"><span class="txt">5급
										첨단보안직(CS)</span><span class="txt">신입사원 채용</span></em> <span
								class="wrap_desc"><span class="txt_desc">1977년 설립
										(47년차)</span><span class="txt_desc">사원수 6,925명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/11/s3fr1b_t18p-2so340_11pcplatinum.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/kosmes"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|8"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2022/11/rldpuk_x3af-2so1qq_platinum2482125img63804127354389.jpg"
									class="img" alt="중소벤처기업진흥공단"></span> <strong class="poduct_tit">중소벤처기업진흥공단</strong>
								<em class="product_desc">23년도 성과공유 우수기업 채용관</em> <em
								class="product_desc open"><span class="txt">23년도
										성과공유 </span><span class="txt">우수기업 채용관</span></em> <span
								class="thumb_product"><img class="img" rel="nofollow"
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s0hkh4_yg7w-2so26d_pcbnplatinum110X110.png"></span>
								<span class="bg"></span>
							</a> <span class="recruit_func"> <span class="blind">공고
									마감일</span>
							</span>
						</div>
					</li>
					<li class="open" data-rec_idx="46858808">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46858808"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|9"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/08/rgsvko_y7x9-2so27w_platinum4943810xx2x2x.png"
									class="img" alt="㈜엘티엔터테인먼트"></span> <strong class="poduct_tit">㈜엘티엔터테인먼트</strong>
								<em class="product_desc">[카지노&amp;호텔]대규모 공채</em> <em
								class="product_desc open"><span class="txt">[카지노&amp;호텔]</span><span
									class="txt">대규모공채</span></em> <span class="wrap_desc"><span
									class="txt_desc">매출액 436억 7천만원 <span class="base_year">(2022년)</span></span><span
									class="txt_desc">사원수 549명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/11/s3fhfz_n0v7-2so26n_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46821866">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46821866"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|10"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/12/rnh55o_qeha-2so26f_platinum6606669brpharm.png"
									class="img" alt="㈜비알팜"></span> <strong class="poduct_tit">㈜비알팜</strong>
								<em class="product_desc">개발/해외영업/영업관리 경력 채용</em> <em
								class="product_desc open"><span class="txt">개발/해외영업/영업관리</span><span
									class="txt">경력직원 채용</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2yu3z_k1hw-2so26s_2021105.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/jump-it"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|11"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/10/rjw1mg_2bg2-2so276_platinum44347PCplatinumlogo.png"
									class="img" alt="점핏"></span> <strong class="poduct_tit">점핏</strong>
								<em class="product_desc">IT 개발자만을 위한 전문 채용관</em> <em
								class="product_desc open"><span class="txt">오직 개발자만을
										위한 </span><span class="txt">포지션</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/03/rsd1k6_2p65-2so26y_PCplatinumimg.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> <span class="recruit_func"> <span class="blind">공고
									마감일</span>
							</span>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/ex"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|12"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2020/07/qduw30_zxbx-2rxefb_platinum2482008ex.png"
									class="img" alt="한국도로공사"></span> <strong class="poduct_tit">한국도로공사</strong>
								<em class="product_desc">한국도로공사 협력사 채용관 </em> <em
								class="product_desc open"><span class="txt">한국도로공사</span><span
									class="txt">협력사 채용관</span></em> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2z1y1_i3ax-2so27w_pcbnplatinum110X110.png"></span>
								<span class="bg"></span>
							</a> <span class="recruit_func"> <span class="blind">공고
									마감일</span>
							</span>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a
								href="https://www.saramin.co.kr/zf_user/jobs/theme/skgeocentric"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|13"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/10/r0y26g_fwdn-2so27i_platinum5577482LOGODBimg.png"
									class="img" alt="SK지오센트릭"></span> <strong class="poduct_tit">SK지오센트릭</strong>
								<em class="product_desc">SK지오센트릭 협력회사 채용관</em> <em
								class="product_desc open"><span class="txt">SK지오센트릭</span><span
									class="txt">협력회사 채용관</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2022/02/r7mtrb_xypu-2so1qq_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> <span class="recruit_func"> <span class="blind">공고
									마감일</span>
							</span>
						</div>
					</li>
					<li class="open" data-rec_idx="46876043">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46876043"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|14"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/09/s105zo_wfkg-2so30k_platinum7343439toss.jpg"
									class="img" alt="비바리퍼블리카"></span> <strong class="poduct_tit">비바리퍼블리카</strong>
								<em class="product_desc">Finance Manager (Accounting)</em> <em
								class="product_desc open"><span class="txt">Finance
										Manager</span><span class="txt">(Accounting)</span></em> <span
								class="wrap_desc"><span class="txt_desc">2013년 설립
										(11년차)</span><span class="txt_desc">매출액 3,307억 7천만원 <span
										class="base_year">(2022년)</span></span><span class="txt_desc">사원수
										873명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dg59_ca3l-2so27f_03.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46868453">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46868453"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|15"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/09/rhrhtp_uj4t-2so277_platinum7415850logo.png"
									class="img" alt="롯데글로벌로지스"></span> <strong class="poduct_tit">롯데글로벌로지스</strong>
								<em class="product_desc">2023년 10월 롯데글로벌로지스 신입사원 채용 [A
									Grade]</em> <em class="product_desc open"><span class="txt">2023년
										10월 롯데글로벌로지스 신입사원 채용 [A Grade]</span><span class="txt"></span></em> <span
								class="wrap_desc"><span class="txt_desc">1988년 설립
										(36년차)</span><span class="txt_desc">사원수 2,285명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3bryx_9bjf-2so33c_rmrbx8rpek2so26x1.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46879841">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46879841"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|16"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/11/r2c5ez_2ioy-2so29r_platinum5198189aa.png"
									class="img" alt="대보건설㈜"></span> <strong class="poduct_tit">대보건설㈜</strong>
								<em class="product_desc">각 부문 경력직 수시 채용</em> <em
								class="product_desc open"><span class="txt">각 부문 경력직</span><span
									class="txt">수시 채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">1995년 설립 (29년차)</span><span class="txt_desc">매출액
										8,351억 1천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 647명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img class="img"
									rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dvnm_tb0u-2so33c_s0nnjupsl32so27irysk361i8g2so27704pcplatinum.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46831587">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46831587"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|17"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/03/r8x4kj_mip0-2so29b_platinum5968036logo.png"
									class="img" alt="보령엘엔지터미널주식회사"></span> <strong
								class="poduct_tit">보령엘엔지터미널주식회사</strong> <em
								class="product_desc">2023년 공개채용</em> <em
								class="product_desc open"><span class="txt">2023년
										보령LNG터미널</span><span class="txt">공개채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">2013년 설립 (11년차)</span><span class="txt_desc">사원수
										110명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30tjc_juaq-2so33c_202158.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46859146">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46859146"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|18"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/04/r9nmt5_8rfk-2so26f_platinum89174hec.png"
									class="img" alt="현대엔지니어링㈜"></span> <strong class="poduct_tit">현대엔지니어링㈜</strong>
								<em class="product_desc">건축영업(주택/도시정비) 경력직</em> <em
								class="product_desc open"><span class="txt">건축영업(주택/도시정비)</span><span
									class="txt">경력직 인재영입</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3bjt9_szqr-2so33c_202105.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46837594">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46837594"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|88"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/07/pub1zg_9jzx-2rxgcr_platinum6718485nextlogo.png"
									class="img" alt="(주)넥스트플레이어"></span> <strong class="poduct_tit">(주)넥스트플레이어</strong>
								<em class="product_desc">2023 경력직 대규모 채용</em> <em
								class="product_desc open"><span class="txt">2023 경력직</span><span
									class="txt">대규모 채용</span></em> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dpgd_yywy-2so340_01pcplatinum.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46886113">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46886113"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|20"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/10/rkantl_z4lb-2so339_platinum6416783shillalogo.png"
									class="img" alt="㈜호텔신라"></span> <strong class="poduct_tit">㈜호텔신라</strong>
								<em class="product_desc"> 4급 신입사원 채용 공고</em> <em
								class="product_desc open"><span class="txt">4급 신입사원</span><span
									class="txt">채용 </span></em> <span class="wrap_desc"><span
									class="txt_desc">1973년 설립 (51년차)</span><span class="txt_desc">사원수
										2,073명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img class="img"
									rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/11/s3fc9q_trrl-2so340_e.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46823498">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46823498"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|21"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/08/rztyi4_cn67-2so26n_platinum5905234boryungbio.png"
									class="img" alt="㈜보령바이오파마"></span> <strong class="poduct_tit">㈜보령바이오파마</strong>
								<em class="product_desc">영업/마케팅PM/개발/원료생산</em> <em
								class="product_desc open"><span class="txt">2023년 각
										부문</span><span class="txt">신입 및 경력 채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">1991년 설립 (33년차)</span><span class="txt_desc">매출액
										1,589억 9천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 243명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img class="img"
									rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2yz6u_gq7o-2so33u_2021102.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46859271">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46859271"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|22"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/05/ruu2f5_r2yq-2so30l_platinum6064948Guide.jpg"
									class="img" alt="㈜비케이알 버거킹"></span> <strong class="poduct_tit">㈜비케이알
									버거킹</strong> <em class="product_desc">BKR 전략기획팀 직원 채용</em> <em
								class="product_desc open"><span class="txt">BKR
										전략기획팀 직원 채용</span><span class="txt">(정규직) </span></em> <span
								class="wrap_desc"><span class="txt_desc">2012년 설립
										(12년차)</span><span class="txt_desc">매출액 7,574억 3천만원 <span
										class="base_year">(2022년)</span></span><span class="txt_desc">사원수
										1,035명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s36kbc_11y6-2so26n_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46873818">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46873818"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|23"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/03/rsbm4w_9c9n-2so30s_platinum8091386212soupanglogo230330.png"
									class="img" alt="쿠팡로지스틱스서비스"></span> <strong class="poduct_tit">쿠팡로지스틱스서비스</strong>
								<em class="product_desc">[연3200가능] CLS 플렉스
									어시스턴트(현장운영/관리/초보주부환영)</em> <em class="product_desc open"><span
									class="txt">주5일근무/연차15일</span><span class="txt">초보,주부환영</span></em>
								<span class="wrap_desc"><span class="txt_desc">2018년
										설립 (6년차)</span><span class="txt_desc">매출액 7,684억 9천만원 <span
										class="base_year">(2022년)</span></span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3d91z_62o9-2so26s_s2o2bil1k42so33u3.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46564651">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46564651"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|24"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/11/r2sypi_vjwf-2so29r_platinum3229139adad.png"
									class="img" alt="태광그룹 ㈜티시스아이티"></span> <strong
								class="poduct_tit">태광그룹 ㈜티시스아이티</strong> <em
								class="product_desc">우수 IT 기술 리더 영입</em> <em
								class="product_desc open"><span class="txt">태광그룹
										㈜티시스아이티</span><span class="txt">우수 IT 기술 리더 영입</span></em> <span
								class="wrap_desc"><span class="txt_desc">2004년 설립
										(20년차)</span><span class="txt_desc">매출액 3,976억원 <span
										class="base_year">(2022년)</span></span></span> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s0uwyt_bgmf-2so33u_1.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46829169">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46829169"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|25"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/08/rz3qbe_mws2-2so30g_platinum8121151madde.jpg"
									class="img" alt="주식회사 매이드 (MADDE Inc.)"></span> <strong
								class="poduct_tit">주식회사 매이드 (MADDE Inc.)</strong> <em
								class="product_desc">2023년 하반기 부문별 채용공고</em> <em
								class="product_desc open"><span class="txt"> 2023년
										하반기</span><span class="txt">엔지니어 부문 채용 </span></em> <span
								class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30hqd_vrta-2so26s_mmm.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46774245">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46774245"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|26"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2016/01/1454041688_platinum17034dksfoq.png"
									class="img" alt="(주)안랩"></span> <strong class="poduct_tit">(주)안랩</strong>
								<em class="product_desc">AhnLab 2023 하반기 신입/Junior 공개채용</em> <em
								class="product_desc open"><span class="txt">2023 하반기</span><span
									class="txt">신입/Junior 공개채용</span></em> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2m4sj_fmjn-2so33u_202142.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46829089">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46829089"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|27"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/px6yqi_7bmq-2rxefh_platinum4765081Guide150120.png"
									class="img" alt="(주)세경하이테크"></span> <strong class="poduct_tit">(주)세경하이테크</strong>
								<em class="product_desc">각 부문 경력사원 수시채용</em> <em
								class="product_desc open"><span class="txt">각 부문
										경력사원</span><span class="txt">수시채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">2006년 설립 (18년차)</span><span class="txt_desc">사원수
										182명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30gom_bpzd-2so27f_04.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46833275">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46833275"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|28"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2014/11/1417141461_platinum3657701.png"
									class="img" alt="한국단자공업㈜"></span> <strong class="poduct_tit">한국단자공업㈜</strong>
								<em class="product_desc">2024년도 신입사원 정기 공개채용</em> <em
								class="product_desc open"><span class="txt">2024년도
										신입사원</span><span class="txt">정기 공개채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">1973년 설립 (51년차)</span><span class="txt_desc">사원수
										1,176명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img class="img"
									rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30xqo_2cij-2so340_03pcplatinum.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46832656">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46832656"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|29"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/03/q7occ6_gtuk-2rxgcr_platinumspl.png"
									class="img" alt="S-OIL(주)"></span> <strong class="poduct_tit">S-OIL(주)</strong>
								<em class="product_desc">S-OIL 경력사원 채용 (안전보건전문가)</em> <em
								class="product_desc open"><span class="txt">S-OIL
										경력사원</span><span class="txt">채용 (안전보건전문가)</span></em> <span
								class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30szi_47eu-2so340_pc.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46821797">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46821797"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|30"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/12/rnh55o_qeha-2so26f_platinum6606669brpharm.png"
									class="img" alt="㈜비알팜"></span> <strong class="poduct_tit">㈜비알팜</strong>
								<em class="product_desc">QC/임상/원료생산/ 생산부 채용 </em> <em
								class="product_desc open"><span class="txt">QC/임상/원료생산/
										생산부</span><span class="txt">신입/경력 채용 </span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2yu2q_ylai-2so340_16pcplatinum.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46817687">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46817687"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|31"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/04/ra0fyz_5495-2so29b_platinum6602399logo.png"
									class="img" alt="GS건설"></span> <strong class="poduct_tit">GS건설</strong>
								<em class="product_desc">주택건축시공/ 현장안전 경력모집</em> <em
								class="product_desc open"><span class="txt">정규직 경력사원
										모집</span><span class="txt">(주택건축시공/ 현장안전)</span></em> <span
								class="wrap_desc"><span class="txt_desc">1969년 설립
										(55년차)</span><span class="txt_desc">사원수 4,239명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2yl25_ch45-2so27f_04.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46872048">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46872048"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|32"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/02/rqh49h_v60e-2so28q_platinum2815916dstdg.png"
									class="img" alt="코스콤"></span> <strong class="poduct_tit">코스콤</strong>
								<em class="product_desc">제4차 기간제 직원 채용</em> <em
								class="product_desc open"><span class="txt">2023년
										제4차</span><span class="txt">기간제 직원 채용</span></em> <span
								class="thumb_product"><img class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3c5e9_hx2t-2so33c_202110.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46848735">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46848735"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|33"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/05/ru4m6c_2rt9-2so33j_platinum5913109.png"
									class="img" alt="한국발전기술㈜"></span> <strong class="poduct_tit">한국발전기술㈜</strong>
								<em class="product_desc">포천민자발전 직원 공채</em> <em
								class="product_desc open"><span class="txt">포천민자발전</span><span
									class="txt">직원 공채</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s35x05_z33r-2so26s_202133.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46805400">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46805400"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|34"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/10/ph3gyl_lbrq-2rxeei_platinum57999541.png"
									class="img" alt="국방과학연구소"></span> <strong class="poduct_tit">국방과학연구소</strong>
								<em class="product_desc">24년 상반기 임용 공개채용 공고</em> <em
								class="product_desc open"><span class="txt">24년 상반기</span><span
									class="txt">임용 공개채용 공고</span></em> <span class="wrap_desc"><span
									class="txt_desc">1971년 설립 (53년차)</span><span class="txt_desc">사원수
										3,149명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2thm3_6vmh-2so33u_202159.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46876597">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46876597"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|35"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/03/rrhofr_1n4n-2so28j_platinum6894163d1a.png"
									class="img" alt="루이비통코리아"></span> <strong class="poduct_tit">루이비통코리아</strong>
								<em class="product_desc">2023 LOUIS VUITTON 신입 및 경력 채용</em> <em
								class="product_desc open"><span class="txt">2023
										LOUIS VUITTON</span><span class="txt">신입 및 경력 채용</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dku4_175c-2so27f_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/adagency"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|36"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/10/1443692335_platinum2482786naver.jpg"
									class="img" alt="네이버 "></span> <strong class="poduct_tit">네이버
							</strong> <em class="product_desc">검색광고 공식대행사 채용관 </em> <em
								class="product_desc open"><span class="txt">네이버 검색광고
								</span><span class="txt">공식대행사 채용관 </span></em> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/07/ry18bh_abjx-2so1qq_pcbnplatinum110X11042.png"></span>
								<span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46825096">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46825096"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|37"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/08/rzirad_e76m-2so30l_platinum5713769yj.png"
									class="img" alt="영진아이엔디(주)"></span> <strong class="poduct_tit">영진아이엔디(주)</strong>
								<em class="product_desc">반도체 장비 필드엔지니어 채용</em> <em
								class="product_desc open"><span class="txt">반도체 장비</span><span
									class="txt">필드엔지니어 채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">2003년 설립 (21년차)</span><span class="txt_desc">매출액
										545억 4천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 185명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2z3g6_ei8i-2so33u_2021102.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46792301">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46792301"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|38"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/03/podt17_bwzx-2rxefe_platinum4315960vitzro.png"
									class="img" alt="비츠로그룹"></span> <strong class="poduct_tit">비츠로그룹</strong>
								<em class="product_desc">2023년 하반기 신입 공채</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기 신입 공채</span><span class="txt">(~11/14)</span></em> <span
								class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s36bro_5i8g-2so26n_231018.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46879545">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46879545"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|39"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/11/qjoc1e_5yid-2rxefc_platinum4289520secui.png"
									class="img" alt="(주)시큐아이"></span> <strong class="poduct_tit">(주)시큐아이</strong>
								<em class="product_desc">[삼성SDS 자회사](주)시큐아이 하반기 신입사원 공개채용</em> <em
								class="product_desc open"><span class="txt">[삼성SDS
										자회사]</span><span class="txt">하반기 신입사원 채용</span></em> <span
								class="wrap_desc"><span class="txt_desc">2000년 설립
										(24년차)</span><span class="txt_desc">사원수 471명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dspq_fdcr-2so33u_2021105.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/ketep"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|40"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/09/qzi8wh_ldkc-2so27i_platinum4982830LOGODBimg.png"
									class="img" alt="한국에너지기술평가원"></span> <strong class="poduct_tit">한국에너지기술평가원</strong>
								<em class="product_desc">2023년 탄소중립 에너지혁신기업관</em> <em
								class="product_desc open"><span class="txt">2023년
										탄소중립 </span><span class="txt">에너지혁신기업관</span></em> <span
								class="thumb_product"><img class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s0hk2s_5lz8-2so26d_.png"></span>
								<span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46833343">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46833343"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|41"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/08/pvuw4e_op83-2rxefc_platinum7733419sbsp.png"
									class="img" alt="SBS플러스"></span> <strong class="poduct_tit">SBS플러스</strong>
								<em class="product_desc">2023년 하반기 경력사원 모집</em> <em
								class="product_desc open"><span class="txt">재무, 경영기획
										부문</span><span class="txt">경력사원 모집</span></em> <span class="wrap_desc"><span
									class="txt_desc">매출액 812억 7천만원 <span class="base_year">(2022년)</span></span><span
									class="txt_desc">사원수 18명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30wl0_mxcs-2so27f_05.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46782644">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46782644"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|42"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/04/q92lad_xovr-2rxefi_platinum21689.png"
									class="img" alt="요진건설산업(주)"></span> <strong class="poduct_tit">요진건설산업(주)</strong>
								<em class="product_desc">2023년 하반기 신입/경력사원 채용공고</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기 </span><span class="txt">신입/경력사원 채용공고</span></em> <span
								class="wrap_desc"><span class="txt_desc">1976년 설립
										(48년차)</span><span class="txt_desc">사원수 236명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2nss3_duq8-2so26s_202136.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/koreabio"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|43"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/08/rh07po_i6eu-2so1qq_platinum7600347.PNG"
									class="img" alt="한국바이오협회"></span> <strong class="poduct_tit">한국바이오협회</strong>
								<em class="product_desc">바이오헬스 온라인 채용관</em> <em
								class="product_desc open"><span class="txt">바이오헬스 </span><span
									class="txt">온라인 채용관</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s1kgfn_8g91-2so27w_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46842279">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46842279"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|44"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/10/s34onr_i53h-2so340_platinum8130950platt.png"
									class="img" alt="(주)여의도이자인경제뉴스"></span> <strong
								class="poduct_tit">(주)여의도이자인경제뉴스</strong> <em
								class="product_desc">운영부 외 각부문 공개채용</em> <em
								class="product_desc open"><span class="txt">운영부,
										주식방송 전문가</span><span class="txt">마케팅 팀장 채용</span></em> <span
								class="thumb_product"><img class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s34obh_yxek-2so26n_.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/sba-seoul"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|45"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/04/rtg1jz_99c5-2so1qq_platinumlogomainsbaseoul.png"
									class="img" alt="서울경제진흥원"></span> <strong class="poduct_tit">서울경제진흥원</strong>
								<em class="product_desc">서울기업 온택트 채용관</em> <em
								class="product_desc open"><span class="txt">서울기업</span><span
									class="txt">온택트 채용관</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/04/rtg1kq_mvyi-2so1qq_pcbnplatinum110X11062.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46864095">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46864095"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|46"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/01/r68q1n_nllv-2so28o_platinum80791.png"
									class="img" alt="(주)서한"></span> <strong class="poduct_tit">(주)서한</strong>
								<em class="product_desc">2023년도 하반기 공개채용</em> <em
								class="product_desc open"><span class="txt">2023년도
										하반기 공개채용</span><span class="txt"></span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3bglw_exiq-2so340_03pcplatinum.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46846339">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46846339"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|47"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/08/ryp5cc_zj69-2so30g_platinum42271unisem.jpg"
									class="img" alt="유니셈㈜"></span> <strong class="poduct_tit">유니셈㈜</strong>
								<em class="product_desc">반도체 엔지니어 외 각부문 채용</em> <em
								class="product_desc open"><span class="txt">반도체 장비
										엔지니어</span><span class="txt">외 각부문 채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">1996년 설립 (28년차)</span><span class="txt_desc">사원수
										789명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s346ch_qo9k-2so27f_07.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46877586">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46877586"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|48"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/11/q18u6z_gfge-2rxefd_platinum5328057katechlogo2.png"
									class="img" alt="한국자동차연구원"></span> <strong class="poduct_tit">한국자동차연구원</strong>
								<em class="product_desc">한국자동차연구원 정직원 채용 공고</em> <em
								class="product_desc open"><span class="txt">한국자동차연구원</span><span
									class="txt">정직원 채용 공고</span></em> <span class="wrap_desc"><span
									class="txt_desc">1990년 설립 (34년차)</span><span class="txt_desc">매출액
										2,573억 8천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 806명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img class="img"
									rel="nofollow"
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dnf1_cm68-2so26s_rs7q7criim2so33904.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46802716">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46802716"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|49"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/09/qyqea5_tr6f-2so29i_platinum4461003Guide150120.png"
									class="img" alt="(주)윤성에프앤씨"></span> <strong class="poduct_tit">(주)윤성에프앤씨</strong>
								<em class="product_desc">각 부문 신입 및 경력채용</em> <em
								class="product_desc open"><span class="txt">사업관리/제어/설계</span><span
									class="txt">연구/구매/영업 외</span></em> <span class="wrap_desc"><span
									class="txt_desc">1999년 설립 (25년차)</span><span class="txt_desc">매출액
										2,102억 7천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 278명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2rpux_m4ct-2so33u_202153.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/cjpi"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|50"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/05/ruj2d3_ccn1-2so1qq_platinum7916637.png"
									class="img" alt="충청남도일자리경제진흥원"></span> <strong
								class="poduct_tit">충청남도일자리경제진흥원</strong> <em
								class="product_desc">충남 우수기업 온라인 채용관</em> <em
								class="product_desc open"><span class="txt">충남 우수기업
								</span><span class="txt">온라인 채용관</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/06/rwut8w_r82p-2so1qq_pcbnplatinum110X11039.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/samsung"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|51"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/09/pek00k_ou8e-2rxeea_platinum2481940.png"
									class="img" alt="삼성전자 협력회사 "></span> <strong class="poduct_tit">삼성전자
									협력회사 </strong> <em class="product_desc">삼성전자 협력회사 채용관</em> <em
								class="product_desc open"><span class="txt">삼성전자</span><span
									class="txt">협력회사 채용관</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/04/rtqyl6_vjlc-2so26x_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46879465">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46879465"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|52"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/10/rk2tug_hjv6-2so339_platinum3264060miracompla.png"
									class="img" alt="(주)미라콤아이앤씨"></span> <strong class="poduct_tit">(주)미라콤아이앤씨</strong>
								<em class="product_desc">2023 경력사원 채용</em> <em
								class="product_desc open"><span class="txt">2023
										경력사원 채용</span><span class="txt">(MES/아키텍트/컨설턴트)</span></em> <span
								class="wrap_desc"><span class="txt_desc">1998년 설립
										(26년차)</span><span class="txt_desc">사원수 1,739명 <span
										class="base_year">(2023년)</span></span></span> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3ds41_sgzj-2so340_09pcplatinum.jpg"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46808667">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46808667"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|53"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/10/s2yzyx_246q-2so26n_platinum2482893.png"
									class="img" alt="현대종합금속㈜"></span> <strong class="poduct_tit">현대종합금속㈜</strong>
								<em class="product_desc">신입/경력사원 모집</em> <em
								class="product_desc open"><span class="txt">신입/경력사원
										모집</span><span class="txt"></span></em> <span class="wrap_desc"><span
									class="txt_desc">1975년 설립 (49년차)</span><span class="txt_desc">매출액
										6,597억 9천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 224명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2tc87_v8ci-2so26n_02.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a
								href="https://www.saramin.co.kr/zf_user/jobs/theme/with-komipo"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|54"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2019/04/pptt0h_3rfg-2rxeff_platinum2482036komipologo.png"
									class="img" alt="한국중부발전"></span> <strong class="poduct_tit">한국중부발전</strong>
								<em class="product_desc">한국중부발전 협력기업 채용관</em> <em
								class="product_desc open"><span class="txt">한국중부발전 </span><span
									class="txt">협력기업 채용관</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s1knih_202b-2so27w_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46818689">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46818689"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|55"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/08/rgfzz7_qkht-2so26a_platinum7403532.png"
									class="img" alt="(주)바텍"></span> <strong class="poduct_tit">(주)바텍</strong>
								<em class="product_desc">하반기 대규모 채용</em> <em
								class="product_desc open"><span class="txt">헬스케어
										국가대표</span><span class="txt">하반기 대규모 채용</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2yoo7_3a1h-2so26n_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46853392">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46853392"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|56"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/09/s105zo_wfkg-2so30k_platinum7343439toss.jpg"
									class="img" alt="비바리퍼블리카"></span> <strong class="poduct_tit">비바리퍼블리카</strong>
								<em class="product_desc">KYC 검수 담당자 (고객확인정보)</em> <em
								class="product_desc open"><span class="txt">KYC 검수
										담당자</span><span class="txt">(고객확인정보)</span></em> <span class="wrap_desc"><span
									class="txt_desc">2013년 설립 (11년차)</span><span class="txt_desc">매출액
										3,307억 7천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 873명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img class="img"
									rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s35xh3_2k2q-2so33c_s1dm1m6szb2so33c202122.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46842162">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46842162"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|57"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2016/04/o6dc9n_platinum831551.png"
									class="img" alt="㈜덴티움"></span> <strong class="poduct_tit">㈜덴티움</strong>
								<em class="product_desc">국내영업 채용</em> <em
								class="product_desc open"><span class="txt">국내영업 각
										분야</span><span class="txt">채용공고</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s35yul_2uno-2so26s_202147.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46790381">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46790381"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|58"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/10/rjviz1_hnvg-2so276_platinum7916984logo.png"
									class="img" alt="오케이금융그룹"></span> <strong class="poduct_tit">오케이금융그룹</strong>
								<em class="product_desc">2023 OK금융그룹 채용형 인턴 공개모집</em> <em
								class="product_desc open"><span class="txt">2023
										OK금융그룹</span><span class="txt">채용형 인턴 공개모집</span></em> <span
								class="wrap_desc"><span class="txt_desc">1999년 설립
										(25년차)</span><span class="txt_desc">매출액 3,275억 5천만원 <span
										class="base_year">(2022년)</span></span><span class="txt_desc">사원수
										139명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2ymf9_1r61-2so27f_rjvjkqrdhc2so27601.gif"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46792270">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46792270"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|59"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/06/rw9wvo_hb8c-2so272_platinum6211168advantest.png"
									class="img" alt="아드반테스트코리아(주)"></span> <strong
								class="poduct_tit">아드반테스트코리아(주)</strong> <em
								class="product_desc">2023년 하반기 경력/신입사원 공채</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기</span><span class="txt">경력/신입사원 공개채용</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2ppw6_p6r9-2so340_03pcplatinum.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46828009">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46828009"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|60"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/08/rzrp9q_9in7-2so26a_platinum79187.png"
									class="img" alt="셰플러코리아(유)"></span> <strong class="poduct_tit">셰플러코리아(유)</strong>
								<em class="product_desc">각 부문 신입/경력사원 모집</em> <em
								class="product_desc open"><span class="txt">하반기 각 부문</span><span
									class="txt">신입/경력사원 모집</span></em> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30fhu_zaz5-2so26s_202116.png"></span>
								<span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46855868">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46855868"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|61"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/08/otzjw4_j0fp-2rxee8_platinum7238815logo.png"
									class="img" alt="무림그룹"></span> <strong class="poduct_tit">무림그룹</strong>
								<em class="product_desc">직무별 신입/경력 채용공고</em> <em
								class="product_desc open"><span class="txt"> </span><span
									class="txt"> </span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s36mki_az9g-2so26n_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/gsmb"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|62"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s17k61_4aah-2so26d_platinum18456.png"
									class="img" alt="중소기업중앙회"></span> <strong class="poduct_tit">중소기업중앙회</strong>
								<em class="product_desc">이달의 우수 중소기업 일자리 전용채용관</em> <em
								class="product_desc open"><span class="txt">이달의 우수
										중소기업</span><span class="txt">일자리 전용채용관</span></em> <span
								class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/08/rz7rw7_y1en-2so26d_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a
								href="https://www.saramin.co.kr/zf_user/jobs/theme/hmgpartnerjob"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|63"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/12/1449465776_platinum2811073.jpg"
									class="img" alt="현대자동차그룹"></span> <strong class="poduct_tit">현대자동차그룹</strong>
								<em class="product_desc">협력사 채용박람회</em> <em
								class="product_desc open"><span class="txt">현대자동차그룹</span><span
									class="txt">협력사 채용박람회</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2sxbq_2wd7-2so27w_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/d-alliance"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|64"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/06/rwj0mn_4uyk-2so272_platinum7277294ict.png"
									class="img" alt="과학기술정보통신부"></span> <strong class="poduct_tit">과학기술정보통신부</strong>
								<em class="product_desc">디지털인재얼라이언스 채용관</em> <em
								class="product_desc open"><span class="txt">디지털인재얼라이언스</span><span
									class="txt">온라인 채용관</span></em> <span class="thumb_product"><img
									class="img" rel="nofollow"
									src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/06/rwizug_1s65-2so26x_pcbnplatinum110X110.png"></span>
								<span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46798086">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46798086"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|65"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/11/r1zkdh_crwu-2so28q_platinum7666200.png"
									class="img" alt="제일사료(주)"></span> <strong class="poduct_tit">제일사료(주)</strong>
								<em class="product_desc">2023년 하반기 신입/경력 공개채용</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기</span><span class="txt">신입/경력 공개채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">매출액 9,230억 4천만원 <span class="base_year">(2022년)</span></span><span
									class="txt_desc">사원수 386명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2rig7_29yr-2so26s_202132.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="38563977">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=38563977"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|66"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/08/qf1818_xohb-2rxefg_platinum4970519logo.png"
									class="img" alt="㈜우아한형제들"></span> <strong class="poduct_tit">㈜우아한형제들</strong>
								<em class="product_desc">부문별 경력/신입 인재영입</em> <em
								class="product_desc open"><span class="txt">부문별</span><span
									class="txt">경력/신입 인재영입</span></em> <span class="wrap_desc"><span
									class="txt_desc">2011년 설립 (13년차)</span><span class="txt_desc">매출액
										2조 9,515억 8천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 2,161명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2020/08/qekj5n_zked-2rxeff_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46801567">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46801567"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|67"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qmt3nm_fib0-2rxefk_platinum7748476.png"
									class="img" alt="(주)제이와이피엔터테인먼트"></span> <strong
								class="poduct_tit">(주)제이와이피엔터테인먼트</strong> <em
								class="product_desc">2023년 4분기 JYP엔터테인먼트 공개 채용</em> <em
								class="product_desc open"><span class="txt">2023년
										4분기</span><span class="txt">JYP 공개 채용</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2rsm2_muqx-2so26n_.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46878484">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46878484"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|68"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/08/rg2teb_1f0e-2so30r_platinum6637104rdswhtutvz2so26nsource00.png"
									class="img" alt="유탑그룹"></span> <strong class="poduct_tit">유탑그룹</strong>
								<em class="product_desc">각 부문별 직원 채용</em> <em
								class="product_desc open"><span class="txt">각 부문별</span><span
									class="txt">직원 채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">2003년 설립 (21년차)</span><span class="txt_desc">사원수
										150명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dps4_vk3c-2so33u_1.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46837574">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46837574"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|69"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/03/po8qe7_wbf4-2rxefg_platinum51077.png"
									class="img" alt="(주)도루코"></span> <strong class="poduct_tit">(주)도루코</strong>
								<em class="product_desc">23년 하반기 신입/경력사원 채용</em> <em
								class="product_desc open"><span class="txt">23년 하반기</span><span
									class="txt">신입/경력사원 채용</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s32ctl_xooz-2so26n_202107.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46879787">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46879787"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|70"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/02/rphl0w_6nk2-2so28j_platinum6071798c22s2s2.png"
									class="img" alt="삼성생명서비스"></span> <strong class="poduct_tit">삼성생명서비스</strong>
								<em class="product_desc">2024년 Lv3 신입사원 채용</em> <em
								class="product_desc open"><span class="txt">2024년
										Lv3</span><span class="txt">신입사원 채용</span></em> <span class="wrap_desc"><span
									class="txt_desc">2000년 설립 (24년차)</span><span class="txt_desc">매출액
										2,126억 8천만원 <span class="base_year">(2022년)</span>
								</span><span class="txt_desc">사원수 2,049명 <span class="base_year">(2023년)</span></span></span>
								<span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dubq_4a5u-2so26s_202132.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46825584">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46825584"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|71"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2014/11/1414974056_platinum40712.png"
									class="img" alt="키엔스코리아㈜"></span> <strong class="poduct_tit">키엔스코리아㈜</strong>
								<em class="product_desc">2023년 신입사원 채용 (컨설팅 세일즈)</em> <em
								class="product_desc open"><span class="txt">2023년
										신입사원</span><span class="txt">채용 (컨설팅 세일즈)</span></em> <span
								class="wrap_desc"><span class="txt_desc">2004년 설립
										(20년차)</span><span class="txt_desc">매출액 2,534억 4천만원 <span
										class="base_year">(2022년)</span></span><span class="txt_desc">사원수
										315명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s30fwd_pgow-2so340_rtnu5p82d02so33j2021103.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46877366">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46877366"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|72"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/06/re9xay_5m4s-2so277_platinum33870logo.png"
									class="img" alt="한미그룹 "></span> <strong class="poduct_tit">한미그룹
							</strong> <em class="product_desc">2023년 11월 수시채용 [각 부문별]</em> <em
								class="product_desc open"><span class="txt">2023년
										11월</span><span class="txt">수시채용 [각 부문별]</span></em> <span
								class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s3dl68_tqpn-2so33c_s23h50i7xh2so33cs08egnrssn2so26n202149.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46754663">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46754663"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|73"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/06/rdylg2_mg56-2so26s_platinum7691169agoda.png"
									class="img" alt="아고다트레블오퍼레이션스코리아(유) "></span> <strong
								class="poduct_tit">아고다트레블오퍼레이션스코리아(유) </strong> <em
								class="product_desc">하반기 신입/경력 Global 채용</em> <em
								class="product_desc open"><span class="txt">[대규모 인원
										확장]</span><span class="txt">하반기 신입/경력 채용</span></em> <span
								class="wrap_desc"><span class="txt_desc">2017년 설립
										(7년차)</span><span class="txt_desc">매출액 127억 9천만원 <span
										class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2g2h5_40rp-2so340_pc.jpg"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46793828">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46793828"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|74"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/03/r8q8d7_vu21-2so30l_platinum7877994cmsedu.png"
									class="img" alt="(주)크레버스"></span> <strong class="poduct_tit">(주)크레버스</strong>
								<em class="product_desc">수학·영어 강사 특별 채용</em> <em
								class="product_desc open"><span class="txt">수학·영어
										신입/경력</span><span class="txt">특별채용</span></em> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2pw23_56pm-2so27f_07.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46856024">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46856024"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|75"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/04/onz6a8_akqo-2rxgds_platinum3868640sunjinlogo170406.png"
									class="img" alt="선진뷰티사이언스(주)"></span> <strong class="poduct_tit">선진뷰티사이언스(주)</strong>
								<em class="product_desc">2023년 하반기 분야별 채용 공고</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기 </span><span class="txt">분야별 채용 공고</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s367dr_j4sj-2so33c_202147.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/kdia"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|76"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/03/rrv1s7_hpqh-2so1qq_platinum7428563logokdia.png"
									class="img" alt="한국디스플레이산업협회"></span> <strong class="poduct_tit">한국디스플레이산업협회</strong>
								<em class="product_desc">디스플레이 우수기업 온라인 채용관</em> <em
								class="product_desc open"><span class="txt">디스플레이
										우수기업</span><span class="txt">온라인 채용관</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/03/rrv1st_5iom-2so1qq_pcbnplatinum110X11034.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a
								href="https://www.saramin.co.kr/zf_user/jobs/theme/mss-incheon"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|77"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/08/rz2b15_np38-2so26d_platinum.png"
									class="img" alt="인천지방중소벤처기업청"></span> <strong class="poduct_tit">인천지방중소벤처기업청</strong>
								<em class="product_desc">2023 인천특성화고·청년 온라인 채용박람회</em> <em
								class="product_desc open"><span class="txt">2023
										인천특성화고·청년</span><span class="txt">온라인 채용박람회</span></em> <span
								class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/08/ryswqd_am7n-2so26d_pcbnplatinum110X110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a> 
						</div>
					</li>
					<li class="open" data-rec_idx="46856251">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46856251"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|78"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/12/q2sa8s_k11u-2rxefc_platinum4395515iby.png"
									class="img" alt="범양건영(주)"></span> <strong class="poduct_tit">범양건영(주)</strong>
								<em class="product_desc">2023년 하반기 경력/신입사원 채용</em> <em
								class="product_desc open"><span class="txt">2023년
										하반기 </span><span class="txt">경력/신입사원 채용</span></em> <span
								class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s369dr_zir0-2so26s_s21j6x3bkx2so33cs0nuikak7k2so26f202139.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46650998">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46650998"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|79"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/11/rm5kf1_zkeb-2so27w_platinum85035vb.png"
									class="img" alt="(주)케이티엠오에스북부"></span> <strong
								class="poduct_tit">(주)케이티엠오에스북부</strong> <em
								class="product_desc">[kt그룹] 2023년 kt MOS북부 전원분야 경력직 채용</em> <em
								class="product_desc open"><span class="txt">[kt 그룹]
										2023년 하반기</span><span class="txt">전원분야 경력직 채용</span></em> <span
								class="wrap_desc"><span class="txt_desc">2003년 설립
										(21년차)</span><span class="txt_desc">매출액 829억 8천만원 <span
										class="base_year">(2022년)</span></span><span class="txt_desc">사원수
										995명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/09/s1j81l_3h3h-2so26n_202122.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46824395">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46824395"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|80"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/09/s10nth_y7f9-2so30g_platinum6336282keti.jpg"
									class="img" alt="한국전자기술연구원"></span> <strong class="poduct_tit">한국전자기술연구원</strong>
								<em class="product_desc">2023년 2차 정규직 공개채용 공고</em> <em
								class="product_desc open"><span class="txt">2023년 2차</span><span
									class="txt">정규직 공개채용 공고</span></em> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2z1cf_iz4g-2so26s_2021110.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46726357">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46726357"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|81"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/07/rep1ug_51tx-2so277_platinum4441383logo.png"
									class="img" alt="(주)에프에스티"></span> <strong class="poduct_tit">(주)에프에스티</strong>
								<em class="product_desc">연구개발/양산개발 모집</em> <em
								class="product_desc open"><span class="txt">기업부설연구소</span><span
									class="txt">연구개발/양산개발 모집</span></em> <span class="wrap_desc"><span
									class="txt_desc">1987년 설립 (37년차)</span><span class="txt_desc">사원수
										699명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/10/s2au9p_xrxs-2so33u_202127.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open" data-rec_idx="46889040">
						<div class="box_product">
							<a href="/zf_user/jobs/relay/pop-view?rec_idx=46889040"
								class="link_box track_event"
								data-track_event="main|Ads_click|platinum_fix_expand|82"
								rel="sponsored, nofollow"> <span class="product_logo"><img
									src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2022/07/reh4c9_uihu-2so26d_platinum4110387.png"
									class="img" alt="메타넷디지털(주)"></span> <strong class="poduct_tit">메타넷디지털(주)</strong>
								<em class="product_desc">Metanet그룹 Cloud/Infra 채용 연계형 교육 인턴
									모집공고</em> <em class="product_desc open"><span class="txt">Cloud/Infra</span><span
									class="txt">채용 연계형 교육 인턴</span></em> <span class="wrap_desc"><span
									class="txt_desc">1989년 설립 (35년차)</span><span class="txt_desc">사원수
										505명 <span class="base_year">(2023년)</span>
								</span></span> <span class="thumb_product"><img
									data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2023/11/s3fm71_ir55-2so33c_s180xydhbw2so28b1111111111111111111111111111.png"
									class="img" rel="nofollow"></span> <span class="bg"></span>
							</a>
						</div>
					</li>
					<li class="open">
						<div class="box_product">
							<a href="https://www.saramin.co.kr/zf_user/jobs/theme/jobsincheon" class="link_box track_event" data-track_event="main|Ads_click|platinum_fix_expand|87" rel="sponsored, nofollow"> 
								
								<span class="product_logo">
									<img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2023/09/s0wlo9_vk7i-2so27i_platinum7239785cplogo.png" class="img" alt="인천테크노파크">
								</span> 
								
								<strong class="poduct_tit">쿠팡 주식회사</strong>
								
								<em class="product_desc">경영지원 대규모 채용</em> 
								
								<em class="product_desc open">
									<span class="txt">(HR, Finance, Legal</span>
									<span class="txt">CES, CLS 등)</span>
								</em> 
								
								<span class="bg"></span>
							</a> 
						</div>
					</li>	
					
					
					
					
					
					
				</ul>
			</div>
		</div>
	</section>

	<script type="text/javascript" src="/js/libs/secure/rsa.min.js"></script>
	<script type="text/javascript"
		src="/js/libs/secure/secure-login.js?v=131018"></script>
	<div id="pop_login_layer_dimmed"
		style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: url(//www.saraminimage.co.kr/event_2014/0708_rank1/bg_dimmed.png) repeat 0 0; z-index: 9998;"></div>
	<div id="pop_login_layer" class="pop_login_layer"
		style="display: none; position: absolute; top: 280px;" role="dialog"
		aria-labelledby="login_title">
		<div class="outer">
			<form name="loginFrm" id="loginFrm"
				action="https://www.saramin.co.kr/zf_user/auth/login" method="post"
				onsubmit="return loginCheckMainLayer(this);">
				<input type="hidden" name="page_url" id="page_url"
					value="L3pmX3VzZXIv"> <input type="hidden" name="url"
					value=""> <input type="hidden" name="allowType" value="">
				<input type="hidden" name="ut" value=""> <input
					type="hidden" name="layerScrapIdx" value=""> <input
					type="hidden" name="layerFavorIdx" value=""> <input
					type="hidden" name="rec_apply_fl" value="n"> <input
					type="hidden" name="encid" value="" id="encid"><input
					type="hidden" name="encpw" value="" id="encpw"><input
					type="hidden" name="seq" value="" id="seq">
				<fieldset class="inner">
					<h4 id="login_title" class="title">
						<span class="txt_point">로그인</span>이 필요한 서비스입니다.
					</h4>
					<div class="setting">
						<span class="inpChk"> <input type="checkbox"
							id="ly_autologin" class="setting_inp" name="autologin"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
							<label class="setting_label" for="ly_autologin"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
								로그인 유지 </label>
						</span> <span class="inpChk"> <input type="checkbox"
							id="ly_id_save" class="setting_inp" name="id_save"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
							<label class="setting_label" for="ly_id_save"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
								아이디 저장 </label>
						</span> <span class="inpChkSwP ssl_login_box"> <input
							type="checkbox" id="ly_ssl_login" title="보안접속"
							class="ssl_login_hide" checked="checked"> <label
							for="ly_ssl_login" id="ly_ssl_login_label" class="lbl label_type">보안</label>
						</span>
					</div>
					<div id="login_form" class="login-form">
						<div id="id_input_form" class="id-input-box focus">
							<input type="text" name="id" id="ly_id" class="txt_tool" value=""
								required=""> <label id="ly-id-label" class="id-label"
								for="ly_id"><span>아이디</span></label>
						</div>
						<div id="pw_input_form" class="pw-input-box">
							<input type="password" name="password" id="ly_password" value=""
								required=""> <label id="ly-password-label"
								for="ly_password"><span>비밀번호</span></label>
						</div>
						<button type="submit" class="btn-login"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login',''],['ga_lead','login','pc_login_layer','per_login'])">
							<span>로그인</span>
						</button>
					</div>
					<div class="signup-forgotten">
						<a href="/zf_user/member/registration/join" target="_blank"
							class="sign_up">회원가입</a> <a href="/zf_user/helpdesk/idpw-find"
							target="_blank" class="forgotten">아이디/비밀번호 찾기</a>
					</div>
					<div class="social_login_tit">
						<p class="tit">소셜 계정으로 간편 로그인</p>
					</div>
					<ul class="social_login" id="wrap_social_login">
						<li class="login_naver"><a
							href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2F&amp;login_type=p"
							class="sl_naver ga_data_layer" data-provider="naver"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_naver"></use></svg></span></a></li>
						<li class="login_kakao"><a
							href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2F&amp;login_type=p"
							class="sl_kakao ga_data_layer" data-provider="kakao"
							aria-describedby="last_login_kakao"><span class="wrap_icon"><svg
										class="icon">
										<use xlink:href="#icon_login_kakao"></use></svg></span></a>
						<div id="last_login_kakao" class="tool_tip_wrap social_tooltip"
								style="display: none">
								<div class="tool_tip top_center">
									<span class="tail"></span>
									<div class="tool_tip_cont">마지막에 로그인한 계정이에요!</div>
								</div>
							</div></li>
						<li class="login_google"><a
							href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2F&amp;login_type=p"
							class="sl_google ga_data_layer" data-provider="google"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_google"></use></svg></span></a></li>
						<li class="login_facebook"><a
							href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2F&amp;login_type=p"
							class="sl_facebook ga_data_layer" data-provider="facebook"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_facebook"></use></svg></span></a></li>
						<li class="login_apple"><a
							href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;url=%2Fzf_user%2F&amp;login_type=p"
							class="sl_apple ga_data_layer" data-provider="apple"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_apple"></use></svg></span></a></li>
					</ul>
				</fieldset>
			</form>
			<button class="pop_login_layer_close" id="pop_login_layer_close">닫기</button>
		</div>
		<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
<symbol id="icon_login_naver" viewBox="0 0 20 20" fill="none">
<path
				d="M13.5615 10.704L6.14588 0H0V20H6.43845V9.296L13.8541 20H20V0H13.5615V10.704Z"
				fill="white"></path>
</symbol>
<symbol id="icon_login_kakao" viewBox="0 0 24 22" fill="none">
<path
				d="M12 -0.00012207C5.37092 -0.00012207 0 4.23616 0 9.46609C0 12.868 2.27684 15.8528 5.69401 17.5215C5.44314 18.4545 4.78556 20.9082 4.65252 21.4316C4.48907 22.0839 4.89199 22.0725 5.15426 21.8981C5.35952 21.7616 8.44219 19.6681 9.77257 18.7654C10.4948 18.8716 11.2398 18.9285 12 18.9285C18.6291 18.9285 24 14.6922 24 9.4623C24 4.23237 18.6291 -0.00012207 12 -0.00012207Z"
				fill="#181600"></path>
</symbol>
<symbol id="icon_login_google" viewBox="0 0 22 22" fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M21.5593 11.25C21.5593 10.4697 21.4888 9.72048 21.3593 9.00027H10.9998V13.2552H16.9199C16.665 14.6303 15.8899 15.7951 14.7251 16.5754V19.3349H18.2805C20.3603 17.4199 21.5603 14.6002 21.5603 11.25H21.5593Z"
				fill="#4285F4"></path>
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M10.9993 22.0002C13.9692 22.0002 16.4594 21.0147 18.2791 19.3349L14.7236 16.5754C13.7382 17.2355 12.4791 17.6251 10.9983 17.6251C8.133 17.6251 5.70815 15.6904 4.84287 13.0904H1.16931V15.9401C2.97966 19.5349 6.69881 22.0002 10.9993 22.0002Z"
				fill="#34A853"></path>
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M4.84453 13.0895C4.62484 12.4294 4.49946 11.7248 4.49946 10.9994C4.49946 10.274 4.62484 9.56933 4.84453 8.90923V6.05951H1.16994C0.424868 7.54448 0 9.22426 0 10.9994C0 12.7745 0.424868 14.4543 1.16994 15.9392L4.84453 13.0895Z"
				fill="#FBBC05"></path>
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M10.9993 4.37511C12.6138 4.37511 14.0646 4.93054 15.2045 6.01966L18.3599 2.86423C16.4542 1.09015 13.9641 0 10.9993 0C6.69881 0 2.97966 2.46527 1.16931 6.06007L4.8439 8.90979C5.70918 6.30981 8.13404 4.37511 10.9993 4.37511Z"
				fill="#EA4335"></path>
</symbol>
<symbol id="icon_login_facebook" viewBox="0 0 14 26" fill="none">
<path
				d="M4.60526 25.5H8.9386V14.4801H12.9504L13.3677 10.3223C13.3677 10.3223 13.4544 10.118 13.0165 10.118H8.9386V6.97963C8.9386 6.97963 8.75842 4.60805 11.1053 4.60805H13.5V0.937039C13.5 0.937039 12.4691 0.477875 9.97404 0.500833C9.97404 0.500833 7.77316 0.473283 6.05123 2.13086C6.05123 2.13086 4.60526 3.43489 4.60526 4.9134V10.118H0.5V14.4801H4.60526V25.5Z"
				fill="white"></path>
</symbol>
<symbol id="icon_login_apple" viewBox="0 0 22 25" fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M8.48584 5.81313C8.27201 4.15256 9.4239 0.539339 13.4774 0C13.9464 2.78179 11.6001 5.97873 8.48584 5.81313Z"
				fill="white"></path>
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M20.7747 8.39829C19.4527 7.15287 18.3008 5.94884 15.8694 5.82349C13.9071 5.7407 13.0115 6.90332 11.1768 6.94472C9.47077 6.98612 9.59836 5.6579 6.0576 6.03164C2.98587 6.36283 0.298109 9.35277 0.511949 13.5467C0.725788 18.073 3.96764 24.3427 6.99566 24.3427C9.12815 24.3013 9.64089 23.3043 11.3894 23.3043C13.5644 23.3043 14.0772 24.5497 15.7832 24.3002C18.7261 23.885 21.499 19.3587 21.499 17.9063C19.878 17.076 18.2571 15.6638 18.0433 13.2972C17.8731 10.9305 19.3653 9.43557 20.7736 8.39714L20.7747 8.39829Z"
				fill="white"></path>
</symbol>
</svg>
		<script type="text/javascript">var getId = (function () {
 var elCache = {};
 return function (id) {
 if (!elCache[id]) {
 elCache[id] = document.getElementById(id);
 }
 return elCache[id];
 }
 })();  var page_url = 'L3pmX3VzZXIv';  function addEvent(ele, eventType, func) {
 var obj = typeof ele === 'string' ? getId(ele) : ele;
 if (obj.addEventListener) {
 obj.addEventListener(eventType, func, false);
 } else if (obj.attachEvent) {//IE
 obj.attachEvent('on' + eventType, func);
 }
 }  //창닫기
 addEvent("pop_login_layer_close", "click", function () {
 getId('page_url').value = page_url;
 getId('pop_login_layer').style.display = 'none';
 getId('pop_login_layer_dimmed').style.display = 'none';
 /**
 * 신입인턴 홈에서 버튼 클릭후 로그인레이어 창 띄우고 닫았을때 사용되는 부분입니다.
 */
 if(window.jobsHomeClickBeforeDom) window.jobsHomeClickBeforeDom.focus();
 });  /**
 * 로그인 모달 창 마지막 포커스 닫기 버튼에 tab 키로 이동시 모달안으로 포커스 유지하기 위해 ly_autologin 이동
 */
 addEvent("pop_login_layer_close", "keydown", function (e) {
 var keycode = e.keyCode;
 if(keycode === 9) {
 if(!e.shiftKey) {
 e.preventDefault();
 document.querySelector('#ly_autologin').focus();
 }
 }
 });  /**
 * 로그인 모달 창 첫 포커스 element인 로그인 유지에 tab+shift일때 닫기 버튼으로 포커스이동
 */
 addEvent("ly_autologin", "keydown", function (e) {
 var keycode = e.keyCode;
 if(keycode === 9) {
 if(e.shiftKey && e.target) {
 e.preventDefault();
 document.querySelector('#pop_login_layer_close').focus();
 }
 }
 });  //폼  체크
 function loginCheckMainLayer(form) {
 if (form.id.value === "") {
 alert("아이디를 입력하세요.");
 form.id.focus();
 return false;
 }
 if (form.id.value.indexOf(" ") > 0) {
 alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
 form.id.focus();
 return false;
 }
 if (form.id.value.length < 4) {
 alert("아이디는 4자이상이어야 합니다");
 form.id.focus();
 return false;
 }
 if (form.password.value === "") {
 alert("비밀번호를 입력하세요");
 form.password.focus();
 return false;
 }
 if (form.password.value.length < 4 || form.password.value.length > 32) {
 alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
 form.password.focus();
 return false;
 }  if (form['ly_ssl_login'].checked) {
 SecureLogin.encrypt(form);
 }  return true;
 }  //페이지 로딩시 초기화 시켜 준다.
 setTimeout(function () {
 var idInPut = getId('ly_id');
 var pwInput = getId('ly_password');
 if (!getId('ly_id').value) {
 idInPut.value = '';
 idInPut.blur();
 }
 pwInput.value = '';
 pwInput.blur();
 }, 50);  /**
 *
 * @param name
 * @param value
 * @param expiredays
 */
 function setHoursCookie(name, value, expiredays) {
 var todayDate = new Date();
 todayDate.setHours(todayDate.getHours() + expiredays);
 document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
 }  (document.addEventListener('DOMContentLoaded', function (e) {  var socialLoginBtnList = document.querySelectorAll('#pop_login_layer .social_login li a');  [].forEach.call(socialLoginBtnList, function(socialLoginBtn){
 socialLoginBtn.addEventListener('click', function (e) {
 e.preventDefault();
 e.stopPropagation();  var link = e.currentTarget.href,
 provider = e.currentTarget.dataset.provider,
 isCompany = '',
 label = isCompany ? 'com_login_' : 'per_login_';  label += provider;
 loggingEventAndTagManager(['login','pc_login_layer', label,''],['ga_lead','login','pc_login_layer', label]);  //소셜 버튼을 누를때 쿠키를 만들어 주고 소셜 회원 가입 완료 페이지에서 사용 한다.
 setHoursCookie('login_referer_url', encodeURIComponent(location.href.replace(/.*\/\/[^\/]*/, '')), 1);  if((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple'){
 if(confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
 '인터넷 익스플로러를 최신 버전으로 업데이트 해주세요'))
 {
 window.open(link, '_blank', 'width=480,height=640');
 }
 return;
 }
 window.open(link, '_blank', 'width=480,height=640');
 });
 });  var isCompany = '';
 var toolTipClass = document.getElementsByClassName('social_tooltip');  if (toolTipClass.length > 0 && isCompany) {
 toolTipClass[0].style.display = "none";
 }  var popLoginLayer = document.getElementById('pop_login_layer');
 if (toolTipClass.length > 0 && !isCompany) {
 var fadeTarget = toolTipClass[0],
 fadeEffect = null,
 fadeTimeOut = null;  var startToolTipInterval = function () {
 fadeEffect = setInterval(function () {
 if (!fadeTarget.style.opacity) {
 fadeTarget.style.opacity = 1;
 }
 if (fadeTarget.style.opacity > 0) {
 fadeTarget.style.opacity -= 0.1;
 } else {
 clearInterval(fadeEffect);
 }
 }, 20);
 };  var hideSocialTooltip = function () {
 fadeTimeOut = setTimeout(function () {
 startToolTipInterval();
 }, 5000);
 };
 }  var respondToVisibility = function(element, callback) {
 var options = {
 root: document
 };  var observer = new IntersectionObserver(function (entries, observer){
 entries.forEach(function (entry){
 callback(entry.intersectionRatio > 0);
 });
 }, options);  observer.observe(element);
 };  respondToVisibility(popLoginLayer, function(visible){
 if(visible) {
 if (toolTipClass.length > 0 && !isCompany) {
 fadeTarget.style.display = 'block';
 fadeTarget.style.opacity = 1;
 clearInterval(fadeEffect);
 clearTimeout(fadeTimeOut);
 hideSocialTooltip();
 }  document.getElementsByTagName('html')[0].style.overflow = 'hidden';
 document.getElementsByTagName('html')[0].style.height = '100%';
 document.getElementsByTagName('body')[0].style.height = '100%';
 } else {
 document.getElementsByTagName('html')[0].style.overflow = '';
 document.getElementsByTagName('html')[0].style.height = '';
 document.getElementsByTagName('body')[0].style.height = '';
 }
 });  }))</script>
	</div>
	<div class="img_svg_layout">
		<svg xmlns="http://www.w3.org/2000/svg">
<symbol id="svg_saramin_ci" viewBox="0 0 126 40">
<g transform="translate(29 7)">
<path fill="#4876EF"
				d="M22.467 19.27l-.039.023c-.288.175-1.166.708-2.76.708-1.653 0-2.602-.682-2.602-1.873 0-1.089 1.012-1.82 2.518-1.82 1.072 0 1.875.165 2.823.432l.06.016v2.513zm-7.922-8.72c0 .495.205.912.577 1.173.46.322 1.13.373 1.89.143.684-.21 1.71-.46 2.713-.46 1.921 0 2.742.65 2.742 2.17v.823l-.103-.024c-1.032-.233-1.858-.399-3.087-.399-5.274 0-5.684 3.28-5.684 4.286 0 2.24 1.53 4.634 5.823 4.634 3.352 0 5.333-1.117 5.86-1.46.481-.307.636-.597.636-1.193v-6.56c0-3.555-2.054-5.357-6.104-5.357-1.692 0-3.302.343-4.082.663-.784.308-1.181.834-1.181 1.56zM63.698 9.889l-.051-.054c-1.01-1.03-2.28-1.51-4-1.51-1.85 0-3.723.568-5.01 1.52-.517.36-.69.677-.69 1.255v10.017c0 .964.815 1.779 1.78 1.779 1.015 0 1.78-.765 1.78-1.779v-8.742l.092-.056c.274-.17 1.001-.626 2.215-.626 1.549 0 2.335.843 2.335 2.504v6.92c0 .964.815 1.779 1.78 1.779.998 0 1.78-.782 1.78-1.779v-8.742l.092-.056c.274-.17 1.001-.626 2.215-.626 1.528 0 2.335.875 2.335 2.53v6.894c0 .964.802 1.779 1.751 1.779 1.015 0 1.81-.782 1.81-1.779v-6.974c0-3.914-1.865-5.817-5.702-5.817-1.616 0-3.156.525-4.453 1.517l-.059.046zM47.529 19.27l-.039.023c-.288.175-1.164.708-2.76.708-1.654 0-2.602-.682-2.602-1.873 0-1.089 1.012-1.82 2.518-1.82 1.072 0 1.875.165 2.823.432l.06.016v2.513zm-7.922-8.72c0 .495.205.911.577 1.173.46.322 1.13.373 1.89.143.684-.21 1.71-.46 2.713-.46 1.921 0 2.742.65 2.742 2.17v.823l-.103-.024c-1.032-.233-1.858-.399-3.087-.399-5.274 0-5.684 3.28-5.684 4.286 0 2.24 1.53 4.634 5.823 4.634 3.352 0 5.333-1.117 5.86-1.46.481-.306.635-.596.635-1.193v-6.56c0-3.555-2.053-5.357-6.102-5.357-1.694 0-3.304.343-4.083.663-.784.308-1.181.833-1.181 1.56zM36.129 8.539c-.548-.131-1.464-.213-2.391-.213-3.084 0-4.853 1.649-4.853 4.525v8.388c0 .914.774 1.657 1.725 1.657.016-.002.024-.004.033-.004l.03.002h.002c1.014 0 1.801-.768 1.801-1.75v-7.62c0-1.201.504-1.8 1.54-1.83.472-.017.869.06 1.25.133.296.056.575.109.856.109 1.148 0 1.683-.965 1.683-1.617 0-.87-.595-1.501-1.676-1.78M7.806 14.497l-2.203-.44c-1.233-.27-1.758-.665-1.758-1.325 0-.382.203-1.27 2.085-1.27.78 0 1.908.264 2.624.615.893.45 1.812.371 2.344-.202.296-.332.452-.799.416-1.246-.025-.301-.145-.733-.577-1.083-.899-.73-2.774-1.22-4.667-1.22-3.454 0-5.686 1.772-5.686 4.516 0 2.572 2.217 3.668 4.076 4.134.638.16.956.216 1.325.281.264.047.538.095.961.187 1.177.274 1.7.7 1.7 1.38 0 .493-.284 1.32-2.19 1.32-1.32 0-2.748-.363-3.637-.924-.359-.224-.726-.334-1.073-.334-.488 0-.935.217-1.256.643-.492.633-.34 1.663.323 2.205.578.474 2.274 1.578 5.524 1.578 3.443 0 5.757-1.893 5.757-4.71 0-2.142-1.338-3.485-4.088-4.105M78.584 6.66c-.968 0-1.699.76-1.699 1.768v9.37c0 .958.778 1.767 1.699 1.767.953 0 1.7-.776 1.7-1.767v-9.37c0-.99-.747-1.767-1.7-1.767"></path>
<path fill="#4876EF"
				d="M78.584 0c-1.453 0-2.549 1.059-2.549 2.462 0 1.42 1.12 2.533 2.55 2.533 1.38 0 2.548-1.16 2.548-2.533 0-1.38-1.12-2.462-2.549-2.462"
				mask="url(#1f8v900bkb)"></path>
<path fill="#4876EF"
				d="M89.736 8.326c-3.553 0-5.485 1.221-5.843 1.466-.476.323-.636.64-.636 1.255v10.07c0 .964.82 1.779 1.79 1.779 1.02 0 1.79-.765 1.79-1.779v-8.742l.038-.023c.522-.317 1.58-.659 2.75-.659 1.35 0 2.795.686 2.795 2.612v6.812c0 .964.82 1.779 1.79 1.779 1.02 0 1.79-.765 1.79-1.779v-6.974c0-3.806-2.166-5.817-6.264-5.817"
				mask="url(#09ysurdxqd)"></path>
</g>
<g>
<circle cx="4.5" cy="14.5" r="4.5" fill="#4876EF"></circle>
<circle cx="16.5" cy="14.5" r="4.5" fill="currentColor"></circle>
<circle cx="4.5" cy="26.5" r="4.5" fill="currentColor"></circle>
<circle cx="16.5" cy="26.5" r="4.5" fill="#00D3AB"></circle>
</g>
</symbol>
<symbol id="svg_gnb_profile_bracket" viewBox="0 0 10 6">
<path d="M1 1L5 5L9 1" stroke="currentColor" stroke-width="1.2"
				stroke-linecap="round" fill="none"></path>
</symbol>
<symbol id="svg_gnb_profile_arrow" viewBox="0 0 16 16">
<path fill="currentColor" d="M92 18L100 18 96 23z"
				transform="translate(-1976 -481) translate(120 445) translate(1768 24)"></path>
</symbol>
<symbol id="svg_gnb_search" viewBox="0 0 24 24">
<g fill="none">
<circle cx="11" cy="11" r="8.75" stroke="#4876EF" stroke-width="2.5"></circle>
<path d="M22 21L18 17" stroke="#4876EF" stroke-width="2.5"
				stroke-linecap="round"></path>
</g>
</symbol>
<symbol id="svg_gnb_social1" viewBox="0 0 16 16">
<path fill="#58B04B"
				d="M2.034 3L2 12.968 6.154 12.984 6.171 8.953 5.897 7.691 9.829 12.968 14 13 13.983 3.032 9.812 3.016 9.897 7.128 10.171 8.596 6.171 3.016z"></path>
</symbol>
<symbol id="svg_gnb_social2" viewBox="0 0 16 16">
<path fill="#3C5A9A"
				d="M6.087 14V7.614h2.36l.352-2.489H6.087V3.536c0-.72.22-1.212 1.358-1.212h1.45V.098C8.644.068 7.783 0 6.782 0 4.69 0 3.26 1.16 3.26 3.29v1.835H.895v2.489h2.364V14h2.828z"
				transform="translate(3.105 1)"></path>
</symbol>
<symbol id="svg_gnb_social3" viewBox="0 0 16 16">
<path fill="#4285F4"
				d="M11.758 6.133c0-.494-.04-.854-.126-1.227H5.999v2.226h3.306C9.24 7.686 8.88 8.52 8.08 9.08l-.011.074 1.78 1.38.124.012c1.133-1.046 1.786-2.586 1.786-4.412"
				transform="translate(2 2)"></path>
<path fill="#34A853"
				d="M6 11.998c1.619 0 2.979-.533 3.972-1.453L8.079 9.08c-.507.353-1.187.6-2.08.6-1.586 0-2.933-1.047-3.413-2.493l-.07.006L.664 8.625l-.024.067c.986 1.96 3.013 3.306 5.36 3.306"
				transform="translate(2 2)"></path>
<path fill="#FBBC05"
				d="M2.586 7.186c-.126-.374-.2-.774-.2-1.187 0-.413.074-.813.194-1.186l-.004-.08L.701 3.277l-.061.03C.233 4.118 0 5.032 0 5.998c0 .967.233 1.88.64 2.693l1.946-1.506"
				transform="translate(2 2)"></path>
<path fill="#EB4335"
				d="M6 2.32c1.126 0 1.886.486 2.319.893l1.693-1.653C8.972.593 7.619 0 5.999 0 3.653 0 1.626 1.346.64 3.306l1.94 1.507C3.067 3.366 4.414 2.32 6 2.32"
				transform="translate(2 2)"></path>
</symbol>
<symbol id="svg_gnb_social4" viewBox="0 0 16 16">
<path fill="#000"
				d="M7 .02C3.15.02.03 2.494.03 5.545c0 1.972 1.305 3.703 3.267 4.68-.107.37-.686 2.382-.709 2.54 0 0-.014.119.063.164.076.045.166.01.166.01.22-.03 2.543-1.671 2.945-1.956.402.057.816.087 1.238.087 3.85 0 6.97-2.474 6.97-5.525S10.85.02 7 .02z"
				transform="translate(1 2)"></path>
<path fill="#FFF"
				d="M3.147 7.473c-.222 0-.403-.173-.403-.386V4.686h-.627c-.218 0-.395-.178-.395-.396 0-.218.177-.396.395-.396h2.059c.218 0 .395.178.395.396 0 .218-.177.396-.395.396h-.627v2.401c0 .213-.18.386-.402.386zm3.525-.005c-.167 0-.296-.068-.334-.178l-.2-.524H4.914l-.2.524c-.038.11-.166.178-.334.178-.088 0-.175-.019-.256-.056-.11-.051-.217-.192-.095-.574l.962-2.545c.068-.193.273-.393.535-.399.263.006.469.206.537.4l.961 2.544c.122.382.016.523-.095.574-.08.037-.167.056-.256.056zM5.927 6.05l-.401-1.147-.402 1.147h.803zM7.67 7.414c-.212 0-.385-.166-.385-.37V4.298c0-.223.184-.404.41-.404.227 0 .41.181.41.404v2.375h.855c.213 0 .386.167.386.37 0 .205-.173.371-.386.371H7.67zm2.234.054c-.222 0-.402-.181-.402-.404V4.298c0-.223.18-.404.402-.404.222 0 .402.181.402.404v.87l1.122-1.129c.058-.058.137-.09.223-.09.1 0 .201.044.277.12.07.07.112.162.118.256.006.095-.026.183-.089.246l-.916.921.99 1.319c.064.085.092.193.077.299-.015.106-.07.202-.156.267-.07.053-.155.081-.242.081-.126 0-.245-.059-.321-.16l-.943-1.257-.14.14v.883c0 .223-.18.404-.402.404z"
				transform="translate(1 2)"></path>
</symbol>
<symbol id="svg_gnb_social5" viewBox="0 0 16 16">
<path
				d="M9.187 7.438C9.206 9.556 10.98 10.26 11 10.27c-.015.05-.284 1.005-.935 1.992-.563.852-1.147 1.702-2.068 1.72-.904.017-1.195-.556-2.23-.556-1.033 0-1.357.538-2.213.573-.888.035-1.565-.922-2.133-1.772C.261 10.49-.626 7.316.565 5.173 1.156 4.11 2.213 3.436 3.36 3.42c.873-.018 1.696.608 2.23.608.533 0 1.534-.752 2.586-.642.44.02 1.677.185 2.47 1.389-.063.041-1.474.892-1.46 2.664m-1.7-5.203C7.96 1.644 8.277.82 8.19 0 7.51.028 6.687.47 6.2 1.061c-.437.524-.82 1.362-.716 2.166.758.06 1.532-.4 2.004-.992"
				transform="translate(3 1)"></path>
</symbol>
<symbol id="svg_gnb_member_photo" viewBox="0 0 32 32">
<circle cx="16" cy="16" r="16" fill="#ccd0d6"></circle>
<path stroke="#FFF" fill="#ccd0d6" stroke-linecap="round"
				stroke-linejoin="round" stroke-width="1.5"
				d="M25 24c0-2.21-2.015-4-4.5-4h-9C9.015 20 7 21.79 7 24"></path>
<path stroke="#FFF" fill="#ccd0d6" stroke-width="1.5"
				d="M16 8h3.5c.276 0 .5.224.5.5V12c0 2.21-1.79 4-4 4s-4-1.79-4-4 1.79-4 4-4z"></path>
</symbol>
<symbol id="svg_gnb_plus" viewBox="0 0 10 10">
<rect y="4" width="10" height="2" fill="currentColor"></rect>
<rect x="4" y="10" width="10" height="2" transform="rotate(-90 4 10)"
				fill="currentColor"></rect>
</symbol>
<symbol id="svg_gnb_write" viewBox="0 0 24 24">
<path fill="none" stroke="currentColor"
				d="M0 11.427V14.3c0 .11.09.2.2.2h2.655c.254 0 .498-.097.683-.27L14.246 4.206c.403-.377.424-1.01.046-1.413l-.023-.024L12.192.692C11.807.307 11.186.3 10.793.676L.31 10.705c-.197.188-.309.45-.309.722zM12.25 5.5L8.75 2"
				transform="translate(-1562 -2145) translate(1542 2089) translate(1 48) translate(19 8) translate(4.5 5)"></path>
</symbol>
<symbol id="svg_gnb_total_off" viewBox="0 0 20 40">
<g fill="currentColor">
<rect width="20" height="2" y="13" rx="1"></rect>
<path
				d="M1 19h12c.552 0 1 .448 1 1s-.448 1-1 1H1c-.552 0-1-.448-1-1s.448-1 1-1z"></path>
<rect width="20" height="2" y="25" rx="1"></rect>
</g>
</symbol>
<symbol id="svg_gnb_total_on" viewBox="0 0 20 40">
<path fill="currentColor"
				d="M3.343 11.929L10 18.585l6.657-6.656c.39-.39 1.024-.39 1.414 0 .39.39.39 1.024 0 1.414L11.415 20l6.656 6.657c.39.39.39 1.024 0 1.414-.39.39-1.024.39-1.414 0L10 21.415l-6.657 6.656c-.39.39-1.024.39-1.414 0-.39-.39-.39-1.024 0-1.414L8.585 20l-6.656-6.657c-.39-.39-.39-1.024 0-1.414.39-.39 1.024-.39 1.414 0z"></path>
</symbol>
<symbol id="svg_gnb_link1" viewBox="0 0 20 20">
<path d="M9.99805 10.1289L19.0002 7.5396L9.99805 1V10.1289Z"
				fill="#B0C8FA"></path>
<path
				d="M9.99805 10.1172L19.0002 7.52783L15.561 18.1086L9.99805 10.1172Z"
				fill="#6D9CFA"></path>
<path d="M10.0004 10.1333L4.4375 18.1247H15.5633L10.0004 10.1333Z"
				fill="#387BFF"></path>
<path d="M10.0002 10.1587L1 7.56939L10.0002 1.02979V10.1587Z"
				fill="#6D9CFA"></path>
<path d="M10.0002 10.1689L1 7.57959L4.43732 18.1603L10.0002 10.1689Z"
				fill="#387BFF"></path>
</symbol>
<symbol id="svg_gnb_link2" viewBox="0 0 20 20">
<g fill="none">
<path
				d="M9.50055 17C5.91035 17 3 14.0906 3 10.4997C3 6.90944 5.9103 4 9.50055 4C13.0901 4 16 6.90929 16 10.4997C16 14.0908 13.0901 17 9.50055 17Z"
				fill="white" stroke="#BC8EFF" stroke-width="2"
				stroke-linecap="round" stroke-linejoin="round"></path>
<path
				d="M9.50026 13C8.11931 13 7 11.881 7 10.4999C7 9.11905 8.11926 8 9.50026 8C10.8808 8 12 9.11891 12 10.4999C12 11.8811 10.8808 13 9.50026 13Z"
				fill="white" stroke="#BC8EFF" stroke-width="2"
				stroke-linecap="round" stroke-linejoin="round"></path>
<path
				d="M13.0538 1.94908C13.3871 1.61585 13.9274 1.61585 14.2606 1.94908L16.0673 3.75579L13.6538 6.16931L13.0538 5.56937C12.0541 4.56965 12.0541 2.9488 13.0538 1.94908Z"
				fill="#955CEA"></path>
<path
				d="M17.882 6.7694C18.2152 6.43616 18.2152 5.89587 17.882 5.56263L16.0753 3.75593L13.6617 6.16945L14.2617 6.76939C15.2614 7.76911 16.8823 7.76911 17.882 6.7694Z"
				fill="#955CEA"></path>
<path d="M11.2471 8.57568L9.2358 10.587" stroke="#8491A7"
				stroke-linecap="round"></path>
<path
				d="M16.0328 2.89536C16.2889 2.69608 16.6533 2.71874 16.8828 2.94821C17.1122 3.17767 17.1349 3.54211 16.9356 3.79823L12.695 9.24848C12.141 9.96049 11.0846 10.0222 10.4467 9.38426C9.80881 8.74635 9.87049 7.68997 10.5825 7.13598L16.0328 2.89536Z"
				fill="#373F57"></path>
</g>
</symbol>
<symbol id="svg_gnb_link3" viewBox="0 0 20 20">
<path
				d="M10.3371 1.5737L0.686635 15.9753C0.436625 16.3484 0.767086 16.8364 1.20632 16.7427L19.2382 12.8959C19.5944 12.8199 19.7525 12.4006 19.535 12.1084L16.4286 7.93333L13.5714 9.53333L13.9249 5.10256L11.1466 1.54432C10.9371 1.27604 10.5266 1.29094 10.3371 1.5737Z"
				fill="#94B5FC"></path>
<path
				d="M13.926 5.125L0.944517 16.3213C0.898468 16.361 0.902589 16.4336 0.952838 16.4679C0.981751 16.4876 1.01931 16.4893 1.04989 16.4723L14.5019 9L13.926 5.125Z"
				fill="#4876EF"></path>
</symbol>
<symbol id="svg_gnb_link4" viewBox="0 0 20 20">
<g fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M2 9.99971C2 14.4192 5.58207 18 10.0006 18C14.4185 18 18 14.4192 18 9.99971C18 5.58077 14.4185 2 10.0006 2C5.58207 2 2 5.58077 2 9.99971Z"
				fill="#00D3AB"></path>
<path d="M6.99902 7L8.49902 13L10.0005 7L11.499 13L12.999 7"
				stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
<path d="M14.5 9.5H5.5" stroke="white" stroke-linecap="round"
				stroke-linejoin="round"></path>
</g>
</symbol>
<symbol id="svg_gnb_link5" viewBox="0 0 20 20">
<path d="M4.537 6h6.708v10.854H3L4.537 6Z" fill="#E5CDFF"></path>
<path d="M15.463 6H8.755v10.854H17L15.463 6Z" fill="#E5CDFF"></path>
<path
				d="M17 16.854C17 18 15 20 10 20s-7-2-7-3.146C3.768 15.36 5.945 14 10 14s5.976 1.438 7 2.854Z"
				fill="#E5CDFF"></path>
<rect x="18" y="5" width="1" height="9" rx=".5" fill="#BC8EFF"></rect>
<path
				d="M9.42.143a1.242 1.242 0 0 1 1.16 0l9.066 4.758c.472.248.472.95 0 1.198l-9.066 4.758a1.242 1.242 0 0 1-1.16 0L.354 6.099c-.472-.248-.472-.95 0-1.198L9.42.143Z"
				fill="#955CEA"></path>
<ellipse cx="10" cy="5" rx="2" ry="1" fill="#fff"></ellipse>
</symbol>
<symbol id="svg_gnb_link6" viewBox="0 0 20 20">
<path d="m9.581 5.973 9.091 2.5V13.7H7.99l1.591-7.727Z" fill="#BCD1FC"></path>
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M2.727 13.386V8.035l4.546-.99.675.388 4.39 1.177 3.074.823a.909.909 0 1 1-.47 1.757l-2.854-.765a.227.227 0 0 0-.118.439l2.854.765a.909.909 0 1 1-.47 1.756l-2.855-.765a.227.227 0 0 0-.117.44l1.975.529a.91.91 0 0 1-.47 1.756l-1.976-.53a.227.227 0 0 0-.118.44l1.098.294a.909.909 0 1 1-.47 1.756l-1.318-.353-1.156-.31a15 15 0 0 1-4.756-2.225l-1.464-1.031Z"
				fill="#4876EF"></path>
<path
				d="M.61 7.655a1 1 0 0 1 1-1h1.523a1 1 0 0 1 .994 1.107l-.651 6.091a1 1 0 0 1-.995.894H1.61a1 1 0 0 1-1-1V7.655Z"
				fill="#4876EF"></path>
<path
				d="M8.537 6.083c.378-.216.826-.27 1.245-.15l8.891 2.54-9.181-.355-2.366 1.375a1.132 1.132 0 1 1-1.13-1.961l2.54-1.449Z"
				fill="#BCD1FC"></path>
<path
				d="M19.58 7.655a1 1 0 0 0-1-1h-1.524a1 1 0 0 0-.994 1.107l.652 6.091a1 1 0 0 0 .994.894h.872a1 1 0 0 0 1-1V7.655Z"
				fill="#BCD1FC"></path>
</symbol>
<symbol id="svg_gnb_cs" viewBox="0 0 20 20">
<path
				d="M16.8436 6.51589C16.6152 3.34476 13.9694 0.835938 10.7434 0.835938H10.0122C6.79074 0.835938 4.14973 3.34002 3.91199 6.50218H3.87083C3.13967 6.50218 2.5 7.23335 2.5 8.14718V10.4776C2.5 11.3914 3.09408 12.1226 3.87083 12.1226H5.28283V6.54801C5.50223 4.15821 7.57667 2.20716 10.0122 2.20716H10.7434C13.3206 2.20716 15.4955 4.38229 15.4955 6.95926V12.1684C15.4955 14.4897 13.7865 16.4819 11.502 16.8567C11.269 16.5368 10.8943 16.3266 10.4693 16.3266C9.76112 16.3266 9.18983 16.8977 9.18983 17.6061C9.18983 18.3143 9.76096 18.8856 10.4693 18.8856C10.9445 18.8856 11.3558 18.6252 11.5752 18.2367C14.591 17.8163 16.8666 15.2071 16.8666 12.1686V12.1047C17.6937 12.0179 18.3333 11.3325 18.3333 10.4779V8.14747C18.3333 7.28838 17.6799 6.5938 16.8436 6.51625L16.8436 6.51589Z"
				fill="currentColor"></path>
</symbol>
<symbol id="svg_gnb_notice" viewBox="0 0 20 20">
<path
				d="M7 6.60606C7 6.19477 7.25183 5.82542 7.6347 5.67517L15.6347 2.53578C16.2907 2.27836 17 2.762 17 3.46667V14.5333C17 15.238 16.2907 15.7216 15.6347 15.4642L7.6347 12.3248C7.25183 12.1746 7 11.8052 7 11.3939V6.60606Z"
				fill="currentColor"></path>
<path
				d="M2 9C2 7.34315 3.34315 6 5 6H5.47826C5.76641 6 6 6.23359 6 6.52174V11.4783C6 11.7664 5.76641 12 5.47826 12H5C3.34315 12 2 10.6569 2 9Z"
				fill="currentColor"></path>
<rect x="7" y="8" width="2" height="10" rx="1" fill="currentColor"></rect>
</symbol>
<symbol id="svg_gnb_event" viewBox="0 0 20 20">
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M2.55331 17.2127L3.80093 13.8361L6.9941 17.0295L3.61817 18.2767C3.30726 18.3914 2.97865 18.3195 2.74501 18.0855C2.51103 17.8515 2.43894 17.5231 2.55342 17.2127L2.55331 17.2127ZM9.59867 2.57853C9.38923 2.36943 9.38923 2.03032 9.59867 1.82089C9.80778 1.61179 10.1469 1.61179 10.3563 1.82089C11.158 2.62309 11.5592 3.67432 11.5592 4.72516C11.5592 5.77601 11.158 6.82758 10.3563 7.62944C10.1469 7.83888 9.80776 7.83888 9.59867 7.62944C9.38923 7.42033 9.38923 7.08122 9.59867 6.8718C10.1913 6.27902 10.4873 5.50152 10.4873 4.72499C10.4873 3.94881 10.1911 3.17114 9.59867 2.57819V2.57853ZM8.95899 4.04062C9.22934 4.31097 9.22934 4.74956 8.95899 5.02008C8.68864 5.29026 8.25022 5.29026 7.97988 5.02008C7.70952 4.74973 7.70952 4.31114 7.98021 4.04096C8.25039 3.76994 8.68863 3.76994 8.95898 4.04063L8.95899 4.04062ZM16.7904 11.8717C17.0608 12.1423 17.0608 12.5804 16.7904 12.8511C16.5198 13.1213 16.0815 13.1213 15.811 12.8511C15.5403 12.5804 15.5403 12.1423 15.811 11.872C16.0813 11.6013 16.5198 11.6013 16.7904 11.8717V11.8717ZM13.9526 3.43866C14.2229 3.70885 14.2229 4.1476 13.9526 4.41778C13.6819 4.68846 13.2436 4.68846 12.9734 4.41778C12.7031 4.14759 12.7031 3.70884 12.9734 3.43866C13.2436 3.16831 13.6819 3.16831 13.9526 3.43866ZM17.3916 6.87782C17.6622 7.14851 17.6619 7.58659 17.3916 7.85694C17.1214 8.12729 16.6828 8.12729 16.4128 7.85694C16.1421 7.58658 16.1421 7.14851 16.4128 6.87782C16.683 6.60747 17.1215 6.60747 17.3916 6.87782ZM19.0098 10.4742C19.2189 10.6836 19.2189 11.0228 19.0098 11.2318C18.8002 11.4413 18.4613 11.4413 18.2522 11.2318C17.6594 10.6392 16.8817 10.3432 16.1054 10.3432C15.3289 10.3432 14.5515 10.6394 13.9586 11.2318C13.7491 11.4413 13.41 11.4413 13.2009 11.2318C12.9915 11.0227 12.9915 10.6836 13.2009 10.4742C14.0028 9.67247 15.0544 9.27131 16.1052 9.27131C17.1561 9.27131 18.2073 9.67249 19.0095 10.4742H19.0098ZM12.1576 9.43066C11.9481 9.6401 11.609 9.6401 11.3999 9.43066C11.1905 9.22156 11.1905 8.88245 11.3999 8.67302L16.4074 3.66552C16.6165 3.45608 16.956 3.45608 17.1651 3.66552C17.3742 3.87462 17.3742 4.21408 17.1651 4.42316L12.1576 9.43066ZM4.20992 12.7295L5.15917 10.1606L10.6704 15.6718L8.10151 16.6207L4.20992 12.7295ZM5.56802 9.05402L6.26141 7.17688C6.36204 6.90386 6.57732 6.71676 6.86136 6.65438C7.14539 6.59214 7.4191 6.67224 7.62485 6.87784L13.9529 13.2059C14.1587 13.4117 14.2389 13.6854 14.1764 13.9694C14.114 14.2536 13.9269 14.4687 13.6539 14.569L11.7767 15.2627L5.56787 9.05387L5.56802 9.05402Z"
				fill="currentColor"></path>
</symbol>
<symbol id="svg_default_close" viewBox="0 0 40 40">
<g fill="none">
<path d="M26 14L14 26" stroke="currentColor" stroke-width="2"
				stroke-linecap="round"></path>
<path d="M14 14L26 26" stroke="currentColor" stroke-width="2"
				stroke-linecap="round"></path>
</g>
</symbol>
<symbol id="svg_search_input" viewBox="0 0 20 21">
<circle fill="none" cx="9" cy="9" r="7.5" stroke="currentColor"></circle>
<path fill="currentColor" d="M15.593 13.472H16.593V19.472H15.593z"
				transform="rotate(-45 16.093 16.472)"></path>
</symbol>
<symbol id="icon_product" viewBox="0 0 16 16">
<path fill-rule="evenodd" clip-rule="evenodd"
				d="M16 8C16 3.58172 12.4183 0 8 0C3.58172 0 0 3.58172 0 8C0 12.4183 3.58172 16 8 16C12.4183 16 16 12.4183 16 8ZM1.2 8C1.2 4.24446 4.24446 1.2 8 1.2C11.7555 1.2 14.8 4.24446 14.8 8C14.8 11.7555 11.7555 14.8 8 14.8C4.24446 14.8 1.2 11.7555 1.2 8ZM9 5C9 5.552 8.552 6 8 6C7.448 6 7 5.552 7 5C7 4.4475 7.448 4 8 4C8.552 4 9 4.4475 9 5ZM8.79462 7.9067C8.74841 7.50883 8.41027 7.2 8 7.2C7.55817 7.2 7.2 7.55817 7.2 8V11.6L7.20538 11.6933C7.25159 12.0912 7.58973 12.4 8 12.4C8.44183 12.4 8.8 12.0418 8.8 11.6V8L8.79462 7.9067Z"
				fill="#6B768B"></path>
</symbol>
<symbol id="svg_gnb_cosmetic1" viewBox="0 0 65 15">
<g fill="currentColor" fill-rule="evenodd" clip-rule="evenodd">
<path
				d="M1.09961 13.5867V1.42188H4.23704L7.90344 10.3821L11.5853 1.42188H14.7228V13.5867H11.696V7.51184L11.5035 7.47394L8.99998 13.5867H6.82241L4.31892 7.47394L4.12639 7.51184V13.5867H1.09961Z"></path>
<path
				d="M15.9224 13.6866L15.9219 13.6882H15.9228V13.6867L15.9224 13.6866ZM19.0781 13.5867H16.0623L20.1828 1.42188H24.1044L28.226 13.5867H25.2102L24.0233 10.1052L19.8791 11.2461L19.0781 13.5867ZM23.2502 7.85967L22.1447 4.5784L20.7936 8.54378L23.2502 7.85967Z"></path>
<path
				d="M27.5977 3.88624V1.41797H38.4748V3.88624H34.5491V13.5828H31.5223V3.88624H27.5977Z"></path>
<path
				d="M43.176 1.56395C43.9868 1.25823 44.8594 1.08984 45.8084 1.08984C47.067 1.08984 48.1666 1.35044 49.0794 1.8528C49.9731 2.35885 50.7815 3.09887 51.5059 4.07607L49.5438 5.72395C49.1602 5.07812 48.6899 4.55777 48.1312 4.16606L48.1302 4.16537C47.5205 3.74885 46.7705 3.54299 45.8862 3.54299C45.3294 3.54299 44.8201 3.65371 44.3732 3.84604L44.3718 3.84666C43.91 4.05378 43.5268 4.32512 43.2067 4.67748C42.872 5.04332 42.6179 5.45827 42.4427 5.93574C42.2518 6.42989 42.1727 6.95427 42.1727 7.49092C42.1727 8.02662 42.2516 8.55084 42.4424 9.03015C42.6025 9.50805 42.8568 9.92223 43.1916 10.273C43.5112 10.64 43.9108 10.9282 44.3893 11.1196C44.8391 11.3283 45.3502 11.4227 45.9186 11.4227C46.3595 11.4227 46.772 11.3755 47.1558 11.2633C47.5085 11.1672 47.8439 11.0069 48.1608 10.8004L48.1617 10.7998C48.4484 10.6087 48.7346 10.3543 48.988 10.069L48.9901 10.0664C49.2034 9.80943 49.4046 9.52788 49.6033 9.21006L51.525 10.917C50.8318 11.8628 50.0532 12.5738 49.1585 13.096C48.2294 13.6134 47.1148 13.8898 45.8106 13.8898C44.8615 13.8898 43.9889 13.7215 43.1781 13.4157C42.3523 13.0939 41.6497 12.6513 41.07 12.1024L41.0691 12.1016C40.4603 11.5384 40.0026 10.8677 39.6663 10.0727L39.6654 10.0706C39.3155 9.29447 39.147 8.43916 39.147 7.48984V7.38984H39.1455C39.1571 6.49484 39.3261 5.67221 39.6638 4.90766C40.0002 4.1286 40.4582 3.45725 41.0679 2.87723C41.6476 2.32833 42.3492 1.88577 43.176 1.56395Z"></path>
<path
				d="M60.7084 13.6711V13.6726H60.7088V13.6711H60.7084ZM63.8356 13.5711H60.8088V7.75291L55.9701 9.08034V13.5711H52.9434V1.40625H55.9701V6.63499L60.8088 5.29178V1.40625H63.8356V13.5711Z"></path>
</g>
</symbol>
</svg>
	</div>
	<script>window.onload = function() {
 //에어브릿지 트래킹(메인 조회)
 airbridge.events.send("airbridge.ecommerce.home.viewed", {
 customAttributes: {
 user_id: '18994416',
 }
 });
 }</script>
	
	
	<script type="text/javascript"
		src="/zf_user/index-api/area-job-list?v=20231031163319"></script>
	<script type="text/javascript"
		src="/js/index/dist/app.js?v=20231031163319"></script>
	<script type="text/javascript">
		//<!--
 var savedId = '',
 userData = {},
 scrapRecruits = null,
 noticeList = {},
 notifServiceOn = true,
 dataLayerEventFlowCd = '',
 mainTopContents = {}
 ;  try {userData = {"mem_idx":"18994416","mem_gb":"p","email":"skimy11@nate.com","resumeCount":0,"applyCount":"0","personScrap":"1","readRecruitCount":6,"avatarMailReceiveFlag":"y","realNameVerified":true,"avatarCareerCd":"1","avatarCareerYear":"","avatarEducationCd":"3","infoMemberUrl":"\/zf_user\/member\/resume-manage\/write?template_cd=1","infoMemberUrlMouseDown":"","infoMemberText":"\uc774\ub825\uc11c \ub4f1\ub85d","emailNudgeMessage":"","recentResumeCareerCd":null,"res_idx":""};scrapRecruits = ["46656798"];notifServiceOn = true;mainTopContents = {"recruit":{"recommendRecruit":{"rcmdRecruit":[{"area":"\uc720\uc131\uad6c \u00b7 \uc720\uc5f0\uadfc\ubb34 \uc801\uc6a9","ai_score":85,"logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202206\/30\/re9qgb_599o-1cry7xu_logo.png","img_path":"","rec_idx":"46839638","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=1&itemValue=46839638&click=1","company_nm":"(\uc8fc)\ud2b8\uc704\ub2c8","recruit_title":"[\ub85c\ubd07\uc0ac\uc5c52\ubcf8\ubd80] \ub85c\ubd07 \uad00\uc81c \uac1c\ubc1c\ud300 \ucc44\uc6a9","job_category":"#\uae30\uc220\uc9c0\uc6d0","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc720\uc5f0\uadfc\ubb34 \uc801\uc6a9","\uac15\uc18c\uae30\uc5c5","\uc571\uac1c\ubc1c","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uce7c\ud1f4\uadfc \ubcf4\uc7a5"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc11c\uc6b8\uc804\uccb4 \u00b7 \uc571\uac1c\ubc1c","ai_score":80,"logo_src":"","img_path":"","rec_idx":"46805400","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=2&itemValue=46805400&click=1","company_nm":"\uad6d\ubc29\uacfc\ud559\uc5f0\uad6c\uc18c","recruit_title":"24\ub144 \uc0c1\ubc18\uae30 \uc784\uc6a9 \uacf5\uac1c\ucc44\uc6a9 \uacf5\uace0","job_category":"#\ub370\uc774\ud130\uc5d4\uc9c0\ub2c8\uc5b4","prefer_loc_nm":"\uc11c\uc6b8\uc804\uccb4","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\ub370\uc774\ud130\uc5d4\uc9c0\ub2c8\uc5b4","\ubcf4\uc548\ucee8\uc124\ud305"],"closing_text":"D-6","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/41855_logo_1.jpg","img_path":"","rec_idx":"46746537","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=3&itemValue=46746537&click=1","company_nm":"(\uc8fc)\uc5d4\uc5d0\uc2a4\ud14d","recruit_title":"\uc2dc\uc2a4\ud15c\/\uc751\uc6a9 \ud504\ub85c\uadf8\ub798\uba38 \ucc44\uc6a9","job_category":"#\uae30\uc220\uc9c0\uc6d0","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uae30\uc220\uc9c0\uc6d0"],"closing_text":"D-28","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc571\uac1c\ubc1c","ai_score":"","logo_src":"","img_path":"","rec_idx":"46795793","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=4&itemValue=46795793&click=1","company_nm":"(\uc8fc)\uc5e0\uc544\uc774\uc194\ub8e8\uc158","recruit_title":"IT\uac1c\ubc1c\u00b7\ub370\uc774\ud130(\uc571\uac1c\ubc1c&\uc6f9\uac1c\ubc1c \uc678 2\uac1c \ubd80\ubb38) \ucc44\uc6a9","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc6f9\uac1c\ubc1c","SI\uac1c\ubc1c"],"closing_text":"D-16","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/200907\/13\/1247452775_logo.jpg","img_path":"","rec_idx":"46877974","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=5&itemValue=46877974&click=1","company_nm":"\ud55c\uae38\uc528\uc564\uc528(\uc8fc)","recruit_title":"XR\uae30\ubc18 \ucf58\ud150\uce20 \uac1c\ubc1c \uc2e0\uc785\/\uacbd\ub825 \ubaa8\uc9d1","job_category":"#\uac8c\uc784\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uacbd\uc870\uc0ac\uc9c0\uc6d0","\uc0c1\uc5ec\uae08","\uac74\uac15\uac80\uc9c4"],"closing_text":"\ucc44\uc6a9\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc571\uac1c\ubc1c","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201311\/01\/1383270321_dfad-7094f10f_logo.jpg","img_path":"","rec_idx":"46713634","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=6&itemValue=46713634&click=1","company_nm":"\uc8fc\uc2dd\ud68c\uc0ac \ubca0\ub2c8\ud398","recruit_title":"[\uc2e0\uc785] \ud504\ub860\ud2b8\uc5d4\ub4dc \uac1c\ubc1c \uc88b\uc544\ud558\ub294 \uc0ac\ub78c \ubaa8\uc9d1","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\uc74c\ub8cc\uc81c\uacf5","\uc57c\uadfc\uac15\uc694\uc548\ud568"],"closing_text":"D-3","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc778\uae30 \ub9ce\uc740","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202012\/24\/qltzcm_xgeo-1mhnpyg_logo.png","img_path":"","rec_idx":"46788662","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=7&itemValue=46788662&click=1","company_nm":"(\uc8fc)\ub450\ub4dc\ub9bc\uc815\ubcf4","recruit_title":"Java\u00b7JSP \uc778\ud134\uc9c1(\uc815\uaddc\uc9c1 \uc804\ud658\uac00\ub2a5) \ucc44\uc6a9","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\uc6f9\uac1c\ubc1c","\ud504\ub860\ud2b8\uc5d4\ub4dc"],"closing_text":"D-28","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc2a4\ud1a1\uc635\uc158","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201206\/15\/1339719522_logo.gif","img_path":"","rec_idx":"46845060","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=8&itemValue=46845060&click=1","company_nm":"(\uc8fc)\uce74\uc774\ub7f0\uc18c\ud504\ud2b8","recruit_title":"[4\uae09 \ubcf4\ucda9\uc5ed\/\uc790\uc728\ucd9c\ud1f4\uadfc\uc81c] JAVA \uc751\uc6a9, Web \ud504\ub85c\uadf8\ub798\uba38 \ucc44\uc6a9","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc2a4\ud1a1\uc635\uc158","\uc571\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\uc74c\ub8cc\uc81c\uacf5","40\uc2dc\uac04\uc81c"],"closing_text":"D-23","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202301\/17\/rom8yq_scaa-xrthye_logo.png","img_path":"","rec_idx":"46835228","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=9&itemValue=46835228&click=1","company_nm":"(\uc8fc)\uc778\uc9c0\uc774\uc194\ub8e8\uc158","recruit_title":"[\ub300\uc804]\ub9ac\ud2ac\ud329 \uc804\ubb38\uae30\uc5c5 \uc0ac\uc6d0 \ubaa8\uc9d1(R&D-HW,FW,\uac1c\ubc1c\ub9ac\ub354)","job_category":"#\uae30\uc220\uc9c0\uc6d0","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uac74\uac15\uac80\uc9c4","\uc218\ud3c9\uc801\ubb38\ud654"],"closing_text":"D-21","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\ub300\uc804\uc804\uccb4 \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/70993_logo.png","img_path":"","rec_idx":"46617655","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=10&itemValue=46617655&click=1","company_nm":"(\uc8fc)\uc54c\uc5e0\uc18c\ud504\ud2b8","recruit_title":"\uc790\uc0ac \uc194\ub8e8\uc158 \uae30\ubc18 \ud504\ub85c\uc81d\ud2b8 \uc218\ud589 \uac1c\ubc1c\uc790 \ub300\uaddc\ubaa8 \ucc44\uc6a9","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\ub300\uc804\uc804\uccb4","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uac15\uc18c\uae30\uc5c5","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc11c\uc6b8\uc804\uccb4 \u00b7 \uc778\uae30 \ub9ce\uc740","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/50059_logo.png","img_path":"","rec_idx":"46406646","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=11&itemValue=46406646&click=1","company_nm":"(\uc8fc)\uc704\uc988\ucf54\ub9ac\uc544","recruit_title":"\u321c\uc704\uc988\ucf54\ub9ac\uc544\/\u321c\uc704\uc988COK '23\ub144 \ud558\ubc18\uae30 \uc2e0\uc785\/\uacbd\ub825 \uc0ac\uc6d0 \ubaa8\uc9d1","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc11c\uc6b8\uc804\uccb4","ai_tag_list":["\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\uc6f9\uac1c\ubc1c","\uc815\ubcf4\ubcf4\uc548"],"closing_text":"D-26","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc778\uae30 \ub9ce\uc740","ai_score":"","logo_src":"","img_path":"","rec_idx":"46665809","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=12&itemValue=46665809&click=1","company_nm":"\uc8fc\uc2dd\ud68c\uc0ac\uc774\ub178\uc704\ub354\uc2a4","recruit_title":"\uc6f9 \uc11c\ube44\uc2a4 \uac1c\ubc1c \ub2f4\ub2f9\uc790(\uc815\uaddc\uc9c1) \ubaa8\uc9d1","job_category":"#\uae30\uc220\uc9c0\uc6d0","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uae30\uc220\uc9c0\uc6d0","\uc6f9\uac1c\ubc1c","\uc720\uc9c0\ubcf4\uc218"],"closing_text":"\ucc44\uc6a9\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201911\/11\/q0sig3_hi9e-xquozm_logo.jpg","img_path":"","rec_idx":"46509338","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=13&itemValue=46509338&click=1","company_nm":"\ucf00\uc774.\uc5d8.\uc774.\uc5d0\uc2a4(\uc8fc)","recruit_title":"\uc18c\ud504\ud2b8\uc6e8\uc5b4(SW) \uc2e0\uaddc\uc778\ub825 \ucc44\uc6a9","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uce74\ud398\ud14c\ub9ac\uc544","\uc7a5\uae30\uadfc\uc18d\uc790\ud3ec\uc0c1"],"closing_text":"\ucc44\uc6a9\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc571\uac1c\ubc1c","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201212\/07\/1354868165_logo.jpg","img_path":"","rec_idx":"46750017","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=14&itemValue=46750017&click=1","company_nm":"(\uc8fc)\uc9c0\uc6b0\uad11\uae30\uc220","recruit_title":"Vision \uc2e0\uc785\/\uacbd\ub825 \ud504\ub85c\uadf8\ub798\uba38 \ubaa8\uc9d1","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uc5f0\ubd09 \uacf5\uac1c","\uc57c\uadfc\uc218\ub2f9","\uc0c1\uc5ec\uae08"],"closing_text":"D-9","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/79559_logo.png","img_path":"","rec_idx":"46776744","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=15&itemValue=46776744&click=1","company_nm":"(\uc8fc)\uc9c0\ub188\uc778\uc0ac\uc774\ud2b8\ud14c\ud06c\ub180\ub85c\uc9c0","recruit_title":"[\uc720\ub9dd \uc2a4\ud0c0\ud2b8\uc5c5] Backend Engineer (\uc804\ubb38\uc5f0\uad6c\uc694\uc6d0 \uac00\ub2a5)","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc6f9\uac1c\ubc1c","\ud504\ub860\ud2b8\uc5d4\ub4dc"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202204\/29\/rb34f8_q4iu-xrss9z_logo.png","img_path":"","rec_idx":"46530841","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=16&itemValue=46530841&click=1","company_nm":"(\uc8fc)\uc70c\ucf54\ubaa8\uc2dc\uc2a4\ud15c\uc988","recruit_title":"\uac1c\ubc1c \uc815\uaddc\uc9c1 \uacbd\ub825\uc790 \ucc44\uc6a9","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uce7c\ud1f4\uadfc \ubcf4\uc7a5","\uc218\ud3c9\uc801\ubb38\ud654"],"closing_text":"\ucc44\uc6a9\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc571\uac1c\ubc1c","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201011\/03\/1288762758_logo.jpg","img_path":"","rec_idx":"46519470","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=17&itemValue=46519470&click=1","company_nm":"(\uc8fc)\ub098\ub178\ud504\ub85c\ud14d","recruit_title":"\ubc18\ub3c4\uccb4&LCD Total Solution \uba38\uc2e0\ube44\uc804\/\uc601\uc0c1\ucc98\ub9ac\/CNN","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uc810\uc2ec\uc2dd\uc0ac\uc81c\uacf5","\uc790\uc720\ubcf5\uc7a5","\uc57c\uadfc\uc218\ub2f9"],"closing_text":"D-3","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc720\uc5f0\uadfc\ubb34 \uc801\uc6a9","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202307\/03\/rx70la_zrtq-xru1dt_logo.jpg","img_path":"","rec_idx":"46674893","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=18&itemValue=46674893&click=1","company_nm":"\uc704\uba54(\uc8fc)","recruit_title":"[\uacbd\ub825\ubb34\uad00] \uc18c\ud504\ud2b8\uc6e8\uc5b4 \uac1c\ubc1c\uc790(C\/C++) \ubaa8\uc9d1","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc720\uc5f0\uadfc\ubb34 \uc801\uc6a9","\ub9c8\uac10\uc784\ubc15","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c"],"closing_text":"\uc624\ub298\ub9c8\uac10","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc571\uac1c\ubc1c","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201208\/09\/1344489682_logo.jpg","img_path":"","rec_idx":"46609379","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=19&itemValue=46609379&click=1","company_nm":"(\uc8fc)\uc640\uc774\ud30c\uc774\ube0c","recruit_title":"\uc18c\ud504\ud2b8\uc6e8\uc5b4,\ud558\ub4dc\uc6e8\uc5b4 \ud68c\ub85c\uc124\uacc4, \ud38c\uc6e8\uc5b4(\uc804\ubb38\uc5f0\uad6c\uc694\uc6d0 \ud3ec\ud568)","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uc5f0\ubd09 \uacf5\uac1c","\uc778\uc13c\ud2f0\ube0c\uc81c","H\/W"],"closing_text":"D-15","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc778\uae30 \ub9ce\uc740","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202205\/24\/rcdume_itah-xqmqwe_logo.png","img_path":"","rec_idx":"46706943","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=20&itemValue=46706943&click=1","company_nm":"\ud018\uc2a4\ud2b8\ud558\uc6b0\uc2a4(\uc8fc)","recruit_title":"[Quest House] \uc751\uc6a9 \uc18c\ud504\ud2b8\uc6e8\uc5b4 \uac1c\ubc1c\uc790 \ubaa8\uc9d1","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\uc6f9\uac1c\ubc1c","\ud504\ub860\ud2b8\uc5d4\ub4dc"],"closing_text":"D-33","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uc778\uae30 \ub9ce\uc740","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202011\/26\/qke3je_xvy9-1mrmb9b_logo.png","img_path":"","rec_idx":"46540554","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=21&itemValue=46540554&click=1","company_nm":"(\uc8fc)\ubaa8\ubc14\ud720","recruit_title":"(\uc8fc) \ubaa8\ubc14\ud720 \uac1c\ubc1c\ud300 Back-end \uac1c\ubc1c \ub2f4\ub2f9\uc790 (\uacbd\ub825\uc9c1) \ucc44\uc6a9","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","RestAPI","SpringBoot","API"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\ub300\uc804\uc804\uccb4 \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/73272_logo.gif","img_path":"","rec_idx":"46453584","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=22&itemValue=46453584&click=1","company_nm":"(\uc8fc)\uc544\ubc31","recruit_title":"\ubc31\uc5d4\ub4dc \uc6f9 \uac1c\ubc1c\uc790","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\ub300\uc804\uc804\uccb4","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc6f9\uac1c\ubc1c","DBA"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc720\uc131\uad6c \u00b7 \uc571\uac1c\ubc1c","ai_score":80,"logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/33797_logo.png","img_path":"","rec_idx":"46849787","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=23&itemValue=46849787&click=1","company_nm":"(\uc8fc)\uce74\uc774\uc2a4","recruit_title":"\u321c\uce74\uc774\uc2a4 \uc751\uc6a9 \ud504\ub85c\uadf8\ub798\uba38 \ubc0f \uc14b\uc5c5\uc9c0\uc6d0 \uc218\uc2dc\ucc44\uc6a9","job_category":"#\uae30\uc220\uc9c0\uc6d0","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uae30\uc220\uc9c0\uc6d0","\ub370\uc774\ud130\ubd84\uc11d\uac00"],"closing_text":"D-3","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc11c\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"","img_path":"","rec_idx":"46832128","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=24&itemValue=46832128&click=1","company_nm":"\uc624\uc544\uc2dc\uc2a4\uc2a4\ud1a0\ub9ac(\uc8fc)","recruit_title":"SW \uc2e0\uc785\uc0ac\uc6d0 \ucc44\uc6a9(\uc815\uaddc\uc9c1, \uacc4\uc57d\uc9c1)","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc11c\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uc5f0\ubd09 \uacf5\uac1c","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc911\uad6c \u00b7 \ucd5c\uc2e0\uacf5\uace0","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201706\/22\/orxpf5_2av9-gyq8gk_logo.png","img_path":"","rec_idx":"46890845","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=25&itemValue=46890845&click=1","company_nm":"\u321c\uc608\ub78c","recruit_title":"(\uc8fc)\uc608\ub78c \uc785\ucc30\uc815\ubcf4\uc0ac\uc5c5\ubd80 \uae30\ud68d\uac1c\ubc1c\ud300(\uac1c\ubc1c\ud30c\ud2b8) \uacbd\ub825, \uc2e0\uc785 \ucc44\uc6a9","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc911\uad6c","ai_tag_list":["\ucd5c\uc2e0\uacf5\uace0","\uac15\uc18c\uae30\uc5c5","\uc571\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\uc0ac\ub0b4\ub3d9\ud638\ud68c"],"closing_text":"D-28","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\ub300\ub355\uad6c \u00b7 \ud559\uad50\/\uad50\uc721\uae30\uad00","ai_score":"","logo_src":"","img_path":"","rec_idx":"46871880","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=26&itemValue=46871880&click=1","company_nm":"\uc774\ub8f8\ucef4\ud4e8\ud130\ud559\uc6d0","recruit_title":"\ud504\ub85c\uadf8\ub798\ubc0d\uac15\uc0ac \uad6c\uc778 [\ud30c\ud2b8\uac00\ub2a5\/JAVA & C\uc5b8\uc5b4\ud544\uc218]","job_category":"#\uac8c\uc784\uac1c\ubc1c","prefer_loc_nm":"\ub300\ub355\uad6c","ai_tag_list":["\ud559\uad50\/\uad50\uc721\uae30\uad00","\uc571\uac1c\ubc1c","\uac8c\uc784\uac1c\ubc1c","\ube14\ub85d\uccb4\uc778","\uc54c\uace0\ub9ac\uc998"],"closing_text":"\ucc44\uc6a9\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/201307\/16\/1373938132_2653-1f53c2a_logo.jpg","img_path":"","rec_idx":"46788754","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=27&itemValue=46788754&click=1","company_nm":"(\uc8fc)\ub378\ud0c0\uc2dc\uc2a4\ud15c","recruit_title":"\ucef4\ud4e8\ud130(\uc11c\ubc84\/\ub124\ud2b8\uc6cc\ud06c\/\ubcf4\uc548\/OA) \uc5d4\uc9c0\ub2c8\uc5b4 (\ub300\uc804\/\ucda9\ub0a8\/\uc11c\uc6b8\/\uacbd\uae30)","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc790\uaca9\uc99d\uc218\ub2f9","\uc810\uc2ec\uc2dd\uc0ac\uc81c\uacf5"],"closing_text":"D-15","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc11c\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"","img_path":"","rec_idx":"46832107","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=28&itemValue=46832107&click=1","company_nm":"\uc624\uc544\uc2dc\uc2a4\uc2a4\ud1a0\ub9ac(\uc8fc)","recruit_title":"\uac1c\ubc1c\uc790 [ERP\u00b7IOT \/APP\/WEB ] \/\ub300\uc804\uadfc\ubb34","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc11c\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc778\uae30 \ub9ce\uc740","\uc5f0\ubd09 \uacf5\uac1c","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c"],"closing_text":"\uc0c1\uc2dc","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc11c\uc6b8\uc804\uccb4 \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/68720_logo.gif","img_path":"","rec_idx":"46631583","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=29&itemValue=46631583&click=1","company_nm":"(\uc8fc)\ub85c\uc6b0\uce74\ubcf8","recruit_title":"2023\ub144\ub3c4 \uac01 \ubd80\ubb38 \uc2e0\uc785\/\uacbd\ub825 \ucc44\uc6a9\uacf5\uace0","job_category":"#\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","prefer_loc_nm":"\uc11c\uc6b8\uc804\uccb4","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc778\uae30 \ub9ce\uc740","\ubc31\uc5d4\ub4dc\/\uc11c\ubc84\uac1c\ubc1c","\uba4b\uc9c4\uc0ac\uc625","40\uc2dc\uac04\uc81c"],"closing_text":"D-24","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""},{"area":"\uc720\uc131\uad6c \u00b7 \uac15\uc18c\uae30\uc5c5","ai_score":"","logo_src":"https:\/\/pds.saramin.co.kr\/company\/logo\/202108\/18\/qy0gj4_c2iu-1megr22_logo.jpg","img_path":"","rec_idx":"46740440","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=c5861ed2f47448b3f75f&dpId=SRI_100_MAIN_AI_RCT&scnId=817&tgId=0&itemSetId=30&itemValue=46740440&click=1","company_nm":"(\uc8fc)\ud53d\uc18c\ub2c8\uc5b4","recruit_title":"\uc751\uc6a9SW \uac1c\ubc1c\uc790(C++, C#)","job_category":"#\uc571\uac1c\ubc1c","prefer_loc_nm":"\uc720\uc131\uad6c","ai_tag_list":["\uac15\uc18c\uae30\uc5c5","\uc571\uac1c\ubc1c","\uc778\uae30 \ub9ce\uc740","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","\ub178\uc870\/\ub178\uc0ac\ud611\uc758\ud68c"],"closing_text":"D-8","scenario":"817","dp":"SRI_100_MAIN_AI_RCT","celebration_badge":""}],"banner":[]},"aiHeadhunting":{"aiHeadhuntingRecruit":[{"area":"\uad6c\ub85c\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/24146_logo.jpg","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dw3e_zsig-2so28n_32.png","rec_idx":"46880721","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=1&itemValue=46880721&click=1","company_nm":"(\uc8fc)\uc774\ub108\ubc84\uc2a4","recruit_title":"IT \ubcf4\uc548 \uc18c\ud504\ud2b8\uc6e8\uc5b4 \uae30\ud68d \ub2f4\ub2f9 \ubaa8\uc9d1 (\uc2e0\uc785\/\uacbd\ub825)","job_category":"#\ub370\uc774\ud130\ubd84\uc11d\uac00","prefer_loc_nm":"\uad6c\ub85c\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uac15\uc18c\uae30\uc5c5","\ub370\uc774\ud130\ubd84\uc11d\uac00","\ubcf4\uc548\ucee8\uc124\ud305","\uc6f9\uac1c\ubc1c"],"closing_text":"D-29","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc218\uc6d0\uc2dc \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/77879_logo.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3f3jq_64ij-2so26g_01.png","rec_idx":"46882777","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=2&itemValue=46882777&click=1","company_nm":"(\uc8fc)\ub450\ub4dc\ub9bc","recruit_title":"PLC\uc81c\uc5b4,\uc124\uacc4 \ubc0f \uac1c\ubc1c \uc5d4\uc9c0\ub2c8\uc5b4 \uc815\uaddc\uc9c1 \uacbd\ub825\ucc44\uc6a9","job_category":"#SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","prefer_loc_nm":"\uc218\uc6d0\uc2dc","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uc5f0\ubd09 \uacf5\uac1c","\uc0c1\uc5ec\uae08","\uad6c\ub0b4\uc2dd\ub2f9","\uc810\uc2ec\uc2dd\uc0ac\uc81c\uacf5"],"closing_text":"D-29","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc11c\uc6b8\uc804\uccb4 \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/21631_logo.jpg","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dqg7_x66b-2so28k_.png","rec_idx":"46878325","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=3&itemValue=46878325&click=1","company_nm":"(\uc8fc)\uc194\ub8e8\uc158\ub9c1\ud06c","recruit_title":"System Engineering \ucee8\uc124\ud305","job_category":"#SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","prefer_loc_nm":"\uc11c\uc6b8\uc804\uccb4","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uac15\uc18c\uae30\uc5c5","\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c","SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","\uc784\ubca0\ub514\ub4dc"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc131\ub0a8\uc2dc \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/78324_logo_1.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3ds82_bnk9-2so26y_smartrecruiterthumbnail02.png","rec_idx":"46879611","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=4&itemValue=46879611&click=1","company_nm":"(\uc8fc)\uc6e8\uc774\ube0c\ud2b8\ub799","recruit_title":"RF \ubaa8\ub4c8 \uac1c\ubc1c\uc790 \uc2e0\uc785 \ucc44\uc6a9","job_category":"#SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","prefer_loc_nm":"\uc131\ub0a8\uc2dc","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","\uc0dd\uc0b0\uad00\ub9ac","\uae30\uc220\uc5d4\uc9c0\ub2c8\uc5b4","\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc131\ub0a8\uc2dc \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/78324_logo_1.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dsbp_43qu-2so26y_smartrecruiterthumbnail02.png","rec_idx":"46879634","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=5&itemValue=46879634&click=1","company_nm":"(\uc8fc)\uc6e8\uc774\ube0c\ud2b8\ub799","recruit_title":"HPA \ubaa8\ub4c8 \uac1c\ubc1c\uc790 \uacbd\ub825 \ucc44\uc6a9","job_category":"#SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","prefer_loc_nm":"\uc131\ub0a8\uc2dc","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","\uc0dd\uc0b0\uad00\ub9ac","\uae30\uc220\uc5d4\uc9c0\ub2c8\uc5b4","\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc131\ub0a8\uc2dc \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/78324_logo_1.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dsas_frpm-2so26y_smartrecruiterthumbnail02.png","rec_idx":"46879628","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=6&itemValue=46879628&click=1","company_nm":"(\uc8fc)\uc6e8\uc774\ube0c\ud2b8\ub799","recruit_title":"RF \ubaa8\ub4c8 \uac1c\ubc1c\uc790 \uacbd\ub825 \ucc44\uc6a9","job_category":"#SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","prefer_loc_nm":"\uc131\ub0a8\uc2dc","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","\uc0dd\uc0b0\uad00\ub9ac","\uae30\uc220\uc5d4\uc9c0\ub2c8\uc5b4","\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc131\ub0a8\uc2dc \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/78324_logo_1.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3ds9o_w61h-2so26y_smartrecruiterthumbnail02.png","rec_idx":"46879619","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=7&itemValue=46879619&click=1","company_nm":"(\uc8fc)\uc6e8\uc774\ube0c\ud2b8\ub799","recruit_title":"HPA \ubaa8\ub4c8 \uac1c\ubc1c\uc790 \uc2e0\uc785 \ucc44\uc6a9","job_category":"#SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","prefer_loc_nm":"\uc131\ub0a8\uc2dc","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","SE(\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4)","\uc0dd\uc0b0\uad00\ub9ac","\uae30\uc220\uc5d4\uc9c0\ub2c8\uc5b4","\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc11c\uc6b8\uc804\uccb4 \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/78811_logo.jpg","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dsdk_buac-2so26y_smartrecruiterthumbnail01.png","rec_idx":"46879654","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=8&itemValue=46879654&click=1","company_nm":"\ud074\ub77c\ucf54\ub9ac\uc544(\uc8fc)","recruit_title":"\uc6f9\ub514\uc790\uc774\ub108 \uacbd\ub825 \uc815\uaddc\uc9c1 \ucc44\uc6a9","job_category":"#\ucf58\ud150\uce20\uae30\ud68d","prefer_loc_nm":"\uc11c\uc6b8\uc804\uccb4","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uacbd\uc7c1\ub960 \uc801\uc740","\ucf58\ud150\uce20\uae30\ud68d","\ucf58\ud150\uce20\uc5d0\ub514\ud130","\uad11\uace0\ub514\uc790\uc778"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uac15\uc11c\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/76522_logo.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dwuf_dqye-2so284_smartrecruiterthumbnail19.png","rec_idx":"46880642","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=9&itemValue=46880642&click=1","company_nm":"(\uc8fc)\ud53c\ud50c\ub9ac\ube0c","recruit_title":"\uac74\uac15\uc2dd\ud488 \uc628\ub77c\uc778MD \uacbd\ub825 \ubaa8\uc9d1","job_category":"#\uc601\uc5c5\uad00\ub9ac","prefer_loc_nm":"\uac15\uc11c\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uc131\uacfc\uae09","\uacbd\uc870\uc0ac\uc9c0\uc6d0","\uc601\uc5c5\uad00\ub9ac","\uc601\uc5c5MD"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uac15\ub0a8\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/63981_logo.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3c0rs_4aja-2so27v_220602.png","rec_idx":"46871768","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=10&itemValue=46871768&click=1","company_nm":"\ub808\ud3ec\ub974\ub9c8","recruit_title":"\uc8fc\ub2c8\uc5b4 \uc601\uc5b4\/\uacfc\ud559 \uc120\uc0dd\ub2d8 \ucc44\uc6a9","job_category":"#\uc6d0\uc5b4\ubbfc\uac15\uc0ac","prefer_loc_nm":"\uac15\ub0a8\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uc6d0\uc5b4\ubbfc\uac15\uc0ac","\ud559\uc6d0\uac15\uc0ac","\uc601\uc5b4\uad50\uc7ac","\ud559\uc0dd\uc9c0\ub3c4"],"closing_text":"D-29","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uae08\ucc9c\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/72506_logo.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3c0xg_jao3-2so27v_78.png","rec_idx":"46871823","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=11&itemValue=46871823&click=1","company_nm":"(\uc8fc)\uc8fc\ud615\uac74\ucd95\uc0ac\uc0ac\ubb34\uc18c","recruit_title":"\uac74\ucd95\uc124\uacc4 \uacbd\ub825","job_category":"#\uac74\ucd95\uac00","prefer_loc_nm":"\uae08\ucc9c\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uac74\ucd95\uac00","\uac74\ucd95\uae30\uc0ac","\uac74\ucd95\uad6c\uc870\uc124\uacc4","\ud50c\ub79c\ud2b8\uac74\uc124"],"closing_text":"D-29","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uac15\ub0a8\uad6c \u00b7 \ucf54\uc2a4\ub2e5","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/2709_logo_2.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3fo41_4gpj-2so27p_47.png","rec_idx":"46889027","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=12&itemValue=46889027&click=1","company_nm":"(\uc8fc)\ub514\uc9c0\ud53c","recruit_title":"\uae30\ud68d\u2219\uc804\ub7b5\/\uc0ac\uc5c5\uad00\ub9ac","job_category":"#\uc0ac\uc5c5\uae30\ud68d","prefer_loc_nm":"\uac15\ub0a8\uad6c","ai_tag_list":["\ucf54\uc2a4\ub2e5","\ucd5c\uc2e0\uacf5\uace0","\ucde8\uc5c5\ucd95\ud558\uae08","\uc0ac\uc5c5\uae30\ud68d","\ub9ac\uc11c\uce58"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uac15\ub0a8\uad6c \u00b7 \ucd5c\uc2e0\uacf5\uace0","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/38842_logo_1.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3fojw_3f7p-2so280_45.png","rec_idx":"46890022","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=13&itemValue=46890022&click=1","company_nm":"(\uc8fc)\uc5d0\ud504\uc564\ucf54","recruit_title":"H&B\ucc44\ub110(\uc62c\ub9ac\ube0c\uc601) \uc601\uc5c5(\ub2f4\ub2f9~\ub300\ub9ac\uae09) \ucc44\uc6a9\uacf5\uace0 [\ubc14\ub2d0\ub77c\ucf54]","job_category":"#\uc601\uc5c5\uad00\ub9ac","prefer_loc_nm":"\uac15\ub0a8\uad6c","ai_tag_list":["\ucd5c\uc2e0\uacf5\uace0","\ucde8\uc5c5\ucd95\ud558\uae08","\uc601\uc5c5\uad00\ub9ac","\uc601\uc5c5\uc9c0\uc6d0","\uc601\uc5c5\uc9c1"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc625\ucc9c\uad70 \u00b7 \ucf54\uc2a4\ub2e5","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/2709_logo_2.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3fnj1_yyqb-2so27p_16.png","rec_idx":"46889035","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=14&itemValue=46889035&click=1","company_nm":"(\uc8fc)\ub514\uc9c0\ud53c","recruit_title":"\uae30\uad6c\uc124\uacc4(\uc2dc\uc81c\ud488 \uc81c\uc791)","job_category":"#2D\uc124\uacc4","prefer_loc_nm":"\uc625\ucc9c\uad70","ai_tag_list":["\ucf54\uc2a4\ub2e5","\ucd5c\uc2e0\uacf5\uace0","\ucde8\uc5c5\ucd95\ud558\uae08","2D\uc124\uacc4","3D\uc124\uacc4"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc548\uc131\uc2dc \u00b7 \ucd5c\uc2e0\uacf5\uace0","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/72610_logo.png","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3f5lz_4rx3-2so27y_49.png","rec_idx":"46883636","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=15&itemValue=46883636&click=1","company_nm":"\ucf00\uc774\uc774\uba38\ud2f0\ub9ac\uc5bc\uc988(\uc720)","recruit_title":"\ud569\uc131\uc815\uc81c \uc624\ud37c\ub808\uc774\ud130 \uc815\uaddc\uc9c1 \ucc44\uc6a9 [\uae30\uc219\uc0ac \uc81c\uacf5]","job_category":"#\uc720\uae30\ud569\uc131","prefer_loc_nm":"\uc548\uc131\uc2dc","ai_tag_list":["\ucd5c\uc2e0\uacf5\uace0","\ucde8\uc5c5\ucd95\ud558\uae08","\uc720\uae30\ud569\uc131","\ub2e8\uc21c\uc0dd\uc0b0\uc9c1","\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uacbd\uae30\uc804\uccb4 \u00b7 \ucd5c\uc2e0\uacf5\uace0","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/79317_logo_1.jpg","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3f8a2_e580-2so33k_03.png","rec_idx":"46884968","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=16&itemValue=46884968&click=1","company_nm":"(\uc8fc)\uc774\ub791\uc774\uc5d4\uc9c0","recruit_title":"\uc628\ub77c\uc778\ub9c8\ucf00\ud305 \ubc0f \uc0ac\ubb34\ubcf4\uc870 \uacbd\ub825 \ucc44\uc6a9","job_category":"#\ub9c8\ucf00\ud305\uae30\ud68d","prefer_loc_nm":"\uacbd\uae30\uc804\uccb4","ai_tag_list":["\ucd5c\uc2e0\uacf5\uace0","\ucde8\uc5c5\ucd95\ud558\uae08","\uc0c1\uc5ec\uae08","\ud734\uc77c(\ud2b9\uadfc)\uc218\ub2f9","\uc131\uacfc\uae09"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uad11\uc9c4\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/73078_logo.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3c0i0_s2lf-2so27v_34.png","rec_idx":"46871670","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=17&itemValue=46871670&click=1","company_nm":"\uc8fc\uc2dd\ud68c\uc0ac \ud2f0\uc5d0\uc774\uce58\uc5e0(THM)","recruit_title":"\ucf58\ud150\uce20\/\ube0c\ub79c\ub529 \ub514\uc790\uc774\ub108 \uacbd\ub825\uc9c1 \ucc44\uc6a9","job_category":"#AE(\uad11\uace0\uae30\ud68d\uc790)","prefer_loc_nm":"\uad11\uc9c4\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","AE(\uad11\uace0\uae30\ud68d\uc790)","\uc601\uc0c1\ud3b8\uc9d1","\uadf8\ub798\ud53d\ub514\uc790\uc778","\ub85c\uace0\ub514\uc790\uc778"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uc11c\ucd08\uad6c \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/77397_logo.jpg","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3c0uh_rt2i-2so27v_20.png","rec_idx":"46871790","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=18&itemValue=46871790&click=1","company_nm":"\uac00\ub124\ub9c8\uce20(\uc8fc)","recruit_title":"\uad6d\ub0b4\uc601\uc5c5 \ubc0f \uad00\ub9ac\uc9c1 \uc2e0\uc785\/\uacbd\ub825 \ucc44\uc6a9","job_category":"#\uc601\uc5c5\uad00\ub9ac","prefer_loc_nm":"\uc11c\ucd08\uad6c","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uc601\uc5c5\uad00\ub9ac","\uc601\uc5c5\uc9c1","\uc601\uc5c5\uc804\ub7b5","\uc601\uc5c5\ud310\ucd09"],"closing_text":"D-29","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\ub300\uad6c\uc804\uccb4 \u00b7 \ucde8\uc5c5\ucd95\ud558\uae08","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/78500_logo.jpg","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/10\/s3dlde_ity9-2so28a_03.png","rec_idx":"46877573","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=19&itemValue=46877573&click=1","company_nm":"\uc774\ub178\ud55c\uad6d\ud2b9\ud5c8\ubc95\ub960\uc0ac\ubb34\uc18c","recruit_title":"\ud2b9\ud5c8 \ubd84\uc57c \uc0ac\ubb34\uc7a5, \ud300\uc7a5 \ubaa8\uc9d1\ud569\ub2c8\ub2e4.(\uadfc\ubb34\uc2dc\uac04 \uc790\uc720\uc120\ud0dd \uac00\ub2a5)","job_category":"#\ud2b9\ud5c8\uba85\uc138\uc0ac","prefer_loc_nm":"\ub300\uad6c\uc804\uccb4","ai_tag_list":["\ucde8\uc5c5\ucd95\ud558\uae08","\uacbd\uc7c1\ub960 \uc801\uc740","\ud2b9\ud5c8\uba85\uc138\uc0ac","\ud2b9\ud5c8\uad00\ub9ac","\ud2b9\ud5c8\ubd84\uc11d"],"closing_text":"D-29","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"},{"area":"\uae08\ucc9c\uad6c \u00b7 \ucd5c\uc2e0\uacf5\uace0","ai_score":"","logo_src":"https:\/\/webpds.saramin.co.kr\/pds\/united_company\/logo\/77138_logo.gif","img_path":"https:\/\/www.saraminimage.co.kr\/recruit\/headhunting\/2023\/11\/s3f9h9_3qt4-2so27m_smartrecruiterthumbnail01.png","rec_idx":"46885435","click_url":"http:\/\/rcmd-log.saramin.co.kr:9020\/so-logging\/log\/client?custId=18994416&pcId=16975000088331408718195&nonce=bb738b3a21b708a4e7a0&dpId=SRI_100_MAIN_AI_CFM&scnId=872&tgId=0&itemSetId=20&itemValue=46885435&click=1","company_nm":"(\uc8fc)\uc0ac\ub78c\uacfc\uacf5\uac04\uc744\uc787\ub2e4","recruit_title":"\uace0\uac1d\uc0c1\ub2f4 \/ CS\ub9e4\ub2c8\uc800 \ubaa8\uc9d1\ud569\ub2c8\ub2e4.","job_category":"#\uace0\uac1d\uc751\ub300","prefer_loc_nm":"\uae08\ucc9c\uad6c","ai_tag_list":["\ucd5c\uc2e0\uacf5\uace0","\ucde8\uc5c5\ucd95\ud558\uae08","\uace0\uac1d\uc751\ub300","\uc0c1\ub2f4\uc6d0","\uc544\uc6c3\ubc14\uc6b4\ub4dc"],"closing_text":"D-28","scenario":"872","dp":"SRI_100_MAIN_AI_CFM","celebration_badge":"\ucde8\uc5c5\ucd95\ud558\uae08 50\ub9cc\uc6d0"}],"banner":[]},"theme":{"themeRecruit":[{"type":"themeRecruit","category":"samsung","title":"\uc0bc\uc131\uc804\uc790 \ud611\ub825\ud68c\uc0ac \ucc44\uc6a9\uad00","description":"\uc138\uacc4 \ucd5c\uace0\uc5d0 \ub3c4\uc804\ud560 \uc778\uc7ac\ub97c \uae30\ub2e4\ub9bd\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/samsung","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/samsung\/logo_main_samsung.png"},{"type":"themeRecruit","category":"sba_seoul","title":"\uc11c\uc6b8\uae30\uc5c5 \uc628\ud0dd\ud2b8 \ucc44\uc6a9\uad00","description":"\uc11c\uc6b8\uae30\uc5c5\uacfc \ud568\uaed8 \uc131\uc7a5\ud560 \uc778\uc7ac\ub97c \ubaa8\uc9d1\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/sba-seoul","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/sba\/logo_main_sba_seoul_230425.png"},{"type":"themeRecruit","category":"d-alliance","title":"\ub514\uc9c0\ud138\uc778\uc7ac\uc5bc\ub77c\uc774\uc5b8\uc2a4 \uc628\ub77c\uc778 \ucc44\uc6a9\uad00","description":"\ub514\uc9c0\ud138 \ud601\uc2e0\ubb38\ud654\ub97c \uc120\ub3c4\ud558\ub294 \uc6b0\uc218\uae30\uc5c5\ub4e4\uc758 \uc77c\uc790\ub9ac\ub97c \uc18c\uac1c\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/d-alliance","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/d_alliance\/logo_main_d-alliance.png"},{"type":"themeRecruit","category":"gsmb","title":"\uc774\ub2ec\uc758 \uc6b0\uc218 \uc911\uc18c\uae30\uc5c5 \uc77c\uc790\ub9ac \uc804\uc6a9\ucc44\uc6a9\uad00","description":"\ucc38 \uad1c\ucc2e\uc740 \uc911\uc18c\uae30\uc5c5 \ud50c\ub7ab\ud3fc\uc5d0\uc11c \uc81c\uacf5\ud558\ub294 \uc774\ub2ec\uc758 \uc6b0\uc218 \uc911\uc18c\uae30\uc5c5 \uc804\uc6a9\ucc44\uc6a9\uad00\uc744 \ud655\uc778\ud558\uc138\uc694.","url":"\/zf_user\/jobs\/theme\/gsmb","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/gsmb\/logo_main_gsmb.png"},{"type":"themeRecruit","category":"koreabio","title":"\ubc14\uc774\uc624\ud5ec\uc2a4 \uc628\ub77c\uc778 \ucc44\uc6a9\uad00","description":"\uad6d\uac00 \ud575\uc2ec \uc804\ub7b5 \uc0b0\uc5c5\uc778 \ubc14\uc774\uc624\ud5ec\uc2a4 \ubd84\uc57c \uc77c\uc790\ub9ac \uc815\ubcf4\ub97c \uc81c\uacf5\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/koreabio","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/koreabio\/logo_main_koreabio.png"},{"type":"themeRecruit","category":"incheon_airport","title":"CHEER UP \uc778\ucc9c\uacf5\ud56d \ucc44\uc6a9\uad00","description":"\ub300\ud55c\ubbfc\uad6d\uc758 \uad00\ubb38 \uc778\ucc9c\uacf5\ud56d\uacfc \ud568\uaed8\ud560 \uc778\uc7ac\ub97c \ucc44\uc6a9\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/incheon-airport","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/incheon\/logo_main_incheon-airport.png"},{"type":"themeRecruit","category":"jumpit","title":"IT\uac1c\ubc1c\uc790\ub9cc\uc744 \uc704\ud55c \uc804\ubb38 \ucc44\uc6a9\uad00","description":"\uc138\uacc4 \ucd5c\uace0\uc5d0 \ub3c4\uc804\ud560 \uc778\uc7ac\ub97c \uae30\ub2e4\ub9bd\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/jump-it","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/jumpit\/logo_main_jumpit_221213.png"},{"type":"themeRecruit","category":"skgeocentric","title":"SK\uc9c0\uc624\uc13c\ud2b8\ub9ad \ud611\ub825\ud68c\uc0ac \ucc44\uc6a9\uad00","description":"\ud50c\ub77c\uc2a4\ud2f1 \ubc38\ub958 \uccb4\uc778 \uc804\ubc18\uc758 \uc21c\ud658 \uacbd\uc81c\ub97c \uad6c\ucd95\ud574<br>\"Green for Better Life\"\ub97c \uc2e4\ud604\ud574 \ub098\uac00\uaca0\uc2b5\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/skgeocentric","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/skgeocentric\/logo_main_skgeocentric.png"},{"type":"themeRecruit","category":"ketep","title":"2023\ub144 \ud0c4\uc18c\uc911\ub9bd \uc5d0\ub108\uc9c0\ud601\uc2e0\uae30\uc5c5\uad00","description":"\ucc38 \uad1c\ucc2e\uc740 \uc911\uc18c\uae30\uc5c5 \ud50c\ub7ab\ud3fc\uc5d0\uc11c \uc81c\uacf5\ud558\ub294 \uc774\ub2ec\uc758 \uc6b0\uc218 \uc911\uc18c\uae30\uc5c5 \uc804\uc6a9\ucc44\uc6a9\uad00\uc744 \ud655\uc778\ud558\uc138\uc694.","url":"\/zf_user\/jobs\/theme\/ketep","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/ketep\/logo_main_ketep.png"},{"type":"themeRecruit","category":"kdia","title":"\ub514\uc2a4\ud50c\ub808\uc774 \uc6b0\uc218\uae30\uc5c5 \uc628\ub77c\uc778 \ucc44\uc6a9\uad00","description":"\ub514\uc2a4\ud50c\ub808\uc774 \uc6b0\uc218\uae30\uc5c5 \ucc44\uc6a9\uad00\uc744 \ud1b5\ud574 \ucde8\uc5c5\uc758 \uae30\ud68c\ub97c \uc7a1\uc544\ubcf4\uc138\uc694.","url":"\/zf_user\/jobs\/theme\/kdia","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/kdia\/logo_main_kdia.png"},{"type":"themeRecruit","category":"ex","title":"\ud55c\uad6d\ub3c4\ub85c\uacf5\uc0ac \ud611\ub825\uc0ac \ucc44\uc6a9\uad00","description":"\ud568\uaed8 \ub9cc\ub4e4\uc5b4\uac00\ub294 \ud55c\uad6d\uc758 \uae38, \uace0\uc18d\ub3c4\ub85c \uad00\ub828 \ubaa8\ub4e0 \uc77c\uc790\ub9ac \uc815\ubcf4\ub97c \ud655\uc778\ud558\uc138\uc694..","url":"\/zf_user\/jobs\/theme\/ex","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/ex\/logo_main_ex_231031.png"},{"type":"themeRecruit","category":"naver_adagency","title":"\ub124\uc774\ubc84 \uac80\uc0c9\uad11\uace0 \uacf5\uc2dd\ub300\ud589\uc0ac \ucc44\uc6a9\uad00","description":"\ub124\uc774\ubc84 \uac80\uc0c9\uad11\uace0 \uacf5\uc2dd\ub300\ud589\uc0ac\uc640 \ud568\uaed8<br>\ucd5c\uace0\uc758 \ub9c8\ucf00\ud130\ub85c \uc131\uc7a5\ud560 \ub2f9\uc2e0\uc758 \uafc8\uc744 \uc751\uc6d0\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/adagency","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/adagency\/logo_main_adagency.png"},{"type":"themeRecruit","category":"with_komipo","title":"\ud55c\uad6d\uc911\ubd80\ubc1c\uc804 \ud611\ub825\uae30\uc5c5 \ucc44\uc6a9\uad00","description":"\ud55c\uad6d\uc911\ubd80\ubc1c\uc804\uc758 \uc6b0\uc218 \ud611\ub825\uae30\uc5c5 \uc77c\uc790\ub9ac\ub97c \uc18c\uac1c\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/with-komipo","logo_src":"https:\/\/www.saraminimage.co.kr\/sri\/theme\/with_komipo\/logo_main_with-komipo.png"},{"type":"themeRecruit","category":"kosmes","title":"\uc131\uacfc\uacf5\uc720 \uc6b0\uc218\uae30\uc5c5 \uc628\ub77c\uc778 \ucc44\uc6a9\uad00","description":"\uc911\uc18c\ubca4\ucc98\uae30\uc5c5\uc9c4\ud765\uacf5\ub2e8\uc5d0\uc11c \uc9c4\ud589\ud558\ub294 \uc628\ub77c\uc778 \ucc44\uc6a9\uad00\uc744 \ud655\uc778\ud558\uc138\uc694.","url":"\/zf_user\/jobs\/theme\/kosmes","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/kosmes\/logo_main_kosmes.png"},{"type":"themeRecruit","category":"hmgpartnerjob","title":"\ud604\ub300\uc790\ub3d9\ucc28\uadf8\ub8f9 \ud611\ub825\uc0ac \ucc44\uc6a9\ubc15\ub78c\ud68c","description":"\uae00\ub85c\ubc8c \ubbf8\ub798 \uc790\ub3d9\ucc28\uc0b0\uc5c5\uc744 \uc120\ub3c4\ud558\ub294 \ud604\ub300\uc790\ub3d9\ucc28\uadf8\ub8f9 \ud611\ub825\uc0ac \uc77c\uc790\ub9ac\ub97c \uc18c\uac1c\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/hmgpartnerjob","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/hmgpartnerjob\/logo_main_hmgpartnerjob.png"},{"type":"themeRecruit","category":"bio-startup","title":"\ubc14\uc774\uc624 \uc2a4\ud0c0\ud2b8\uc5c5 \ucc44\uc6a9\ubc15\ub78c\ud68c","description":"\uc131\uc7a5 \uac00\ub2a5\uc131\uc774 \ub192\uc740 \ubc14\uc774\uc624 \uc2a4\ud0c0\ud2b8\uc5c5\uc744 \uc18c\uac1c\ud569\ub2c8\ub2e4.","url":"\/zf_user\/jobs\/theme\/bio-startup","logo_src":"http:\/\/www.saraminimage.co.kr\/sri\/theme\/bio_startup\/logo_main_bio.png"}],"banner":[]},"hotRecruit":{"hotRecruit":[],"banner":[]},"mentoring":{"mentoring":{"mento":[{"type":"banner"}],"review":{"companyName":"","mentorName":"\uc0ac\ub78c\uc778","mentorNo":"default_review","mentorJobName":"","content":"\uc624\ub958\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4. <\/br>\uba58\ud1a0\ub9c1\ub9e4\uce58\uc758 \uc2e4\uc2dc\uac04 \ub9ac\ubdf0\ub97c<\/br> \ud655\uc778\ud558\uc2dc\ub824\uba74 \uc704 '\ub354\ubcf4\uae30' \ubc84\ud2bc\uc744 \ud074\ub9ad\ud574\uc8fc\uc138\uc694!","reviewScore":"5.0","writerName":"","rating_full":5,"rating_half":0,"rating_empty":0}},"banner":[]}},"menu":[{"title":"Ai\ub9e4\uce58 \uacf5\uace0","name":"recommendRecruit","icon":"ai"},{"title":"\uc9c0\uc5ed\ubcc4 \uacf5\uace0","name":"domestic","url":"\/zf_user\/jobs\/list\/domestic","icon":"local"},{"title":"\uc9c1\uc5c5\ubcc4 \uacf5\uace0","name":"jobCategory","url":"\/zf_user\/jobs\/list\/job-category","icon":"job"},{"title":"\uc778\uae30 TOP \uae30\uc5c5","name":"hotRecruit","icon":"top"},{"title":"\ucde8\uc5c5\ucd95\ud558\uae08 \uc81c\uacf5","name":"aiHeadhunting","icon":"coin"},{"title":"\ube0c\ub79c\ub4dc \ucc44\uc6a9\uad00","name":"theme","icon":"company"},{"title":"1:1 \ucde8\uc5c5 \uc0c1\ub2f4","name":"mentoring","icon":"mentoring"}],"notice":{"liveContents":[{"idx":"109198","display_fl":"y","notice_fl":"y","category":"5","title":"[\uc774\ubca4\ud2b8] \ucd9c\uc11d\ud558\uace0 \uc544\uc774\ud3f015 \ubc1b\uc790! \u2b50\ucd9c\uc11d\uccb4\ud06c \ucc4c\ub9b0\uc9c0\u2b50","read_cnt":"114","display_dt":"2023-11-01 10:00:47","reg_dt":"2023-11-01 10:00:47","edit_dt":"0000-00-00 00:00:00","reply_cnt":"0","mcom_idx":"0","mem_type":"p","isWithinWeek":"1"},{"idx":"109186","display_fl":"y","notice_fl":"y","category":"5","title":"PC \uae30\uc5c5\uc815\ubcf4 \uac1c\ud3b8\u2728 NOW\uc5d0\uc11c NEXT\ub85c, \uae30\uc5c5\uc815\ubcf4\uc5d0\uc11c \ucee4\ub9ac\uc5b4\uc758 \ubbf8\ub798\ub97c \uadf8\ub824\ubcf4\uc138\uc694!","read_cnt":"282","display_dt":"2023-10-24 13:15:14","reg_dt":"2023-10-24 13:15:14","edit_dt":"2023-10-24 19:01:05","reply_cnt":"0","mcom_idx":"0","mem_type":"p","isWithinWeek":"0"},{"idx":"109177","display_fl":"y","notice_fl":"y","category":"2","title":"[\uc774\ubca4\ud2b8] \ucee4\ub9ac\uc5b4\uc131\uc7a5 \uc544\ud2f0\ud074 \uc77d\uace0, \uc544\uc774\ud328\ub4dc\ub3c4 \ubc1b\uc790! \u2728\ucee4\ub9ac\uc5b4 \ucc4c\ub9b0\uc9c0\u2728","read_cnt":"164434","display_dt":"2023-10-18 14:21:53","reg_dt":"2023-10-18 14:21:53","edit_dt":"2023-10-19 14:06:30","reply_cnt":"0","mcom_idx":"0","mem_type":"p","isWithinWeek":"0"},{"idx":"109176","display_fl":"y","notice_fl":"y","category":"5","title":"[\uc774\ubca4\ud2b8] \uc804\ubb38\uac00\uc5d0\uac8c \uc9c4\ub2e8\ubc1b\uace0, \ucee4\ub9ac\uc5b4 \uace0\ubbfc \ud574\uacb0\ud558\uc790!","read_cnt":"170988","display_dt":"2023-10-17 16:53:49","reg_dt":"2023-10-17 16:53:49","edit_dt":"2023-10-19 10:37:24","reply_cnt":"0","mcom_idx":"0","mem_type":"p","isWithinWeek":"0"}],"isWithinWeek":"1"},"common":{"banner":[{"title":"\uc774\uc9c1 \uc81c\uc548 \ubc30\ub1083","category":"top_main_floating_banner","img_src":"new\/main\/2023\/06\/rwhf47_ck04-2so1qt_bannermainposition3.png","img_alt":"\ud3ec\uc9c0\uc158 \uc81c\uc548\uc774 \ub3c4\ucc29\ud588\uc2b5\ub2c8\ub2e4","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/service\/talent-pool?inner_source=saramin&inner_medium=banner&inner_campaign=pc_main_2&inner_term=talent-pool02","display_target":["nonmember","person","company"],"contents":"","memo":"","start_dt":"2023-05-16 09:00:00","edit_dt":"2023-06-19 13:00:07","end_dt":"9999-12-31 23:59:59","idx":"7410","target":"_blank","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"","top_content_second":"","top_content_third":"","top_content_text_color":"","content_order":"","content_background_color":"","exposure":"1"},{"title":"\uc774\uc9c1 \uc81c\uc548 \ubc30\ub1082","category":"top_main_floating_banner","img_src":"new\/main\/2023\/05\/ruq6ij_inso-2so24t_2107.png","img_alt":"10\uba85 \uc911 7\uba85\uc740 \uc81c\uc548 \ubc1b\ub294 \uc911","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/service\/talent-pool?inner_source=saramin&inner_medium=banner&inner_campaign=pc_main_2&inner_term=talent-pool02","display_target":["nonmember","person","company"],"contents":"","memo":"","start_dt":"2023-05-16 09:00:00","edit_dt":"2023-05-16 10:30:44","end_dt":"9999-12-31 23:59:59","idx":"7409","target":"_blank","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"","top_content_second":"","top_content_third":"","top_content_text_color":"","content_order":"","content_background_color":"","exposure":"1"},{"title":"\uc774\uc9c1 \uc81c\uc548 \ubc30\ub1081","category":"top_main_floating_banner","img_src":"new\/main\/2023\/05\/ruq6hq_bj8q-2so24t_1.png","img_alt":"\ub0b4 \uc5f0\ubd09 \uc62c\ub9ac\uace0 \uc2f6\ub2e4\uba74?","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/service\/talent-pool?inner_source=saramin&inner_medium=banner&inner_campaign=pc_main&inner_term=talent-pool01","display_target":["nonmember","person","company"],"contents":"","memo":"","start_dt":"2023-05-16 09:00:00","edit_dt":"2023-05-16 10:30:04","end_dt":"9999-12-31 23:59:59","idx":"7408","target":"_blank","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"","top_content_second":"","top_content_third":"","top_content_text_color":"","content_order":"","content_background_color":"","exposure":"1"}],"special_recruit_banner":[{"title":"(\uc8fc)\uc11c\uc6b8\ub79c\ub4dc","category":"top_main_special_recruit_banner","img_src":"new\/main\/2023\/10\/s3dl5c_tdar-2so34c_PC.png","img_alt":"(\uc8fc)\uc11c\uc6b8\ub79c\ub4dc","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/jobs\/relay\/view?rec_idx=46707304","display_target":["nonmember","person","company"],"contents":"","memo":"","start_dt":"2023-10-06 00:00:00","edit_dt":"2023-10-31 13:16:05","end_dt":"2023-11-10 23:59:59","idx":"7878","target":"_top","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"\uc624\uac10\ub9cc\uc871 \ud14c\ub9c8\ud30c\ud06c","top_content_second":"(\uc8fc)\uc11c\uc6b8\ub79c\ub4dc<br>2023\ub144 \uc11c\uc6b8\ub79c\ub4dc \uac01 \ubd80\ubb38 \uc2e0\uc785 \ubc0f \uacbd\ub825 \ucc44\uc6a9","top_content_third":"10\/6 - 11\/10","top_content_text_color":"white","content_order":"","content_background_color":"","exposure":"1"},{"title":"\ub300\uc6d0\uac15\uc5c5(\uc8fc)","category":"top_main_special_recruit_banner","img_src":"new\/main\/2023\/10\/s3dl22_sj7u-2so34c_PC.png","img_alt":"\ub300\uc6d0\uac15\uc5c5(\uc8fc)","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/jobs\/relay\/view?rec_idx=46845077","display_target":["nonmember","person","company"],"contents":"","memo":"","start_dt":"2023-10-30 09:00:00","edit_dt":"2023-10-31 13:15:55","end_dt":"2023-11-12 23:59:59","idx":"7877","target":"_top","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"\uc138\uacc4 \uc720\uc77c\uc758 \uc2a4\ud504\ub9c1 \uc885\ud569\uba54\uc774\ucee4, \uc138\uacc4\uc18d\uc758 \ub300\uc6d0","top_content_second":"\ub300\uc6d0\uac15\uc5c5(\uc8fc)<br>2024\ub144 \uc0c1\ubc18\uae30 \ub300\uc6d0\uac15\uc5c5 \ub300\uc878 \uc2e0\uc785\uc0ac\uc6d0 \ubaa8\uc9d1","top_content_third":"10\/30 - 11\/12","top_content_text_color":"white","content_order":"","content_background_color":"","exposure":"1"},{"title":"(\uc8fc)\ud480\ubb34\uc6d0","category":"top_main_special_recruit_banner","img_src":"new\/main\/2023\/10\/s347kw_1bfq-2so34c_PC.png","img_alt":"(\uc8fc)\ud480\ubb34\uc6d0","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/jobs\/relay\/view?rec_idx=46831698","display_target":[],"contents":"","memo":"","start_dt":"2023-10-24 00:00:00","edit_dt":"2023-10-26 11:43:44","end_dt":"2023-11-07 23:59:59","idx":"7873","target":"_top","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"\ub0b4 \uac00\uc871\uc758 \uac74\uac15\uacfc \ud589\ubcf5\uc744 \uc704\ud55c \ubc14\ub978\uba39\uac70\ub9ac","top_content_second":"(\uc8fc)\ud480\ubb34\uc6d0<br>\ud480\ubb34\uc6d0 \uac01 \ubd80\ubb38 \uacbd\ub825\u2022\uc2e0\uc785 \ubaa8\uc9d1","top_content_third":"10\/24 - 11\/7","top_content_text_color":"white","content_order":"","content_background_color":"","exposure":"1"},{"title":"(\uc8fc)\uc548\ub7a9","category":"top_main_special_recruit_banner","img_src":"new\/main\/2023\/10\/s3479u_4k40-2so34c_PC.png","img_alt":"(\uc8fc)\uc548\ub7a9","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/jobs\/relay\/view?rec_idx=46774245","display_target":[],"contents":"","memo":"","start_dt":"2023-10-20 00:00:00","edit_dt":"2023-10-26 11:37:06","end_dt":"2023-11-05 23:59:59","idx":"7872","target":"_top","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"\uc548\uc804\ud574\uc11c \ub354\uc6b1 \uc790\uc720\ub85c\uc6b4 \uc138\uc0c1","top_content_second":"(\uc8fc)\uc548\ub7a9<br>AhnLab 2023 \ud558\ubc18\uae30 \uc2e0\uc785\/Junior \uacf5\uac1c\ucc44\uc6a9","top_content_third":"10\/20 - 11\/5","top_content_text_color":"white","content_order":"","content_background_color":"","exposure":"1"},{"title":"(\uc8fc)\uc720\uc5d4\uc5d0\uc774\uc5d4\uc9c0\ub2c8\uc5b4\ub9c1","category":"top_main_special_recruit_banner","img_src":"new\/main\/2023\/10\/s2giyj_cxn3-2so33m_.png","img_alt":"(\uc8fc)\uc720\uc5d4\uc5d0\uc774\uc5d4\uc9c0\ub2c8\uc5b4\ub9c1","link_url":"https:\/\/www.saramin.co.kr\/zf_user\/jobs\/relay\/view?rec_idx=46710341","display_target":[],"contents":"","memo":"","start_dt":"2023-10-06 00:00:00","edit_dt":"2023-10-13 16:47:07","end_dt":"2023-11-05 23:59:59","idx":"7824","target":"_top","term":"","main_logo_kind":"s","company_content_home_title":"","company_content_home_description":"","banner_text":"","top_main_person_category":"","top_main_company_category":"","banr_bac_left":"","banr_bac_rght":"","top_content_first":"\uc815\ubcf4\ud1b5\uc2e0 \ubd84\uc57c\uc758 \uc0c8\ub85c\uc6b4 \ubbf8\ub798\ub97c \uc5f4\uc5b4\uac00\ub294 \uae30\uc5c5","top_content_second":"(\uc8fc)\uc720\uc5d4\uc5d0\uc774\uc5d4\uc9c0\ub2c8\uc5b4\ub9c1<br>(SK\uacc4\uc5f4\uc0ac) \uc2e0\uc785 \ubc0f \uacbd\ub825\uc9c1\uc6d0 \ucc44\uc6a9\uacf5\uace0","top_content_third":"10\/6 - 11\/5","top_content_text_color":"white","content_order":"","content_background_color":"","exposure":"1"}]},"recruitNotice":[{"d_day_info":{"is_deadline_imminent":false,"dDayText":"~12\/31"},"mcom_idx":"2481993","rec_idx":"46817687","company_nm":"\uc9c0\uc5d0\uc2a4\uac74\uc124(\uc8fc)","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46817687"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"~12\/31"},"mcom_idx":"2482016","rec_idx":"44765454","company_nm":"(\uc8fc)LG\uc720\ud50c\ub7ec\uc2a4","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=44765454"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"\uc0c1\uc2dc"},"mcom_idx":"2482018","rec_idx":"44495122","company_nm":"(\uc8fc)\ud55c\ud654","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=44495122"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"~11\/14"},"mcom_idx":"2482161","rec_idx":"46841522","company_nm":"(\uc8fc)\ud0dc\uc601\uac74\uc124","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46841522"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"~11\/12"},"mcom_idx":"2482347","rec_idx":"46845077","company_nm":"\ub300\uc6d0\uac15\uc5c5(\uc8fc)","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46845077"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"~11\/07"},"mcom_idx":"2482388","rec_idx":"46831698","company_nm":"(\uc8fc)\ud480\ubb34\uc6d0","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46831698"},{"d_day_info":{"is_deadline_imminent":true,"dDayText":"D-3"},"mcom_idx":"2482452","rec_idx":"46809850","company_nm":"\uc5d8\uc5d0\uc2a4\uc624\ud1a0\ubaa8\ud2f0\ube0c\ud14c\ud06c\ub180\ub85c\uc9c0\uc2a4(\uc8fc)","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46809850"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"~11\/12"},"mcom_idx":"2482630","rec_idx":"46810219","company_nm":"\ub3d9\ud654\uae30\uc5c5(\uc8fc)","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46810219"},{"d_day_info":{"is_deadline_imminent":false,"dDayText":"\uc0c1\uc2dc"},"mcom_idx":"2482930","rec_idx":"44206212","company_nm":"\u321c\uce74\uce74\uc624","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=44206212"},{"d_day_info":{"is_deadline_imminent":true,"dDayText":"D-3"},"mcom_idx":"2483316","rec_idx":"46774245","company_nm":"(\uc8fc)\uc548\ub7a9","recruit_url":"\/zf_user\/public-recruit\/view?rec_idx=46774245"}]};} catch (e) {
}
	</script>
	<script type="text/javascript"
		src="//www.saraminimage.co.kr/js/libs/jquery-1.11.1.min.js"></script>
	<script type="text/javascript"
		src="/js/libs/saramin/common.js?v=20231031163319"></script>
	<script type="text/javascript"
		src="/zf_user/pagelet/prime-plus-banner-ads?id=_primePlus"></script>
	<script type="text/javascript"
		src="/zf_user/pagelet/prime-banner-ads?id=_prime"></script>
	<script type="text/javascript"
		src="/zf_user/pagelet/help-links?id=section_helper"></script>
	<script type="text/javascript">//<!--
 googletag.cmd.push(function(){googletag.display('div-gpt-ad-1630976503964-0');});</script>
	<iframe
		src="https://adbf559d81d279e7579e1df847ac6986.safeframe.googlesyndication.com/safeframe/1-0-40/html/container.html"
		style="visibility: hidden; display: none;"></iframe>
	<script type="text/javascript">//<!--
 jQuery(document).ready(function() {
 getUnreadMessageGnb();
 getProfileStatus();  jQuery('#gnb_member_person').on('click', function(e) {
 var $personsLayer = jQuery('.layer_member.person');  if ($personsLayer.data('loaded')) {
 return;
 }  jQuery.ajax({
 method: 'GET',
 url: '/zf_user/persons/get-notification-count-ajax',
 success: function (res) {
 if(res.status === 'success') {
 $personsLayer.find('.suggest_text').text(res.contents.suggestCnt);
 $personsLayer.find('.apply_text').text(res.contents.applyCnt);
 $personsLayer.data('loaded', true);
 } else {
 $personsLayer.find('.suggest_text').text(0);
 $personsLayer.find('.apply_text').text(0);
 }
 }
 });
 });
});
function getUnreadMessageGnb() {
 jQuery.ajax({
 method: 'GET',
 url: '/zf_user/messenger/index/get-unread-message-count',
 error: function (err) {
 jQuery('#gnb_unread_message_count').hide();
 },
 success: function (res) {
 var exception_url = ['/zf_user/messenger', '/zf_user/messenger/'];
 jQuery('#gnb_unread_message_count').hide();
 var json = JSON.parse(res);
 if (json.count > 0 && (exception_url.indexOf(window.location.pathname) == -1)) {
 jQuery('#gnb_message_badge').data('el', 'chat_new');
 if (json.count > 99) {
 jQuery('#gnb_unread_message_count').text('99+');
 } else {
 jQuery('#gnb_unread_message_count').text(json.count);
 }
 jQuery('#gnb_message_badge').addClass('push');
 jQuery('#gnb_message_badge').removeClass('first');
 jQuery('#gnb_unread_message_count').show();
 }
 }
 });
}  function getProfileStatus() {
 jQuery.ajax({
 method: 'GET',
 url: '/zf_user/persons/get-profile-status-ajax',
 success: function (res) {
 if(res.status == 'success') {
 var $profileTag = res.contents.addProfile == 'y' ? jQuery('.btn_profile.add') : jQuery('.btn_profile.edit');
 $profileTag.css('display', 'grid');
 } else {
 jQuery('.btn_profile.edit').css('display', 'grid');
 }
 }
 });
}</script>
	<script type="text/javascript"
		src="/zf_user/pagelet/main-footer?id=sri_footer"></script>
	<script type="text/javascript">(function() {
 var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
 document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
})();</script>
	<script src="https://www.saramin.co.kr/js/wl6.js"
		type="text/javascript"></script>
	<script type="text/javascript">// 1.
_n_sid = "saramin";
_n_uid_cookie = "UID";
_n_info1_cookie = "Mtype";
n_logging();</script>
	<script type="text/javascript">(function(e,t){var n=e.amplitude||{_q:[],_iq:{}};var r=t.createElement("script")
;r.type="text/javascript"
;r.integrity="sha384-MBHPie4YFudCVszzJY9HtVPk9Gw6aDksZxfvfxib8foDhGnE9A0OriRHh3kbhG3q"
;r.crossOrigin="anonymous";r.async=true
;r.src="https://cdn.amplitude.com/libs/amplitude-8.16.1-min.gz.js"
;r.onload=function(){if(!e.amplitude.runQueuedFunctions){console.log(
"[Amplitude] Error: could not load SDK")}};var s=t.getElementsByTagName("script"
)[0];s.parentNode.insertBefore(r,s);function i(e,t){e.prototype[t]=function(){
this._q.push([t].concat(Array.prototype.slice.call(arguments,0)));return this}}
var o=function(){this._q=[];return this};var a=["add","append","clearAll",
"prepend","set","setOnce","unset","preInsert","postInsert","remove"];for(
var c=0;c<a.length;c++){i(o,a[c])}n.Identify=o;var l=function(){this._q=[]
;return this};var u=["setProductId","setQuantity","setPrice","setRevenueType",
"setEventProperties"];for(var p=0;p<u.length;p++){i(l,u[p])}n.Revenue=l;var d=[
"init","logEvent","logRevenue","setUserId","setUserProperties","setOptOut",
"setVersionName","setDomain","setDeviceId","enableTracking",
"setGlobalUserProperties","identify","clearUserProperties","setGroup",
"logRevenueV2","regenerateDeviceId","groupIdentify","onInit","onNewSessionStart"
,"logEventWithTimestamp","logEventWithGroups","setSessionId","resetSessionId",
"getDeviceId","getUserId","setMinTimeBetweenSessionsMillis",
"setEventUploadThreshold","setUseDynamicConfig","setServerZone","setServerUrl",
"sendEvents","setLibrary","setTransport"];function v(t){function e(e){
t[e]=function(){t._q.push([e].concat(Array.prototype.slice.call(arguments,0)))}}
for(var n=0;n<d.length;n++){e(d[n])}}v(n);n.getInstance=function(e){e=(
!e||e.length===0?"$default_instance":e).toLowerCase();if(
!Object.prototype.hasOwnProperty.call(n._iq,e)){n._iq[e]={_q:[]};v(n._iq[e])}
return n._iq[e]};e.amplitude=n})(window,document);  var amplitudeUserId = "18994416";
var userProperties = {
 "gender"       : '-',
 'registerDate' : '2023-10-16',
 'userType'     : 'P',
 'mcom_idx'     : '',
 'companyTag'   : '',
 's_id'         : '1698834741'
};  if (!!amplitudeUserId) {
 var init = 'a687efd08d6fa7318b765da13895c63c';
 amplitude.getInstance().init(init, null, {
 includeGclid: true,
 includeUtm: true,
 includeReferrer: true,
 saveParamsReferrerOncePerSession: false,
 });  amplitude.getInstance().setUserId(amplitudeUserId);
 amplitude.getInstance().setUserProperties(userProperties);
 amplitude.getInstance().setUserProperties(getUTMCookieInfo());
}  function getUTMCookieInfo() {
 var properties = {
 utm_source : 'none',
 utm_medium : 'none',
 utm_campaign : 'none',
 utm_term : 'none',
 utm_content : 'none'
 };
 var cookieList = document.cookie.split('; ');  for (var cookieListKey in cookieList) {
 var cookieInfo = cookieList[cookieListKey].split('=');
 if (cookieInfo[0] === 'utmParams' && cookieInfo[1] !== '') {
 var utmCookie = decodeURIComponent(cookieInfo[1]).split('&');
 for (var key in utmCookie) {
 var uc = utmCookie[key].split('=');
 properties[uc[0]] = uc[1];
 }
 }
 }  return properties;
}</script>
	<script type="text/javascript">!function(e,n){"function"==typeof define&&define.amd?define(n):"object"==typeof exports?module.exports=n(require,exports,module):e.ouibounce=n()}(this,function(e,n,o){return function(e,n){"use strict";function o(e,n){return"undefined"==typeof e?n:e}function i(e){var n=24*e*60*60*1e3,o=new Date;return o.setTime(o.getTime()+n),"; expires="+o.toUTCString()}function t(){s()||(L.addEventListener("mouseleave",u),L.addEventListener("mouseenter",r),L.addEventListener("keydown",c))}function u(e){e.clientY>k||(D=setTimeout(m,y))}function r(){D&&(clearTimeout(D),D=null)}function c(e){g||e.metaKey&&76===e.keyCode&&(g=!0,D=setTimeout(m,y))}function d(e,n){return a()[e]===n}function a(){for(var e=document.cookie.split("; "),n={},o=e.length-1;o>=0;o--){var i=e[o].split("=");n[i[0]]=i[1]}return n}function s(){return d(T,"true")&&!v}function m(){s()||(e&&(e.style.display="block"),E(),f())}function f(e){var n=e||{};"undefined"!=typeof n.cookieExpire&&(b=i(n.cookieExpire)),n.sitewide===!0&&(w=";path=/"),"undefined"!=typeof n.cookieDomain&&(x=";domain="+n.cookieDomain),"undefined"!=typeof n.cookieName&&(T=n.cookieName),document.cookie=T+"=true"+b+x+w,L.removeEventListener("mouseleave",u),L.removeEventListener("mouseenter",r),L.removeEventListener("keydown",c)}var l=n||{},v=l.aggressive||!1,k=o(l.sensitivity,20),p=o(l.timer,1e3),y=o(l.delay,0),E=l.callback||function(){},b=i(l.cookieExpire)||"",x=l.cookieDomain?";domain="+l.cookieDomain:"",T=l.cookieName?l.cookieName:"viewedOuibounceModal",w=l.sitewide===!0?";path=/":"",D=null,L=document.documentElement;setTimeout(t,p);var g=!1;return{fire:m,disable:f,isDisabled:s}}});</script>
	<script type="text/javascript">+function(a,p,P,b,y){a.braze={};a.brazeQueue=[];for(var s="BrazeSdkMetadata DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Card.fromContentCardsJson Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent InAppMessage.fromJson FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.addToSubscriptionGroup User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.removeFromSubscriptionGroup User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent automaticallyShowInAppMessages destroyFeed hideContentCards showContentCards showFeed showInAppMessage toggleContentCards toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession requestPushPermission removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh requestImmediateDataFlush enableSDK isDisabled setLogger setSdkAuthenticationSignature addSdkMetadata disableSDK subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToSdkAuthenticationFailures toggleLogging unregisterPush wipeData handleBrazeAction".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.braze,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.brazeQueue.push(arguments); return true}"))()}window.braze.getCachedContentCards=function(){return new window.braze.ContentCards};window.braze.getCachedFeed=function(){return new window.braze.Feed};window.braze.getUser=function(){return new window.braze.User};(y=p.createElement(P)).type='text/javascript';
 y.src='https://js.appboycdn.com/web-sdk/4.0/braze.no-amd.min.js';
 y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
}(window,document,'script');  var init = 'a2ac6b71-3416-464a-ac48-ef2cff5c2026';  // initialize the SDK
braze.initialize(init, {
 baseUrl: "sdk.iad-05.braze.com",
 allowUserSuppliedJavascript: true,
 minimumIntervalBetweenTriggerActionsInSeconds: 5,
 inAppMessageZIndex: 12000,
});  braze.automaticallyShowInAppMessages();  braze.changeUser('18994416');
braze.getUser().setFirstName('신수');
braze.openSession();</script>
	<script>(function(a_,i_,r_,_b,_r,_i,_d,_g,_e){if(!a_[_b]){var d={queue:[]};_r.concat(_i).forEach(function(a){var i_=a.split("."),a_=i_.pop();i_.reduce(function(a,i_){return a[i_]=a[i_]||{}},d)[a_]=function(){d.queue.push([a,arguments])}});a_[_b]=d;a_=i_.getElementsByTagName(r_)[0];i_=i_.createElement(r_);i_.onerror=function(){d.queue.filter(function(a){return 0<=_i.indexOf(a[0])}).forEach(function(a){a=a[1];a=a[a.length-1];"function"===typeof a&&a("error occur when load airbridge")})};i_.async=1;i_.src="//static.airbridge.io/sdk/latest/airbridge.min.js";a_.parentNode.insertBefore(i_,a_)}})(window,document,"script","airbridge","init fetchResource setBanner setDownload setDownloads openDeeplink setDeeplinks sendWeb setUserAgent setUserAlias addUserAlias setMobileAppData setUserId setUserEmail setUserPhone setUserAttributes clearUser setDeviceIFV setDeviceIFA setDeviceGAID events.send events.signIn events.signUp events.signOut events.purchased events.addedToCart events.productDetailsViewEvent events.homeViewEvent events.productListViewEvent events.searchResultViewEvent".split(" "),["events.wait"]);
 var airbridgeWebKey = 'ca79046f9e144d959f976fe69cdcb672';
 var appName = 'saramin';
 airbridge.init({
 app: appName,
 webToken: airbridgeWebKey,
 useProtectedAttributionWindow : true,
 utmParsing: true,
 cookieWindow: 1,
 forceFirstPartyCookieID: true
 });
 airbridge.setUserId( '18994416');
 airbridge.setUserAlias({
 "amplitude_id": '18994416'
 });</script>
	<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');  ga('create', 'UA-12546634-1', 'saramin.co.kr');
 ga('require', 'GTM-KN35GK2');
 ga('require','displayfeatures');
 ga('require', 'linkid');
 ga('set', 'userId', '18994416');
 ga('set', 'dimension1', 'per');
 ga('send', 'pageview');</script>
	<script type="text/javascript">function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
 var l = document.location;
 var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
 var label = opt_label || '';
 var value = opt_value || '';
 url = url + '&opt_label=' + label + '&opt_value=' + value;
 n_click_logging(url, l.href);
 try {
 _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
 ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
 } catch (_e) {}
 } 
 function pushDataLayer(event, category, event_flow, event_label) {
 try {
 dataLayer.push({
 'event': event || 'ga_lead',
 'category': category || '',
 'event-flow': event_flow || '',
 'event-label': event_label || ''
 });  }catch (e) {  }
 }  // 클릭 이벤트 + 구글 태그매니져 로깅
 function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
 n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
 pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
 }  function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
 try{
 var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
 var promotion_log = {};
 promotion_log[ecommerce_type] = {
 'promotions': [
 {
 'id': log_id,
 'name': log_name,
 'creative': log_creative,
 'position': log_position
 }
 ]
 };  var log_data = {
 'event': log_event,
 'ecommerce': promotion_log
 };  dataLayer.push(log_data);
 } catch (e) {  }
 } 
 function _hwaClick(cc) {
 n_trackEvent('ADs', 'Click-' + cc);
 }  function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {  try {
 var url         = el.href;
 var category    = opt_category || '';
 var content     = opt_content || '';
 var ref         = opt_ref || '';
 var ref_content = opt_ref_content || '';
 var anchor      = '';  if ( url.indexOf('#') != -1 ) {
 var splitUrl = url.split('#');
 url = splitUrl[0];
 anchor = splitUrl[1];
 }  if( url.indexOf('?') < 0 ) {
 url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
 } else {
 url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
 }  if ( anchor != '' ) {
 url += '#' + anchor;
 }  el.href = url;
 } catch (e) {
 }
 }  function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {  try {
 var url         = el.href;
 var ref         = opt_ref || '';
 var ref_content = opt_ref_content || '';
 var ref_scnid   = opt_ref_scnid || '';
 var ref_area   = opt_ref_area || '';
 var anchor      = '';  var opt = opt_etc || {};  if( url.indexOf('t_ref') > 0 ) return;  if ( url.indexOf('#') != -1 ) {
 var splitUrl = url.split('#');
 url = splitUrl[0];
 anchor = splitUrl[1];
 }  if( url.indexOf('?') < 0 ) {
 url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
 } else {
 url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
 }  if (!!ref_scnid) {
 url += '&t_ref_scnid=' + ref_scnid;
 }  if (!!ref_area) {
 url += '&t_ref_area=' + ref_area;
 }  if ( anchor != '' ) {
 url += '#' + anchor;
 }  if (opt.constructor === Object) {
 for (k in opt) {
 if (opt.hasOwnProperty(k)) {
 url += '&' + k + '=' + opt[k];
 }
 }
 }  el.href = url;  } catch (e) {
 }
 }</script>
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1d3a45fb0bfe";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);</script>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
 new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
 j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
 'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
 })(window,document,'script','dataLayer','GTM-MK2GBBH');</script>
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MK2GBBH"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<div id="_sticky_warp" role="complementary"></div>
	<div class="wrap_quick_apply_layer" id="wrap_quick_apply_layer"
		style="display: none">
		<iframe src="about:blank" id="quick_apply_layer_frame"
			name="quick_apply_layer_frame"
			style="display: none; position: fixed; right: 34px; bottom: 0; z-index: 150; width: 448px; height: 740px; border: 0; border-radius: 20px; border-bottom-left-radius: 0; border-bottom-right-radius: 0; box-sizing: border-box; box-shadow: 0 2px 30px 0 rgba(0, 0, 0, 0.15);"></iframe>
	</div>
	<script src="/js/apply/QuickApply.js?v=20231031163319"></script>
	<iframe name="google_ads_top_frame" id="google_ads_top_frame"
		style="display: none; position: fixed; left: -999px; top: -999px; width: 0px; height: 0px;"></iframe>
	<div style="display: none; visibility: hidden;">
		<script type="text/javascript"
			src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
	</div>
	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];dataLayer.push({userId:"18994416"});</script>
	<div style="display: none; visibility: hidden;">

		<script type="text/javascript">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:96026},{event:"setEmail",email:""},{event:"setZipcode",zipcode:""},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	</div>
	<div id="criteo-tags-div" style="display: none;"></div>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe src="https://www.google.com/recaptcha/api2/aframe" width="0"
		height="0" style="display: none;"></iframe>
</body>
<!-- <script type="text/javascript">
$(document).ready(function(){
    var owl = $('.owl-carousel');
    
    owl.owlCarousel({
        items:3,                 // 한번에 보여줄 아이템 수
        loop:true,               // 반복여부
        margin:35,               // 오른쪽 간격
        autoplay:true,           // 자동재생 여부
        autoplayTimeout:1800,    // 재생간격
        autoplayHoverPause:true  //마우스오버시 멈출지 여부
    });    
    
    $('.customNextBtn').click(function() {
        owl.trigger('next.owl.carousel');
    })
    
    $('.customPrevBtn').click(function() {
        owl.trigger('prev.owl.carousel', [300]);
    })
});
</script> -->
