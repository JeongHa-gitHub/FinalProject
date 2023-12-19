


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>



<div class="pointCharge">
<div class="LayoutWrapper-module_inner__1yxpS LayoutWrapper-module_type-full-height__2JoCo ChargeHome_article__2dvC_">
    <div class="ChargeContents_article__isSea">
        <div class="ChargeContents_input-area__tQ45_">
            <div class="Target_article__Xhj_7"><span class="Target_name__8LHwW"><strong class="Target_inner__BofoY Target_ellipsis__TQ_8f">내일을 JOB자 </strong>포인트로</span></div>
            <div class="ChargeContents_amount-input__KPzlU">
                <div class="AmountInput_article__GTnWw">
                    <div class="AmountInput_amount-input__FgkWh"><input type="text" placeholder="충전할 금액을 입력해 주세요." data-nclicks="chg.amt" id="moneyinsert"></div>
               		<input type="hidden" value="<%=(String)session.getAttribute("authId")%>" id="authId"/>
                </div>
                <div class="AmountShortcut_article__LIBKS">
                    <ul class="AmountShortcut_shortcut-list__B_T4s">
                        <li class="AmountShortcut_item__bkmvX">
                       		<button type="button" class="AmountShortcut_button-amount__pJQ5y" data-nclicks="chg.easyclick1" id="tenthousand" onclick="thousand_onclick()" value="10000">+1만
                      		</button>
                        </li>
                        <li class="AmountShortcut_item__bkmvX">
                        	<button type="button" class="AmountShortcut_button-amount__pJQ5y" data-nclicks="chg.easyclick5" id="fivethousand" onclick="fivethousand_onclick()" value="50000">+5만
                        	</button>
                        </li>
                        <li class="AmountShortcut_item__bkmvX">
                        	<button type="button" class="AmountShortcut_button-amount__pJQ5y" data-nclicks="chg.easyclick10" id="hundredthousand" onclick="tenthousand_onclick()" value="100000">+10만
                        	</button>
                        </li>
                        <li class="AmountShortcut_item__bkmvX">
                        	<button type="button" class="AmountShortcut_button-amount__pJQ5y" data-nclicks="chg.easyclick100" id="onemillion" onclick="onemillion_onclick()" value="1000000">+100만
                        	</button>
                        </li>
                    </ul>
                </div>
            <div class="Target_article__Xhj_7_paymentMethod"><span class="Target_name__8LHwW_payment"><strong class="Target_inner__BofoY Target_ellipsis__TQ_8f">결제 수단 </strong>선택하기</span></div>
                  	<div class="bankSelect">
                  		<div class="payment_radio"><input type="radio" id="creditcard" name="payment" value="creditcard"/><label id="paymentcheck" for="creditcard">신용카드</label></div>
                  		<div class="payment_radio"><input type="radio" id="kakaopay" name="payment" value="kakaopay"/><label id="paymentcheck" for="kakaopay">카카오페이</label></div>
                  		<div class="payment_radio"><input type="radio" id="tosspay" name="payment" value="tosspay"/><label id="paymentcheck" for="tosspay">토스</label></div>
                  		<div class="payment_radio"><input type="radio" id="mutongjang" name="payment" value="mutongjang"/><label id="paymentcheck" for="mutongjang">무통장 입금</label></div>
                  	</div>
            </div>
            <div class="ChargeContents_button-area__z2KOp"><button type="button" id="chargeBtn" onclick="chargeBtn_onclick()" class="CommonButton_button__gyvBY CommonButton_type-gray__XRzwZ" data-nclicks="chg.confirm">충전하기</button></div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/kjh/PointCharge.js"/>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>





