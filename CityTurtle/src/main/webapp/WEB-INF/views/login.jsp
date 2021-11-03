<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value ="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>CityTurtle - Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="resources/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">
    <!-- Load Require CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font CSS -->
    <link href="resources/css/boxicon.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- Load Tempalte CSS -->
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/custom.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" integrity="sha384-tKLJeE1ALTUwtXlaGjJYM3sejfssWdAaWR2s97axw4xkiAdMzQjtOjgcyw0Y50KU" crossorigin="anonymous">
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  	<script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="80396787821-o4lfgcmi7r7562k4i69h67g37okgp821.apps.googleusercontent.com">  	
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->

<style>
	.bg-light{
		height:553px;
		padding-top:55px;
		padding-bottom:75px;
	}
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 500px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
	.container.py-4{
		margin: 0 auto;
		width : 503px;
	}
	.row.align-items-center.justify-content-between{
		padding-bottom:20px;
	}
	.form-check{
		padding-top:8px; padding-bottom:8px;
	}
	.otherButton.text-center{
		padding-top:8px; padding-bottom:8px;
	}

	
</style>


<script>
	function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		  
		  var id_token = googleUser.getAuthResponse().id_token;
		  var xhr = new XMLHttpRequest();
		  xhr.open('POST', 'http://localhost:8081/web/callbackGoogle.do');
		  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		  xhr.onload = function() {
		    console.log('Signed in as: ' + xhr.responseText);
		  };
		  xhr.send('idtoken=' + id_token);
		  
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('Name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		}
	
	  function signOut() {
		    var auth2 = gapi.auth2.getAuthInstance();
		    auth2.signOut().then(function () {
		      console.log('User signed out.');
		    });
		  }
</script>

</head>

<body>
    <!-- Header -->
    <nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand h1" href="index.do">
                <img src="resources/img/logoCTCT4.png"/>
                <span class="text-dark h4">도시</span> <span class="text-primary h4">거북</span>
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
                <div class="flex-fill mx-xl-5 mb-2">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" onclick="service()">서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="Event.do">이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="boardList.do">공지</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <a class="nav-link" href="download.do">다운로드&nbsp<i class='bx bx-downvote bx-sm bx-fade-down-hover text-primary'></i></a>
                    <a class="nav-link" href="userUpdate.do"><i class='bx bx-cog bx-sm text-primary'></i></a>
                  <c:if test="${signIn == null}">
                    <a class="nav-link" href="login.do"><i class='bx bx-user-circle bx-sm text-primary'></i></a>
                  </c:if>
                  <c:if test="${signIn != null}">
                  	<a class="nav-link" href="logout.do">로그아웃</a>
                  </c:if>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->


    <!-- Start Banner Hero -->
    <section class="bg-light">
        <div class="container py-4">
            <div class="row align-items-center justify-content-between">
                <a class="navbar-brand h1 text-center" href="index.do">
                    <span class="text-dark h4">도시</span> <span class="text-primary h4">거북</span>                 
                </a>
            </div>
          <c:if test="${signIn == null}">
            <form name="loginForm" action="${cpath}/signIn.do" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="mb_id" id="mb_id" placeholder="아이디">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="mb_pwd" id="mb_pwd" placeholder="비밀번호">
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label text-secondary" for="flexCheckDefault">
                      로그인 상태 유지
                    </label>
                </div>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary btn-lg" id="login" type="button" onclick="loginCheck()">로그인</button>
                </div>
            </form>
                <div class="otherButton text-center">
                    <span class="text-secondary">다른 계정으로 로그인</span>
                    <button type ="button" class = "btn" onclick="location.href='${urlNaver}'"><img src='./resources/img/logoNaver5.png'></button>
                    <button type ="button" class = "btn" onclick="location.href='${urlKakao}'"><img src='./resources/img/logoKakao5.png'></button>
                    <button type ="button" class = "btn"><img src='./resources/img/logoGoogle4.png'></button>
                </div>
                <div class="g-signin2" data-onsuccess="onSignIn"></div>
                <a href="#" onclick="signOut();">Sign out</a>
                <div class="row">
                  <div class="col-lg-6 col-sm-12 text-lg-start text-center">
                      <button type="button" class="btn text-secondary" onclick="location.href='signUp.do'">회원가입</button>
                  </div>
                  <div class="col-lg-6 col-sm-12 text-lg-end text-center">
                      <button type="button" class="btn text-secondary">아이디/비밀번호 찾기</button>
                  </div>
                </div>
              </c:if>
        </div>
    </section>
    <!-- End Banner Hero -->

    <!-- Start Footer -->
    <footer class="bg-secondary pt-4">
        <div class="container">
            <div class="row py-4">

                <div class="col-lg-3 col-12 align-left">
                    <a class="navbar-brand" href="index.do">                     
                        <span class="text-light h5">도시</span> <span class="text-light h5 semi-bold-600">거북</span>
                    </a>
                    <p class="text-light my-lg-4 my-2">
                        (사)스마트인재개발원광주광역시 남구  <br>송암로60 광주CGI센터 2층대표자 : 차준섭 사업자등록번호 : 178-82-00065 <br>
                        TEL. 062-655-3509
                    </p>
                    <ul class="list-inline footer-icons light-300">
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="http://facebook.com/">
                                <i class="bi bi-facebook" style="font-size: 30px;"></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.instagram.com/">
                                <i class="bi bi-instagram" style="font-size: 30px; margin-left: 15%;"></i>

                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.youtube.com/">
                                <i class="bi bi-youtube" style="font-size: 30px; margin-left: 30%;"></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.twitter.com/">
                                <i class="bi bi-twitter" style="font-size: 30px; margin-left: 45%;"></i>
                            </a>
                        </li>

                    </ul>
                </div>
                

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4" style="margin-left: 15%;">
                    <h3 class="h4 pb-lg-3 text-light light-300" >바로가기</h2>
                        <ul class="list-unstyled text-light light-300">
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light" href="service.do">서비스</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="competition.do">경쟁</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="Event.do">이벤트</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i></i><a class="text-decoration-none text-light py-1" href="boardList.do">공지</a>
                            </li>
                            
                        </ul>
                </div>

                

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4" style="margin-left: 10%;">
                    <h2 class="h4 pb-lg-3 text-light light-300">고객센터</h2>
                    <ul class="list-unstyled text-light light-300">
                        <li class="pb-2">
                            <i class='bx-fw bx bx-phone bx-xs'></i><a class="text-decoration-none text-light py-1" href="tel:062-655-3509">062-655-3509</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bx-mail-send bx-xs'></i><a class="text-decoration-none text-light py-1" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="w-100 bg-primary py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-lg-6 col-sm-12">
                        <p class="text-lg-start text-center text-light light-300">
                           
                        </p>
                    </div>
                    <div class="col-lg-6 col-sm-12">
                       
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->


    <!-- Bootstrap -->
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="resources/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="resources/js/custom.js"></script>
	<script>
  	 
	// 아이디 비밀번호 입력 안 한 경우
/* 	$("#login").on("click",function(){
     	let mb_id = $("#mb_id").val();
    	let mb_pwd = $("#mb_pwd").val();
    	 
		if(mb_id == ""){
			alert("아이디를 입력해주세요.");			 
		} else if (mb_pwd == ""){
			alert("비밀번호를 입력해주세요.");			 		 
	 	}

    }); */
    
    function loginCheck(){
    	let loginForm = document.loginForm;
    	let mb_id = document.getElementById('mb_id').value;
    	let mb_pwd = document.getElementById('mb_pwd').value;
    	
    	if(mb_id == ""){
    		alert("아이디를 입력해주세요.");
    	} else if (mb_pwd == ""){
    		alert("비밀번호를 입력해주세요.");
    	} else {
    		loginForm.submit();
    	}
    }
	
	// 서비스 페이지 알림
	function service(){
		let signIn = "${signIn}";
		if (signIn == ""){
			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
			location.href="${cpath}/login.do";
		} else {
			location.href="${cpath}/service.do"
		}
	}

	</script>
</body>

</html>