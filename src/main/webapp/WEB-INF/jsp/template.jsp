<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
      <meta name="generator" content="Hugo 0.88.1">
      <meta name="theme-color" content="#7952b3">

      <title><tiles:getAsString name="title" /></title>
      
      <tiles:insertAttribute name="preScript"/>
      
      <style>
         .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
         }
         
         @media ( min-width : 768px) {
            .bd-placeholder-img-lg {
               font-size: 3.5rem;
            }
         }
      </style>
      
      <!-- CSS 스타일 styles template -->
      <link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/tiles.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/pattern.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/member_join.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/layout.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/search_panel.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/jobs-recruit.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/layout.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/contents.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_home.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/index-abfa9eb3.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_etc.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_jobs.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/5ebd584ffc96212e.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_resume.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/resume_2023.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_interview.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_apply.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/help.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/components.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/jobs-public.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/company_view.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/sticky_assist.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/recruit.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/my_career_mileage.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/company_qna.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/owl.theme.default.min.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/mtc-lounge-sv-202309071428.css" rel="stylesheet">
<!-- 잠시 오류로 주석처리함! -->
      <link href="<%=request.getContextPath()%>/resources/css/company_info.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/jobs-view.css" rel="stylesheet">
      
      <!-- CSS 스타일/ custom -->
      <link href="<%=request.getContextPath()%>/resources/css/custom/les.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/custom/kjh.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/custom/ssy.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/custom/lkw.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/custom/kth.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/custom/ksw.css" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/resources/css/custom/pjy.css" rel="stylesheet">

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   </head>
   <body class="d-flex flex-column vh-100" data-context-path="${pageContext.request.contextPath }">
      <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
         <tiles:insertAttribute name="headerMenu"/>
      </header>
   
      <div class="container-fluid" style="padding:0;">
         <div class="row">
            <main style="padding:0;">
               <!-- Main Content Area start -->
                  <tiles:insertAttribute name="content"/>
            </main>
               <!-- Main Content Area end -->
         </div>
      </div>
   
      <footer class="footer mt-auto">
         <tiles:insertAttribute name="footer"/>
      </footer>

      <tiles:insertAttribute name="postScript"/>      
   </body>
</html>