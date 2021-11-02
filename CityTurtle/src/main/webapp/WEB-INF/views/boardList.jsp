<%@page import="city.turtle.vo.boardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%// jsp는 taglib랑 c:set 코드를 먼저 하고 시작한다.!!!!!!!! %>    

	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%////톰캣 안에 sever.xml/web 가지고오기 왜? /web가 바뀌면 일일히 다 고칠수없으니 %>
	<c:set var="cpath" value="${pageContext.request.contextPath}"> </c:set>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
  	
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
.innertext > td{
    font-size: 20px;
    text-align: center;
    margin-left: 50%
}

.write{
    width: 5%;
    height: 5%;
    margin-left: 90%;
}

a{
    text-decoration: none;
}

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
	


</style>


<script type="text/javascript">
function goForm() {
	// 글쓰기 화면좀 보여주세요라고 POJO로 요청 POJO = 메서드
	location.href="${cpath}/boardWrite.do";   // ? --> web
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


    

    <!-- Start Work Sigle -->
    <section class="container py-5" style="height: 1000px; margin-top: 100px;">

        <div class="container">
            <h1 style="margin-top: 5%; margin-left: 42%;">공 지 사 항</h1>
            <br><br><br><br>

            <div class="group" style="width: 1400px; height: 70px;">
                
                    <select class="btn btn-outline-primary" style="width: 100px; height: 32.5px; margin-left: 20px; text-align: center;">
                        <option value=””>제목</option>
                        <option value=””>작성자</option>


                            <input class="btn btn-outline-primary" type="search" name="" id="" style="margin-left: 30px; block-size: 34px; width: 300px;">
                            <button class="btn btn-outline-primary" style="margin-left: 1%;"><i class="bi bi-search"></i></button>
   
                      </select>

                      <button class="btn btn-outline-primary" style="margin-left: 45%;" onclick="goForm()"> 글쓰기</button>

                      

               
            </div>

            
            <div class="panel panel-default">
        
              <div class="panel-body" style="height: 1000px">
               
     <table   class="table table-hover" style="text-align: center">
	<thead>
		<tr class='innertext'>
                      <td>번호</td>
                      <td>제목</td>
                      <td>작성자</td>
                      <td>작성일</td>                  
                   </tr>
	</thead>
	
	<tbody>
	
		<c:forEach var="vo" items="${list}">
    		<tr>
		    	<td>${vo.not_seq}</td>
		    	<td><a href="${cpath}/boardDetails.do?not_seq= ${vo.not_seq}">${vo.not_title}</td>
		    	<td>${vo.mb_id}</td>
		    	<td>${vo.not_date}</td>
		    	
	    	</tr>
	    	
	    	
	    	
    	</c:forEach>
	
	</tbody>

</table>
    	
    	 <div class="row" style="margin-top: 4%;">
                    <div class="btn-toolbar justify-content-center pb-4" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group me-2" role="group" aria-label="First group">
                            <button type="button" class="btn btn-secondary text-white">Previous</button>
                        </div>
                        <div class="btn-group me-2" role="group" aria-label="Second group">
                            <button type="button" class="btn btn-light">1</button>
                        </div>
                        <div class="btn-group me-2" role="group" aria-label="Second group">
                            <button type="button" class="btn btn-secondary text-white">2</button>
                        </div>
                        <div class="btn-group" role="group" aria-label="Third group">
                            <button type="button" class="btn btn-secondary text-white">Next</button>
                        </div>
                    </div>
                </div>
    	
  </div>
 </div>
  </div>

       
    </section>
    <!-- End Work Sigle -->



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
    <!-- Load jQuery require for Page Script -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Page Script -->

    <script>
        $(window).load(function() {
            // Slide
            $('.templatemo-slide-link').click(function() {
                var this_href = $(this).attr('href');
                $('#templatemo-slide-link-target img').attr('src', this_href);
                return false;
            });
            // End Slide
        });
    </script>
    <!-- Templatemo -->
    <script src="resources/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="resources/js/custom.js"></script>
    <script>
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