<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="list_review">
	<div class="box_review open" data-ga-label="1">
		<div class="view_title">
			<strong class="txt_company">  <span class="result pass">${intr.intervPass }</span>
			</strong> <span class="txt_date">${intr.intervWdate }</span>
			<ul class="info_interview">
				<li></li>				
			</ul>
			<button type="button" class="spr_review btn_view">
										<span class="blind">후기상세보기</span>
									</button>			
		</div>
		<div class="view_cont">
			<div class="info_emoticon">
				<dl class="review">
					<dt>전반적 평가</dt>
					<dd class="spr_review smile">${intr.intervOvrlEvltn }</dd>
				</dl>
				<dl class="review difficulty">
					<dt>난이도</dt>
					<dd class="spr_review">${intr.intervDifficulty }</dd>
				</dl>
				<dl class="review result">
					<dt>결과</dt>
					<dd class="spr_review smile">${intr.intervPass }</dd>
				</dl>
			</div>
			<div class="info_view">
				<strong class="tit_view">면접 유형</strong>
				<ul class="list_item">
					<li>${intr.interviewTypical }</li>					
				</ul>
			</div>
			<div class="info_view">
				<strong class="tit_view">면접 인원</strong>
				<ul class="list_item">
					<li>${intr.intervPersonnel }</li>
				</ul>
			</div>
			<div class="info_view">
				<strong class="tit_view">전형 및 면접 진행 방식</strong>
				<p class="txt_desc">${intr.intervProcess }</p>
			</div>
			<div class="info_view">
				<strong class="tit_view">면접 질문</strong>
				<ul class="list_question">
					<li>${intr.intervQuestion }</li>					
				</ul>
			</div>
			<div class="info_view">
				<strong class="tit_view">TIP 및 특이사항</strong>
				<p class="txt_desc">${intr.intervTip }</p>
			</div>
		</div>
	</div>
</div>
