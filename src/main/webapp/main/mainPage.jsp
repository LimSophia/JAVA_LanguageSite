
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>언어 학습 | Home Page</title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets_main/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets_main/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets_main/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets_main/img/favicons/favicon.png">
    <link rel="manifest" href="assets_main/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets_main/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets_main/css/theme.css" rel="stylesheet" />

  </head>


  <body>

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light sticky-top" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand" href="mainPage.jsp"><img src="assets_main/img/logo.svg" height="31" alt="logo" /></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item"><a class="nav-link" aria-current="page" href="#feature">Product</a></li>
              <li class="nav-item"><a class="nav-link" aria-current="page" href="#validation">Customers</a></li>
              <li class="nav-item"><a class="nav-link" aria-current="page" href="#superhero">Pricing</a></li>
              <li class="nav-item"><a class="nav-link" aria-current="page" href="#marketing">Resources</a></li>
            </ul>
            <div class="d-flex ms-lg-4"><a class="btn btn-secondary-outline" href="./auth-login-basic.jsp">로그인</a><a class="btn btn-warning ms-3" href="./auto-register-basic.jsp">회원가입</a></div>
          </div>
        </div>
      </nav>
      <section class="pt-7">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-md-start text-center py-6">
              <h1 class="mb-4 fs-9 fw-bold">언어 마스터 <br> Language Master</h1>
              <p class="mb-6 lead text-secondary">언어 실력 향상을 위해 지금 우리 사이트를 이용해보세요!<br class="d-none d-xl-block" />언어 스킬 향상을 원하시나요?<br class="d-none d-xl-block" />우리 사이트는 당신을 위한 완벽한 온라인 학습 플랫폼입니다!</p>
              <div class="text-center text-md-start"><a class="btn btn-warning me-3 btn-lg" href="./auth-login-basic.jsp" role="button">시작!</a><a class="btn btn-link text-warning fw-medium" href="https://www.youtube.com/watch?v=gcV_25tn33k" role="button" data-bs-toggle="modal" data-bs-target="#popupVideo"><span class="fas fa-play me-2"></span>홍보 영상 보러가기</a></div>
            </div>
            <div class="col-md-6 text-end"><img class="pt-7 pt-md-0 img-fluid" src="assets_main/img/hero/hero-img.png" alt="" /></div>
          </div>
        </div>
      </section>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pt-5 pt-md-9 mb-6" id="feature">

        <div class="bg-holder z-index--1 bottom-0 d-none d-lg-block" style="background-image:url(assets_main/img/category/shape.png);opacity:.5;">
        </div>
        <!--/.bg-holder-->



    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets_main/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;family=Volkhov:wght@700&amp;display=swap" rel="stylesheet">
  </body>


</html>