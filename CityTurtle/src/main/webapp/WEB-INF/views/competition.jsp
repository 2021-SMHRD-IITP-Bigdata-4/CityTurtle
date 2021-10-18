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
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="index.do">서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="competition.do">경쟁</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="work.do">이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="pricing.do">공지</a>
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
                <div class="text-start">
                    <h1 class="h2 py-5 text-primary typo-space-line">개인전</h1>					               
                </div>
                
             <div class="col-lg-12 row">
                <div class="team-member col-md-4">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-01.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>접시빌런</li>
                        <li>Business Development</li>
                    </ul>
                </div>
                <div class="team-member col-md-4">
 					<h2 class="h2 text-primary text-center py-5">VS</h2>
                </div>
                <div class="team-member col-md-4">
                    <img class="team-member-img img-fluid rounded-circle p-4" src="./resources/img/team-03.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>새우잡이노예</li>
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
					      <th scope="row">새우잡이노예</th>
					      <td>스타벅스 아메리카노</td>
					    </tr>

					    <tr class="table-light">
					      <th scope="row">접시빌런</th>
					      <td>칙촉</td>
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
				<div class="row date">
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
				        
				<div class="start">   
                  <button type="button" class="btn btn-primary btn-lg">시작하기</button>
            	</div>
           	  </div>
            </div>
        </div>
    </section>
    <!-- End Banner Hero -->


    <!-- Start Team Member -->
    <section class="container py-5">
        <div class="pt-5 pb-3 d-lg-flex align-items-center gx-5">




        </div>
        
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
				     
				<div class = "start">   
                  <button type="button" class="btn btn-primary btn-lg">시작하기</button>
            	</div>
              </div>
            </div>
        </div>        
    </section>
    <!-- End Team Member -->

    <!-- Start Aim -->
    <section class="banner-bg bg-light py-5">
        <div class="container my-4">
            <h2 class="h2 text-primary text-center py-5">이달의 거북랭킹 TOP5</h2>    	
            <div class="row text-center">
                <div class="objective col-lg-4">
					<div class="card bg-light mb-3" style="max-width: 20rem;">
					  <div class="card-header">탈거북 (종합 순위)</div>
					  <div class="card-body">
	                    <dl>
							<div>
						  		<dd>
						  		  <span>새우잡이노예</span> 
						  		  <span>78%</span>
						  		</dd>
						  		<dd>
						  		  <span>이리와늑대</span>
						  		  <span>62%</span>
						  		</dd>
						  		<dd>
						  		  <span>접시빌런</span>
						  		  <span>59%</span>
						  		</dd>
						  		<dd>
						  		  <span>26971578</span>
						  		  <span>58%</span>
						  		</dd>
						  		<dd>
						  		  <span>그거참나이스</span>
						  		  <span>57%</span>
						  		</dd>						  		
							</div>
						</dl>
					  </div>
					</div>
                </div>
                

                <div class="objective col-lg-4 mt-sm-0 mt-4">
					<div class="card bg-light mb-3" style="max-width: 20rem;">
					  <div class="card-header">인간화 (거북목 역순위)</div>
					  <div class="card-body">
	                    <dl>
							<div>
						  		<dd>
						  		  <span>새우잡이노예</span> 
						  		  <span>78%</span>
						  		</dd>
						  		<dd>
						  		  <span>이리와늑대</span>
						  		  <span>62%</span>
						  		</dd>
						  		<dd>
						  		  <span>접시빌런</span>
						  		  <span>59%</span>
						  		</dd>
						  		<dd>
						  		  <span>26971578</span>
						  		  <span>58%</span>
						  		</dd>
						  		<dd>
						  		  <span>그거참나이스</span>
						  		  <span>57%</span>
						  		</dd>
						  		
							</div>
						</dl>
					  </div>
					</div>
                </div>

                <div class="objective col-lg-4 mt-sm-0 mt-4">
					<div class="card bg-light mb-3" style="max-width: 20rem;">
					  <div class="card-header">깜빡왕 (눈깜빡 순위)</div>
					  <div class="card-body">
	                    <dl>
							<div>
						  		<dd>
						  		  <span>새우잡이노예</span> 
						  		  <span>78%</span>
						  		</dd>
						  		<dd>
						  		  <span>이리와늑대</span>
						  		  <span>62%</span>
						  		</dd>
						  		<dd>
						  		  <span>접시빌런</span>
						  		  <span>59%</span>
						  		</dd>
						  		<dd>
						  		  <span>26971578</span>
						  		  <span>58%</span>
						  		</dd>
						  		<dd>
						  		  <span>그거참나이스</span>
						  		  <span>57%</span>
						  		</dd>						  		
							</div>
						</dl>
					  </div>
					</div>
           		</div>
      		</div>
      </div>  
    </section>
    <!-- End Aim -->

    <!-- Start Progress -->
    <section class="bg-light py-5">
        <div class="container my-4">

			
            <div class="creative-content row py-3">
                <div class="col-md-5">
                    <img class="team-member-img img-fluid rounded-circle p-4" id="rankId" src="./resources/img/team-01.jpg" alt="Card image">
                    <ul class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
                        <li>접시빌런</li>
                        <li>
                        	<span>다이아</span>
                        	<i class="bx bx-diamond"></i>
                        </li>
                    </ul>
                </div>
                <div class="creative-progress col-md-7">

                    <div class="row mt-4 mt-sm-2">
                        <div class="col-6">
                            <h4 class="h5">종합 승률</h4>
                        </div>
                        <div class="col-6 text-right">59%</div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                    <div class="row mt-4 mt-sm-2">
                        <div class="col-6">
                            <h4 class="h5">거북목</h4>
                        </div>
                        <div class="col-6 text-right">53%</div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>


                    <div class="row mt-4 mt-sm-2">
                        <div class="col-6">
                            <h4 class="h5">눈깜빡</h4>
                        </div>
                        <div class="col-6 text-right">65%</div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 74%" aria-valuenow="74" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- End Progress -->


    <!-- Start Footer -->
    <footer class="bg-secondary pt-4">
        <div class="container">
            <div class="row py-4">

                <div class="col-lg-3 col-12 align-left">
                    <a class="navbar-brand" href="index.html">
                        <i class='bx bx-buildings bx-sm text-light'></i>
                        <span class="text-light h5">도시</span> <span class="text-light h5 semi-bold-600">거북</span>
                    </a>
                    <p class="text-light my-lg-4 my-2">
                        (사)스마트인재개발원광주광역시 남구  <br>송암로60 광주CGI센터 2층대표자 : 차준섭 사업자등록번호 : 178-82-00065 <br>
                        TEL. 062-655-3509
                    </p>
                    <ul class="list-inline footer-icons light-300">
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="http://facebook.com/">
                                <i class='bx bxl-facebook-square bx-md'></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.linkedin.com/">
                                <i class='bx bxl-linkedin-square bx-md'></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.whatsapp.com/">
                                <i class='bx bxl-whatsapp-square bx-md'></i>
                            </a>
                        </li>
                        
                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4" style="margin-left: 15%;">
                    <h3 class="h4 pb-lg-3 text-light light-300" >Our Company</h2>
                        <ul class="list-unstyled text-light light-300">
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light" href="index.html">서비스</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="about.html">랭킹</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="work.html">이벤트</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i></i><a class="text-decoration-none text-light py-1" href="pricing.html">공지</a>
                            </li>
                            
                        </ul>
                </div>

                

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4" style="margin-left: 10%;">
                    <h2 class="h4 pb-lg-3 text-light light-300">For Client</h2>
                    <ul class="list-unstyled text-light light-300">
                        <li class="pb-2">
                            <i class='bx-fw bx bx-phone bx-xs'></i><a class="text-decoration-none text-light py-1" href="tel:010-020-0340">010-020-0340</a>
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