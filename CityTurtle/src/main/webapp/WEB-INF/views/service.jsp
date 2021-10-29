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
					
            <div class="col-lg-12 row">
                <div class="team-member col-md-6">

                </div>
                <div class="team-member col-md-6">
                    
                    
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- End Banner Hero -->
    
    <!-- Start Banner Hero -->
    <section class="bg-white w-100">
        <div class="container">
            <div class="row d-flex align-items-center py-5">
					
            <div class="col-lg-12 row">
                <div class="team-member col-md-6">
					<canvas id="line-chart" width="300" height="250"></canvas>
                </div>
                <div class="team-member col-md-6">
                    <canvas id="pie-chart" width="20" height="20"></canvas>
                    
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- End Banner Hero -->


    <!-- Start Team Member -->
    <section class="bg-light w-100">
        <div class="container">
            <div class="row d-flex align-items-center py-5">
					
            <div class="col-lg-12 row">
                <div class="team-member col-md-6">
					<canvas id="line-chart2" width="300" height="250"></canvas>
                </div>
                <div class="team-member col-md-6">
                    <canvas id="pie-chart2" width="20" height="20"></canvas>
                    
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- End Team Member -->

    <!-- Start Our Partner -->
    <section class="bg-secondary py-3">
        <div class="container py-5">
            <h2 class="h2 text-white text-center py-5">종합 통계</h2>
        </div>
    </section>
    <!--End Our Partner-->

    <!-- Start Progress -->
    <section class="bg-white py-5">
        <div class="container my-4">
            <div class="col-lg-12 row">
                <div class="team-member col-md-6">
					<canvas id="bar-chart" width="300" height="230"></canvas>
                </div>
                <div class="team-member col-md-6">
                    <canvas id="bar-chart-horizontal" width="600" height="250"></canvas>
                    <canvas id="bar-chart-horizontal2" width="600" height="250"></canvas>
                </div>
            </div>

        </div>
    </section>
    <!-- End Progress -->


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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script type="text/javascript">
       const canvas = document.querySelector("#pie-chart");
       canvas.width = 5;
       canvas.height = 5;
   
      new Chart(document.getElementById("pie-chart"), {
       type: 'pie',
       data: {
         labels: ["박지훈 님", "김성훈 님", "김봉현 님", "박슬암 님", "정세연 님"],
         datasets: [{
           label: "Population (millions)",
           backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
           data: [50,30,25,44,77]
         }]
       },
       options: {
         title: {
           display: true,
           text: '거북목 순위'
         }
       }
   });
      
      new Chart(document.getElementById("line-chart"), {
    	  type: 'line',
    	  data: {
    	    labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
    	    datasets: [{ 
    	        data: [86,114,106,106,107,111,133,221,783,2478],
    	        label: "Africa",
    	        borderColor: "#3e95cd",
    	        fill: false
    	      }, { 
    	        data: [282,350,411,502,635,809,947,1402,3700,5267],
    	        label: "Asia",
    	        borderColor: "#8e5ea2",
    	        fill: false
    	      }, { 
    	        data: [168,170,178,190,203,276,408,547,675,734],
    	        label: "Europe",
    	        borderColor: "#3cba9f",
    	        fill: false
    	      }, { 
    	        data: [40,20,10,16,24,38,74,167,508,784],
    	        label: "Latin America",
    	        borderColor: "#e8c3b9",
    	        fill: false
    	      }, { 
    	        data: [6,3,2,2,7,26,82,172,312,433],
    	        label: "North America",
    	        borderColor: "#c45850",
    	        fill: false
    	      }
    	    ]
    	  },
    	  options: {
    	    title: {
    	      display: true,
    	      text: 'World population per region (in millions)'
    	    }
    	  }
    	}); 
      new Chart(document.getElementById("pie-chart2"), {
       type: 'pie',
       data: {
         labels: ["박지훈 님", "김성훈 님", "김봉현 님", "박슬암 님", "정세연 님"],
         datasets: [{
           label: "Population (millions)",
           backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
           data: [50,30,25,44,77]
         }]
       },
       options: {
         title: {
           display: true,
           text: '거북목 순위'
         }
       }
   });
      
      new Chart(document.getElementById("line-chart2"), {
    	  type: 'line',
    	  data: {
    	    labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
    	    datasets: [{ 
    	        data: [86,114,106,106,107,111,133,221,783,2478],
    	        label: "Africa",
    	        borderColor: "#3e95cd",
    	        fill: false
    	      }, { 
    	        data: [282,350,411,502,635,809,947,1402,3700,5267],
    	        label: "Asia",
    	        borderColor: "#8e5ea2",
    	        fill: false
    	      }, { 
    	        data: [168,170,178,190,203,276,408,547,675,734],
    	        label: "Europe",
    	        borderColor: "#3cba9f",
    	        fill: false
    	      }, { 
    	        data: [40,20,10,16,24,38,74,167,508,784],
    	        label: "Latin America",
    	        borderColor: "#e8c3b9",
    	        fill: false
    	      }, { 
    	        data: [6,3,2,2,7,26,82,172,312,433],
    	        label: "North America",
    	        borderColor: "#c45850",
    	        fill: false
    	      }
    	    ]
    	  },
    	  options: {
    	    title: {
    	      display: true,
    	      text: 'World population per region (in millions)'
    	    }
    	  }
    	}); 

      new Chart(document.getElementById("bar-chart"), {
    	    type: 'bar',
    	    data: {
    	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
    	      datasets: [
    	        {
    	          label: "Population (millions)",
    	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
    	          data: [2478,5267,734,784,433]
    	        }
    	      ]
    	    },
    	    options: {
    	      legend: { display: false },
    	      title: {
    	        display: true,
    	        text: 'Predicted world population (millions) in 2050'
    	      }
    	    }
    	});
      new Chart(document.getElementById("bar-chart-horizontal"), {
    	    type: 'horizontalBar',
    	    data: {
    	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
    	      datasets: [
    	        {
    	          label: "Population (millions)",
    	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
    	          data: [2478,5267,734,784,433]
    	        }
    	      ]
    	    },
    	    options: {
    	      legend: { display: false },
    	      title: {
    	        display: true,
    	        text: 'Predicted world population (millions) in 2050'
    	      }
    	    }
    	});
      new Chart(document.getElementById("bar-chart-horizontal2"), {
    	    type: 'horizontalBar',
    	    data: {
    	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
    	      datasets: [
    	        {
    	          label: "Population (millions)",
    	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
    	          data: [2478,5267,734,784,433]
    	        }
    	      ]
    	    },
    	    options: {
    	      legend: { display: false },
    	      title: {
    	        display: true,
    	        text: 'Predicted world population (millions) in 2050'
    	      }
    	    }
    	});

      </script>
    

</body>

</html>