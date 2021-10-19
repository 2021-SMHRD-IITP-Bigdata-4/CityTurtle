<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Purple Buzz - about Page</title>
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
   
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->
<style>
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 700px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
	.container.py-4{
		margin: 0 auto;
		width : 553px;
	}

</style>

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
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="service.do">서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="competition.do">경쟁</a>
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
                    <a class="nav-link text-primary" href="#">다운로드&nbsp<i class='bx bx-downvote bx-sm bx-fade-down-hover text-primary'></i></a>
                    <a class="nav-link" href="login.do"><i class='bx bx-user-circle bx-sm text-primary'></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->


    <!-- Start Banner Hero -->
    <section class="bg-light w-100">
        <div class="container">
            <div class="row d-flex align-items-center py-5">
                <div class="col-lg-6 text-start">
                    <h1 class="h2 py-5 text-primary typo-space-line">About Us</h1>
                    <p class="light-300">
                        Vector illustration credit goes to <a rel="nofollow" href="http://freepik.com/" target="_blank">FreePik</a> website. Purple Buzz is provided by TemplateMo. Lorem ipsum dolor sit amet, consectetur.
                    </p>
                </div>
                <div class="col-lg-6">
                    <img src="./resources/img/banner-img-02.svg">
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Hero -->


    <!-- Start Team Member -->
    <section class="container py-5">
        <div class="pt-5 pb-3 d-lg-flex align-items-center gx-5">

            <div class="col-lg-3">
                <h2 class="h2 py-5 typo-space-line">Our Team</h2>
                <p class="text-muted light-300">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                </p>
            </div>

            <div class="col-lg-9 row">
                <div class="team-member col-md-4">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-01.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>John Doe</li>
                        <li>Business Development</li>
                    </ul>
                </div>
                <div class="team-member col-md-4">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-02.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>Jane Doe</li>
                        <li>Media Development</li>
                    </ul>
                </div>
                <div class="team-member col-md-4">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-03.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>Sam</li>
                        <li>Developer</li>
                    </ul>
                </div>
            </div>

        </div>
    </section>
    <!-- End Team Member -->

    <!-- Start Our Partner -->
    <section class="bg-secondary py-3">
        <div class="container py-5">
            <h2 class="h2 text-white text-center py-5">Our Partner</h2>
            <div class="row text-center">
                <div class="col-md-3 mb-3">
                    <div class="card partner-wap py-5">
                        <a href="#"><i class='display-1 text-white bx bxs-buildings'></i></a>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card partner-wap py-5">
                        <a href="#"><i class='display-1 bx text-white bxs-check-shield bx-lg'></i></a>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card partner-wap py-5">
                        <a href="#"><i class='display-1 text-white bx bxs-bolt-circle'></i></a>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card partner-wap py-5">
                        <a href="#"><i class='display-1 text-white bx bxs-spa'></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Our Partner-->

    <!-- Start Progress -->
    <section class="bg-white py-5">
        <div class="container my-4">

            <h1 class="creative-heading h2 pb-3">Creative & Make Perfect</h1>

            <div class="creative-content row py-3">
                <div class="col-md-5">
                    <p class="text-muted col-lg-8 light-300">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida Risus.
                    </p>
                </div>
                <div class="creative-progress col-md-7">

                    <div class="row mt-4 mt-sm-2">
                        <div class="col-6">
                            <h4 class="h5">Development</h4>
                        </div>
                        <div class="col-6 text-right">66%</div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                    <div class="row mt-4 mt-sm-2">
                        <div class="col-6">
                            <h4 class="h5">Design</h4>
                        </div>
                        <div class="col-6 text-right">90%</div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>


                    <div class="row mt-4 mt-sm-2">
                        <div class="col-6">
                            <h4 class="h5">Marketing</h4>
                        </div>
                        <div class="col-6 text-right">74%</div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 74%" aria-valuenow="74" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- End Progress -->

    <!-- Start Choice -->
    <section class="why-us banner-bg bg-light">
        <div class="container my-4">
            <div class="row">
                <div class="banner-img col-lg-5">
                    <img src="./resources/img/work.svg" class="rounded img-fluid" alt="">
                </div>
                <div class="banner-content col-lg-7 align-self-end">
                    <h2 class="h2 pb-3">Why you choose us?</h2>
                    <p class="text-muted pb-5 light-300">
                    You are allowed to download and use this Purple Buzz template for your websites. You are <strong>not allowed</strong> to re-distribute this template ZIP file on other template websites. It is quite easy to simply copy and repost the ZIP file on any <a rel="nofollow" href="https://www.google.com/search?q=free+css" target="_blank">Free CSS collection</a> websites.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- End Choice -->

    <!-- Start Aim -->
    <section class="banner-bg bg-white py-5">
        <div class="container my-4">
            <div class="row text-center">

                <div class="objective col-lg-4">
                    <div class="objective-icon card m-auto py-4 mb-2 mb-sm-4 bg-secondary shadow-lg">
                        <i class="display-4 bx bxs-bulb text-light"></i>
                    </div>
                    <h2 class="objective-heading h3 mb-2 mb-sm-4 light-300">Our Vision</h2>
                    <p class="light-300">
                        Incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse commodo viverra.
                    </p>
                </div>

                <div class="objective col-lg-4 mt-sm-0 mt-4">
                    <div class="objective-icon card m-auto py-4 mb-2 mb-sm-4 bg-secondary shadow-lg">
                        <i class='display-4 bx bx-revision text-light'></i>
                    </div>
                    <h2 class="objective-heading h3 mb-2 mb-sm-4 light-300">Our Mission</h2>
                    <p class="light-300">
                        Eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam quis.
                    </p>
                </div>

                <div class="objective col-lg-4 mt-sm-0 mt-4">
                    <div class="objective-icon card m-auto py-4 mb-2 mb-sm-4 bg-secondary shadow-lg">
                        <i class="display-4 bx bxs-select-multiple text-light"></i>
                    </div>
                    <h2 class="objective-heading h3 mb-2 mb-sm-4 light-300">Our Goal</h2>
                    <p class="light-300">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        sed do eiusmod tempor.
                    </p>
                </div>

            </div>
        </div>
    </section>
    <!-- End Aim -->

    <!-- Start Contact -->
    <section class="banner-bg bg-light py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mx-auto my-4 p-3">
                    <form action="#" method="get"><h1 class="h2 text-center">Stay up to date with us</h1>
                    <div class="input-group py-3">
                    
                        <input name="email" type="text" class="form-control form-control-lg rounded-pill rounded-end" id="email" placeholder="Your Email" aria-label="Your Email">
                        <button class="btn btn-secondary text-white btn-lg rounded-pill rounded-start px-lg-4" type="submit">Subsribe</button>
                    </div>
                    <p class="text-center light-300">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt labore et dolore magna aliqua.</p>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact -->


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

</body>

</html>