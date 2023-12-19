<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<div class="listUpAdvrt">
<div id="content" class="main-content__inner">
    <section class="page-area-srch-product">
        <div class="page-top-head">
            <h2 class="page-top-head__title">기본 공고 리스트에서 최상단으로 리스트업 해보세요.</h2>
            <p class="page-top-head__desc">이미지 광고와 함께 구매하면 좋은 추천공고, 공고문 노출도 업!</p>
        </div>
      <!--   <div class="choice-device" role="group" aria-label="기기 선택">
        <label class="chk-radio chk-radio--medium"><input type="radio" name="device" id="device-all" value="both"><span class="chk-radio__container"><span class="chk-radio__shape"><svg focusable="false" role="none">
                            <use xlink:href="#checkbox"></use>
                        </svg></span> PC+M 모두 <span class="badge badge--h20 badge--discount">20%할인</span></span></label><label class="chk-radio chk-radio--medium"><input type="radio" name="device" id="device-pc" value="pc"><span class="chk-radio__container"><span class="chk-radio__shape"><svg focusable="false" role="none">
                            <use xlink:href="#checkbox"></use>
                        </svg></span> PC만 </span></label><label class="chk-radio chk-radio--medium"><input type="radio" name="device" id="device-m" value="mobile"><span class="chk-radio__container"><span class="chk-radio__shape"><svg focusable="false" role="none">
                            <use xlink:href="#checkbox"></use>
                        </svg></span> 모바일만 </span></label></div> -->
        <div class="listupAd-list">
        <div class="srch-product" tabindex="0" role="region" arai-label="추천업 상품">
            <div class="product-thumbnail"><img src="https://www.saraminimage.co.kr/sri/billing/products/img_up_2.png" alt=""></div>
            <div class="srch-product__detail">
                <div class="srch-product__detail__title"><a href="">나래</a>
                    <div class="product-renewal-tooltip"><strong class="imgAdvrt_period_red">10회</strong>
					</div>
                </div>
              
               <!--  <div class="srch-product__detail__badge">
                
                 <span class="badge badge--h24 badge--benefit">첫구매할인</span><span class="badge badge--h24 badge--recommend">타겟팅효과🎯</span></div> -->
                <p class="srch-product__detail__desc">구직자 활동이 많은 다수의 맞춤 공고 영역에서 공고 타겟팅 노출</p>
                <div class="srch-product__detail__price">
                    <div class="srch-product__detail__price__option">
                        <!-- <div class="datepicker"><label class="datepicker__label">시작일</label>
                            <div class="dp__main dp__theme_light">
                                <div>
                                   
                                    <div class="dp__input_wrap">
                                       <input class="dp__pointer dp__input_readonly dp__input dp__input_icon_pad dp__input_reg" inputmode="none" placeholder="" autocomplete="off" aria-label="Datepicker input">
                                       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" fill="currentColor" aria-hidden="true" class="dp__icon dp__input_icon dp__input_icons">
                                            <path d="M29.333 8c0-2.208-1.792-4-4-4h-18.667c-2.208 0-4 1.792-4 4v18.667c0 2.208 1.792 4 4 4h18.667c2.208 0 4-1.792 4-4v-18.667zM26.667 8v18.667c0 0.736-0.597 1.333-1.333 1.333 0 0-18.667 0-18.667 0-0.736 0-1.333-0.597-1.333-1.333 0 0 0-18.667 0-18.667 0-0.736 0.597-1.333 1.333-1.333 0 0 18.667 0 18.667 0 0.736 0 1.333 0.597 1.333 1.333z"></path>
                                            <path d="M20 2.667v5.333c0 0.736 0.597 1.333 1.333 1.333s1.333-0.597 1.333-1.333v-5.333c0-0.736-0.597-1.333-1.333-1.333s-1.333 0.597-1.333 1.333z"></path>
                                            <path d="M9.333 2.667v5.333c0 0.736 0.597 1.333 1.333 1.333s1.333-0.597 1.333-1.333v-5.333c0-0.736-0.597-1.333-1.333-1.333s-1.333 0.597-1.333 1.333z"></path>
                                            <path d="M4 14.667h24c0.736 0 1.333-0.597 1.333-1.333s-0.597-1.333-1.333-1.333h-24c-0.736 0-1.333 0.597-1.333 1.333s0.597 1.333 1.333 1.333z"></path>
                                        </svg>
                                       
                                       
                                    </div>
                                </div>
                               
                            </div>
                        </div> -->
                       <!--  <div class="srch-product__detail__price__option__period"><select class="select-box">
                                <option value="3">3일</option>
                                <option value="5">5일 (+2일)</option>
                                <option value="7">7일 (+3일)</option>
                                <option value="10">10일 (+4일)</option>
                                <option value="14">14일 (+7일)</option>
                                <option value="21">21일 (+9일)</option>
                            </select>
                           
                        </div> -->
                        <div class="srch-product__detail__price__option__days">
                            <!---->
                        </div>
                    </div>
                    <div class="purchase">
                    		<span class="purchase__price--primary"> 
                               <strong>400,000원</strong></span>
                               <button type="button" class="btn btn--action--outline btn--large"> 상품 구매 </button></div>
                </div>
            </div>
        </div>
        <div class="srch-product" tabindex="0" role="region" arai-label="추천업 상품">
            <div class="product-thumbnail"><img src="https://www.saraminimage.co.kr/sri/billing/products/img_up_2.png" alt=""></div>
            <div class="srch-product__detail">
                <div class="srch-product__detail__title"><a href="">으뜸</a>
                    <div class="product-renewal-tooltip"><strong class="imgAdvrt_period_red">20회</strong>
					</div>
                </div>
              
               <!--  <div class="srch-product__detail__badge">
                
                 <span class="badge badge--h24 badge--benefit">첫구매할인</span><span class="badge badge--h24 badge--recommend">타겟팅효과🎯</span></div> -->
                <p class="srch-product__detail__desc">구직자 활동이 많은 다수의 맞춤 공고 영역에서 공고 타겟팅 노출</p>
                <div class="srch-product__detail__price">
                    <div class="srch-product__detail__price__option">
                        <!-- <div class="datepicker"><label class="datepicker__label">시작일</label>
                            <div class="dp__main dp__theme_light">
                                <div>
                                   
                                    <div class="dp__input_wrap">
                                       <input class="dp__pointer dp__input_readonly dp__input dp__input_icon_pad dp__input_reg" inputmode="none" placeholder="" autocomplete="off" aria-label="Datepicker input">
                                       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" fill="currentColor" aria-hidden="true" class="dp__icon dp__input_icon dp__input_icons">
                                            <path d="M29.333 8c0-2.208-1.792-4-4-4h-18.667c-2.208 0-4 1.792-4 4v18.667c0 2.208 1.792 4 4 4h18.667c2.208 0 4-1.792 4-4v-18.667zM26.667 8v18.667c0 0.736-0.597 1.333-1.333 1.333 0 0-18.667 0-18.667 0-0.736 0-1.333-0.597-1.333-1.333 0 0 0-18.667 0-18.667 0-0.736 0.597-1.333 1.333-1.333 0 0 18.667 0 18.667 0 0.736 0 1.333 0.597 1.333 1.333z"></path>
                                            <path d="M20 2.667v5.333c0 0.736 0.597 1.333 1.333 1.333s1.333-0.597 1.333-1.333v-5.333c0-0.736-0.597-1.333-1.333-1.333s-1.333 0.597-1.333 1.333z"></path>
                                            <path d="M9.333 2.667v5.333c0 0.736 0.597 1.333 1.333 1.333s1.333-0.597 1.333-1.333v-5.333c0-0.736-0.597-1.333-1.333-1.333s-1.333 0.597-1.333 1.333z"></path>
                                            <path d="M4 14.667h24c0.736 0 1.333-0.597 1.333-1.333s-0.597-1.333-1.333-1.333h-24c-0.736 0-1.333 0.597-1.333 1.333s0.597 1.333 1.333 1.333z"></path>
                                        </svg>
                                       
                                       
                                    </div>
                                </div>
                               
                            </div>
                        </div> -->
                       <!--  <div class="srch-product__detail__price__option__period"><select class="select-box">
                                <option value="3">3일</option>
                                <option value="5">5일 (+2일)</option>
                                <option value="7">7일 (+3일)</option>
                                <option value="10">10일 (+4일)</option>
                                <option value="14">14일 (+7일)</option>
                                <option value="21">21일 (+9일)</option>
                            </select>
                           
                        </div> -->
                        <div class="srch-product__detail__price__option__days">
                            <!---->
                        </div>
                    </div>
                    <div class="purchase">
                    		<span class="purchase__price--primary"> 
                               <strong>500,000원</strong></span>
                               <button type="button" class="btn btn--action--outline btn--large"> 상품 구매 </button></div>
                </div>
            </div>
        </div>
        <div class="srch-product" tabindex="0" role="region" arai-label="추천업 상품">
            <div class="product-thumbnail"><img src="https://www.saraminimage.co.kr/sri/billing/products/img_up_2.png" alt=""></div>
            <div class="srch-product__detail">
                <div class="srch-product__detail__title"><a href="">최고</a>
                    <div class="product-renewal-tooltip"><strong class="imgAdvrt_period_red">5일</strong>
					</div>
                </div>
              
               <!--  <div class="srch-product__detail__badge">
                
                 <span class="badge badge--h24 badge--benefit">첫구매할인</span><span class="badge badge--h24 badge--recommend">타겟팅효과🎯</span></div> -->
                <p class="srch-product__detail__desc">구직자 활동이 많은 다수의 맞춤 공고 영역에서 공고 타겟팅 노출</p>
                <div class="srch-product__detail__price">
                    <div class="srch-product__detail__price__option">
                        <!-- <div class="datepicker"><label class="datepicker__label">시작일</label>
                            <div class="dp__main dp__theme_light">
                                <div>
                                   
                                    <div class="dp__input_wrap">
                                       <input class="dp__pointer dp__input_readonly dp__input dp__input_icon_pad dp__input_reg" inputmode="none" placeholder="" autocomplete="off" aria-label="Datepicker input">
                                       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" fill="currentColor" aria-hidden="true" class="dp__icon dp__input_icon dp__input_icons">
                                            <path d="M29.333 8c0-2.208-1.792-4-4-4h-18.667c-2.208 0-4 1.792-4 4v18.667c0 2.208 1.792 4 4 4h18.667c2.208 0 4-1.792 4-4v-18.667zM26.667 8v18.667c0 0.736-0.597 1.333-1.333 1.333 0 0-18.667 0-18.667 0-0.736 0-1.333-0.597-1.333-1.333 0 0 0-18.667 0-18.667 0-0.736 0.597-1.333 1.333-1.333 0 0 18.667 0 18.667 0 0.736 0 1.333 0.597 1.333 1.333z"></path>
                                            <path d="M20 2.667v5.333c0 0.736 0.597 1.333 1.333 1.333s1.333-0.597 1.333-1.333v-5.333c0-0.736-0.597-1.333-1.333-1.333s-1.333 0.597-1.333 1.333z"></path>
                                            <path d="M9.333 2.667v5.333c0 0.736 0.597 1.333 1.333 1.333s1.333-0.597 1.333-1.333v-5.333c0-0.736-0.597-1.333-1.333-1.333s-1.333 0.597-1.333 1.333z"></path>
                                            <path d="M4 14.667h24c0.736 0 1.333-0.597 1.333-1.333s-0.597-1.333-1.333-1.333h-24c-0.736 0-1.333 0.597-1.333 1.333s0.597 1.333 1.333 1.333z"></path>
                                        </svg>
                                       
                                       
                                    </div>
                                </div>
                               
                            </div>
                        </div> -->
                       <!--  <div class="srch-product__detail__price__option__period"><select class="select-box">
                                <option value="3">3일</option>
                                <option value="5">5일 (+2일)</option>
                                <option value="7">7일 (+3일)</option>
                                <option value="10">10일 (+4일)</option>
                                <option value="14">14일 (+7일)</option>
                                <option value="21">21일 (+9일)</option>
                            </select>
                           
                        </div> -->
                        <div class="srch-product__detail__price__option__days">
                            <!---->
                        </div>
                    </div>
                    <div class="purchase">
                    		<span class="purchase__price--primary"> 
                               <strong>600,000원</strong></span>
                               <button type="button" class="btn btn--action--outline btn--large"> 상품 구매 </button></div>
                </div>
            </div>
        </div>
        </div>
        <div class="boxinfo-link"><a href=""><span>합리적인 비용으로 광고 효과를 극대화하고 싶다면?</span><span>모바일 지면 광고를 둘러보세요</span></a></div>
        <div>
            <!---->
            <div class="box-product-info">
                <div class="box__title"><strong class="title">상품 구매 혜택</strong></div>
                <div class="box__benefit">
                    <div class="box__benefit__item"><strong>첫 구매 페이백</strong>
                        <p> 채용광고 첫 구매 시<br> 결제금액 100% S-Point로 적립 </p>
                    </div>
                    <div class="box__benefit__item"><strong>S-Point 5% 적립</strong>
                        <p> 10만원 이상 결제 시<br> 결제금액의 5% 포인트 적립 </p>
                    </div>
                    <div class="box__benefit__item"><strong>광고 구매당일 무료</strong>
                        <p> 채용광고를 구매한 당일은<br> 무료로 광고가 적용됩니다 </p>
                    </div>
                    <div class="box__benefit__item"><strong>광고 주말 1일 무료</strong>
                        <p> 채용광고를 주말 포함하여<br> 구매할 경우 1일 추가제공 </p>
                    </div>
                </div>
            </div>
            <div class="box-product-notice"><strong class="title">유의사항</strong>
                <ul class="notice__list">
                    <li>[주의] 유료 상품을 이용 중이신 경우, 공고를 조기 마감하더라도 남은 기간에 대한 차액은 환불되지 않습니다.</li>
                    <li>검색 키워드, 검색 플러스 상품은 공고와 연관된 키워드를 대상으로만 구매할 수 있습니다.</li>
                    <li>헤드헌팅, 인재파견 기업이 랭크업, 강조효과 상품을 구매하는 경우, '헤드헌팅 채용정보', '인재파견 채용정보'에서만 노출됩니다 (모바일 상품의 경우, 일부 페이지에서 노출 제한이 있을 수 있습니다.) </li>
                    <li>기업로고가 등록되어 있지 않을 경우 로고 영역에 기본 아이콘이 적용됩니다.</li>
                    <li>첫 구매 페이백: 채용광고 상품 구매 시 제공되며, 사업자번호 기준 최초 1회 결제에 한해 적용됩니다.</li>
                    <li>S-Point 적립: 인적성검사, 공고 즉시등록, 채용 홈페이지 상품은 포인트 적립 대상에서 제외됩니다.</li>
                    <li>광고 구매 당일 무료: 광고 시작일을 익일 이후로 예약 구매하는 경우 혜택이 제공되지 않습니다.</li>
                    <li>광고 주말 1일 무료 혜택: 무료 구매 시에는 제공되지 않으며, 기간 추가 제공 혜택과 중복 제공되지 않습니다. 주말이 두 번 이상 포함되더라도 혜택은 최대 1일만 제공됩니다.</li>
                    <li>상품 혜택: 채용광고 추가 상품 무료 제공 혜택은 유료 구매 시에만 제공됩니다.</li>
                </ul>
            </div>
            <div class="box-product-notice"><strong class="title">이용문의</strong>
                <ul class="notice__list">
                    <li> 문의 방법: 02-2025-4733 / FAX) 02-6937-0039 (대표), 02-6937-0035 (세금계산서) / help@saramin.co.kr </li>
                    <li>상담가능시간: 평일 09:00~19:00 / 토, 일, 공휴일 휴무</li>
                    <li> 결제수단: 신용카드 / 휴대폰 / 실시간 계좌이체 / 가상계좌 / 네이버페이 / 카카오페이 / 토스페이 / 페이코 / S-포인트 </li>
                </ul>
            </div>
        </div>
    </section>
</div>
</div>