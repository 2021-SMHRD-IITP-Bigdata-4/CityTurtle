<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Purple Buzz - competition Page</title>
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
	.col-md-5{
		width :300px;
	}
	.creative-progress.col-md-7{
		padding-top:50px;
	}
	.form-select{
		width:300px;
	}
	.col-lg-12.row{
		width:1000px;
		margin:0 auto;
	}
	.invite{
		padding-top:20px;
		padding-bottom:20px;
	}
	.form-group{
		width:1000px;
		margin:0 auto;
	}
	.form-group.betting{
		width:700px;
	}
	.start{
		padding-top:20px;
	}
	.col-lg-4.col-sm-12{
		
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


    <!-- Start Team Member -->
    <section class="container py-5">
        <div class="container">
            <div class="row d-flex align-items-center py-5">
                <div class="text-start">
                    <h2 class="h2 py-5 typo-space-line">단체전</h2>					               
                </div>
                
            <div class="col-lg-12 row">
                <div class="team-member col-md-3">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-01.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>접시빌런</li>
                        <li>Business Development</li>
                    </ul>
                </div>
                <div class="team-member col-md-3">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-02.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>역베올인건다</li>
                        <li>Media Development</li>
                    </ul>
                </div>
                <div class="team-member col-md-3">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-03.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>새우잡이노예</li>
                        <li>Developer</li>
                    </ul>
                </div>
                <div class="team-member col-md-3">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-03.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>새우잡이노예2</li>
                        <li>Developer</li>
                    </ul>
                </div>
            </div>
                
 				<div class="form-group">			    				  
 				  <div class="invite">
 				    <button type="button" class="btn btn-primary">초대하기</button>
				  </div>
				  <div>
					<table class="table table-hover">
					  <thead>
					    <tr>
					      <th scope="col">User</th>
					      <th scope="col">Betting</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">접시빌런</th>
					      <td>스타벅스 아메리카노</td>
					    </tr>
					    <tr class="table-light">
					      <th scope="row">새우잡이노예</th>
					      <td>칙촉</td>
					    </tr>
					    <tr>
					      <th scope="row">역베올인건다</th>
					      <td>에어팟pro</td>
					    </tr>					    
					  </tbody>
					</table>
 				  </div>
 				
				  <div class="form-group betting">
   				    <label class="form-label mt-4">베팅</label>
				    <div class="input-group mb-3">
				      <input type="text" class="form-control" placeholder="베팅할 상품을 등록하세요" aria-label="Recipient's username" aria-describedby="button-addon2">
				      <button class="btn btn-primary" type="button" id="button-addon2">베팅하기</button>
				    </div>
				  </div>
				<div class="row">
  				  <div class="col-lg-4 col-sm-12">					
					  <label for="exampleSelect1" class="form-label">종목</label>
					  <select class="form-select" id="exampleSelect1">
					    <option>거북목+눈깜빡</option>
					    <option>거북목</option>
					    <option>눈깜빡</option>
					  </select>
				  </div>					
				  <div class="col-lg-4 col-sm-12">
					<label class="form-label">시작</label>
					<input type="datetime-local" class="form-control">
				  </div>
				  <div class="col-lg-4 col-sm-12">
					<label class="form-label">종료</label>
					<input type="datetime-local" class="form-control">			
				  </div>
				</div>     
				<div class="pt-5 pb-3 d-lg-flex align-items-center gx-5"></div>
				<ul id="nav3" class="nav justify-content-end">
				<div class = "start">   
                  <button type="button" class="btn btn-primary btn-lg">참가하기</button>
            	</div>
            	</ul>
              </div>
            </div>
        </div>        
    </section>
    <!-- End Team Member -->



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
    <!-- JavaScript -->
	<script>

	</script>
</body>

</html>