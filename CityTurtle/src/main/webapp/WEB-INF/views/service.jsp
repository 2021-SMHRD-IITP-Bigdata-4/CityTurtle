<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"> </c:set>
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
   
    <!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->
<style>
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 500px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
	.container.py-4{
		margin: 0 auto;
		width : 553px;
	}
	.bg-light.py-5.count{
	    padding-top: 0.01rem!important;
	    padding-bottom: 1rem!important;
	}
</style>

<!-- 카운트 업 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
  </script>
-->
   <script type="text/javascript">
	$.ajax({ 
		type: "GET", 
		url: "testData.do", 
		data: {mb_id : "${signIn.mb_id}"},
		dataType:'json',
		success: function (data) { 
			// alert("success");
			console.log(data.pos_count); // 눈
			console.log(data.pos_count2); // 목

			$("#tCount").html(data.pos_count2);
			$("#eCount").html(data.pos_count);
			},
		error : function () {
			// alert("error"); 
			}
	});
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
	<section class="bg-light py-5 count">
		<div class="container" style="margin-top: 70px">
			<div class="row">
				<!-- <div class="col-sm-6"> -->
				<div>
					<div class="row justify-content-center" style="margin-top: 50px">
						<div class="col-sm-4">
							<h1 class="display-1 text-center">
								<span class="counter" id="tCount">0</span>
							</h1>
						</div>
						<div class="col-sm-4">
							<h1 class="display-1 text-center">
								<span class="counter" id ="eCount">0</span>
							</h1>
						</div>
					</div>
					<div class="row justify-content-center" style="margin-top: 50px">
						<div class="col-sm-4">
							<p class="text-center">거북목 누적 횟수</p>
						</div>
						<div class="col-sm-4">
							<p class="text-center">분당 눈 깜박임 횟수 </p>
						</div>
					</div>
					<!-- 기록 시작 div -->
<!-- 					<ul id="nav3" class="nav justify-content-center" style="margin-top: 70px">
						<button class="btn btn-primary">기록 시작</button>
					</ul> -->
				</div>
				<!-- 영상 송출 div -->
<!-- 				<div class="col-sm-6 ">
					<div class="creative-content row py-3 justify-content-center">
						<div class="col-md-7">
							<img class="team-member-img img-fluid rounded-circle p-4"
								id="rankId" src="./resources/img/IU.jpg" alt="Card image">
							<ul
								class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
								<li>접시빌런</li>
								<li><span>다이아</span> <i class="bx bx-diamond"></i></li>
							</ul>
						</div>
					</div>
				</div> -->
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
                <div class="team-member col-md-6 py-5">
                    <canvas id="bar-chart" width="300" height="230"></canvas>  
                    
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
                <div class="team-member col-md-6 py-5">
                	<canvas id="bar-chart2" width="300" height="230"></canvas>                   
                    
                </div>
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

	<!-- 카운트 업
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	-->
    <!-- Bootstrap -->
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="resources/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="resources/js/custom.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">

      // 페이지 시작할 때 차트 함수 
      $(document).ready(function(){ 
    		getGraph();
    		getGraph2();    		
    		getSumGraph();
    		getSumGraph2();
    	});
      
      // 거북목 라인 차트 그리기
      function getGraph(){
       	  let timeList = [];
    	  let posList = [];
    	  
    	  $.ajax({
    		  url:"${cpath}/countTurtle.do",
    		  type:"get",
    		  data:{mb_id:"${signIn.mb_id}", pos_type:"거북목"},
    		  dataType:"json",
    		  success:function(data){
    			  // console.log(data[0].pos_count);
    			  // 그래프로 나타낼 자료 리스트에 담기
    			  for (let i = 0; i<data.length;i++){    				  
						timeList.push(data[i].pos_time + " (" +data[i].pos_time2 + ")");    				  
						posList.push(data[i].pos_count);
    			  }
    			 
    			  // console.log(timeList);
    			  // console.log(posList);  	
				  // 그래프
    			  new Chart(document.getElementById("line-chart"), {
    		    	  type: 'line',
    		    	  data: {
    		    	    labels: timeList,
    		    	    datasets: [{ 
    		    	        data: posList,
    		    	        label: "거북목 수치",
    		    	        borderColor: "#3e95cd",
    		    	        fill: false
    		    	      }
    		    	    ]
    		    	  },
    		    	  options: {
    		    	    title: {
    		    	      display: true,
    		    	      text: '거북목 수치'
    		    	    }
    		    	  }
    		    	}); //그래프
    		  },
    		  error:function(){
    			  alert("실패");
    		  }  
	     		  
    	  }) // ajax	  
      } // getGraph    	  
      
      // 눈깜빡 라인 차트 그리기
      function getGraph2(){
       	  let timeList = [];
    	  let posList = [];
    	  
    	  $.ajax({
    		  url:"${cpath}/countTurtle.do",
    		  type:"get",
    		  data:{mb_id:"${signIn.mb_id}", pos_type:"눈깜빡임"},
    		  dataType:"json",
    		  success:function(data){
    			  // console.log(data[0].pos_count);
    			  // 그래프로 나타낼 자료 리스트에 담기
    			  for (let i = 0; i<data.length;i++){    				  
						timeList.push(data[i].pos_time + " (" +data[i].pos_time2 + ")");    				  
						posList.push(data[i].pos_count);    				  
    			  }
    			  // console.log(timeList);
    			  // console.log(posList);  	
				  // 그래프
    			  new Chart(document.getElementById("line-chart2"), {
    		    	  type: 'line',
    		    	  data: {
    		    	    labels: timeList,
    		    	    datasets: [{ 
    		    	        data: posList,
    		    	        label: "눈깜빡임 수",
    		    	        borderColor: "#c45850",
    		    	        fill: false
    		    	      }
    		    	    ]
    		    	  },
    		    	  options: {
    		    	    title: {
    		    	      display: true,
    		    	      text: '눈깜빡임 수'
    		    	    }
    		    	  }
    		    	}); //그래프
    		  },
    		  error:function(){
    			  alert("실패");
    		  }      		  
    	  }) // ajax	  
      } // getGraph      
      
      // 거북목 주간 합 그래프
      function getSumGraph(){
    	  let sumList = [];
    	  
    	  $.ajax({
    		  url: "${cpath}/countSum.do",
    		  type : "get",
    		  data : {mb_id:"${signIn.mb_id}", pos_type:"거북목"},
    		  dataType : "json",
    		  success: function(data){
/*     			  console.log(data);
    			  console.log(data[0]);
    			  console.log(data[1]); */
    			  for (let i =0; i<data.length; i++){
    				  sumList.push(data[i]);
    			  }
    			  /* console.log(sumList); */
    			  
    		      new Chart(document.getElementById("bar-chart"), {
    		    	    type: 'bar',
    		    	    data: {
    		    	      labels: ["4주 전","3주 전","2주 전","1주 전"],
    		    	      datasets: [
    		    	        {
    		    	          label: "주간 거북목",
                              backgroundColor: [
                                  //색상
                                  'rgba(255, 99, 132, 0.4)',
                                  'rgba(54, 162, 235, 0.4)', // 파란색
                                  /* 'rgba(255, 206, 86, 0.4)', */ // 노란색
                                  'rgba(255, 159, 64, 0.4)', // 주황색
                                  'rgba(153, 102, 255, 0.4)',
                                  'rgba(75, 192, 192, 0.4)' // 초록색
                              ],
                              borderColor: [
                                  //경계선 색상
                                  'rgba(255, 99, 132, 1)',
                                  'rgba(54, 162, 235, 1)', // 파란색
                                  /* 'rgba(255, 206, 86, 1)', */ // 노란색
                                  'rgba(255, 159, 64, 1)', // 주황색
                                  'rgba(153, 102, 255, 1)',
                                  'rgba(75, 192, 192, 1)' // 초록색
                              ],
                              borderWidth: 1, //경계선 굵기
    		    	          data: sumList
    		    	        }
    		    	      ]
    		    	    },
    		    	    options: {
    		    	      legend: { display: false },
    		    	      title: {
    		    	        display: true,
    		    	        text: '주간 거북목'
    		    	      }
    		    	    }
    		    	});
    		  },
    		  error:function(){
    			  alert("실패");
    		  } 			  
    	  }) // ajax
      } // getSumGraph
      
      // 눈깜빡 주간 합 그래프
      function getSumGraph2(){
    	  let sumList = [];
    	  
    	  $.ajax({
    		  url: "${cpath}/countSum.do",
    		  type : "get",
    		  data : {mb_id:"${signIn.mb_id}", pos_type:"눈깜빡임"},
    		  dataType : "json",
    		  success: function(data){
/*     			  console.log(data);
    			  console.log(data[0]);
    			  console.log(data[1]); */
    			  for (let i =0; i<data.length; i++){
    				  sumList.push(data[i]);
    			  }
    			  /* console.log(sumList); */
    			  
    		      new Chart(document.getElementById("bar-chart2"), {
    		    	    type: 'bar',
    		    	    data: {
    		    	      labels: ["4주 전","3주 전","2주 전","1주 전"],
    		    	      datasets: [
    		    	        {
    		    	          label: "주간 눈깜빡임",
                              backgroundColor: [
                                  //색상
                                  /* 'rgba(255, 99, 132, 0.4)', */ // 빨간색
                                  'rgba(54, 162, 235, 0.4)',
                                  'rgba(153, 102, 255, 0.4)', // 보라색
                                  'rgba(255, 206, 86, 0.4)', 
                                  'rgba(75, 192, 192, 0.4)',
                                  'rgba(255, 159, 64, 0.4)' // 주황색
                              ],
                              borderColor: [
                                  //경계선 색상
                                  /* 'rgba(255, 99, 132, 1)', */ // 빨간색
                                  'rgba(54, 162, 235, 1)',
                                  'rgba(153, 102, 255, 1)', // 보라색
                                  'rgba(255, 206, 86, 1)',
                                  'rgba(75, 192, 192, 1)',
                                  'rgba(255, 159, 64, 1)' // 주황색
                              ],
                              borderWidth: 1, //경계선 굵기
    		    	          data: sumList
    		    	        }
    		    	      ]
    		    	    },
    		    	    options: {
    		    	      legend: { display: false },
    		    	      title: {
    		    	        display: true,
    		    	        text: '주간 눈깜빡임'
    		    	      }
    		    	    }
    		    	});			  
    		  },
    		  error:function(){
    			  alert("실패");
    		  }	  
    	  }) // ajax
      } // getSumGraph
    
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