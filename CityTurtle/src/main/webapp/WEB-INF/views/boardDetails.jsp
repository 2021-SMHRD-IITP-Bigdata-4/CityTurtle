<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>

<body>
      <!-- Header -->
      <nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand h1" href="index.html">
                <i class='bx bx-buildings bx-sm text-dark'></i>
                <span class="text-dark h4">도시</span> <span class="text-primary h4">거북</span>
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
                <div class="flex-fill mx-xl-5 mb-2">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="index.html">서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="about.html">랭킹</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="work.html">이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="pricing.html">공지</a>
                        </li>
                       
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <a class="nav-link" href="#"><i class='bx bx-bell bx-sm bx-tada-hover text-primary'></i></a>
                    <a class="nav-link" href="#"><i class='bx bx-cog bx-sm text-primary'></i></a>
                    <a class="nav-link" href="#"><i class='bx bx-user-circle bx-sm text-primary'></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->

    



    <div class="container" style="width: 1000px; height: 700px;">
        <br><br><br><br><br><br>
        <h1 style="margin-left: 35%;">글 상 세 보 기</h1>
        <br><br>
        <div class="panel panel-default" style="text-align: center;">
         
          <div class="panel-body">
          
          <table class="table table-bordered table-hover" style="text-align: center;">
          <form action="" method="post">
          
          <input type="hidden" name="idx" value="">
                 <tr>
                   <td>번호</td>
                   <td>1</td>
                 </tr>
                 
                 <tr>
                   <td>제목</td>
                   <td><input type="text" name="title" class="form-control" value="2021-10-05 업데이트 안내" style="text-align: center;"> </td>
                 </tr>
                 
                 <tr>
                    <td>내용</td>
                    <td><textarea rows="5" name="contents" class="form-control"> 
                    거북목 업데이트 안내입니다.2021-10-07 새로운 버전이 나왔습니다.
                    기존에 있던 기능을 다른 기능으로 바꿔서 했어요~ 업데이트 부탁 합니다~~ 
                    사용하시는 분들 모두 감사합니다.  </textarea> </td>
                  </tr> 
                  
                   <td>작성자</td>
                   <td>관리자</td>
                 </tr>
              </table>    

              <div class="contents_list" style="margin-left: 72%">
                <button type="submit" class="btn btn-outline-primary">수정</button>
                <button type="reset" class="btn btn-outline-primary">취소</button>
                <button type="button" class="btn btn-outline-primary">삭제</button>
                <button type="button" class="btn btn-outline-primary">목록</button>
              </div>
          
          </div>
          
        </div>

        
      </div>


      
      </form>


        <!-- Start Comment -->
        <div class="row justify-content-center" style="margin-left: 9%;">
            <div class="worksingle-comment-heading col-8 m-auto pb-3" >
                <br><br><br><br><br>
                <h4 class="h5">댓글쓰기</h4>
            </div>
        </div>

        <div class="row pb-4"  style="margin-left: 10%;">
            <div class="worksingle-comment-body col-md-8 m-auto">
                <div class="d-flex">
                    <div>
                        <img class="rounded-circle" src="./resources/img/team-05.jpg" style="width: 50px;">
                    </div>
                    <div class="comment-body">
                        <div class="comment-header d-flex justify-content-between ms-3">
                            <div class="header text-start">
                                <h5 class="h6">박지훈</h5>
                              
                            </div>
                        
                        </div>
                        <div class="footer">
                            <div class="card-body border ms-3 light-300" style="height: 150px; width: 900px;">
                                <div class="contents">
                                    <div class="contents_text">                               
                                            <span>거북목 업데이트는 언제 끝나나요??</span>
                                            <br>
                                           
                                    </div>

                                            <br> 
                                        <div class="contents_date">
                                            <span>2021-10-07</span>
                                            <br>                                                                            
                                        </div>

                                        <div class="contents_footer">
                                            
                                           
                                            
                                            
                                                <a href="#" class="" style="margin-left: 93%;">
                                                    <button type="submit" class="btn btn-outline-primary">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                                          </svg>
                                                        <span>10</span>
                                                    </button>
                                                            
                                                </a>
                                           
                                            
                                        </div>

                                    
                                   
                                </div>                            
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Comment -->

        <div class="row justify-content-center" style="margin-left: 9%;">
            <div class="worksingle-comment-heading col-8 m-auto pb-3" >
                <br><br><br><br><br>
                <h4 class="h5">댓글쓰기</h4>
            </div>
        </div>

        <div class="row pb-4"  style="margin-left: 10%;">
            <div class="worksingle-comment-body col-md-8 m-auto">
                <div class="d-flex">
                    <div>
                        <img class="rounded-circle" src="./resources/img/team-05.jpg" style="width: 50px;">
                    </div>
                    <div class="comment-body">
                        <div class="comment-header d-flex justify-content-between ms-3">
                            <div class="header text-start">
                                <h5 class="h6">박슬암</h5>
                              
                            </div>
                        
                        </div>
                        <div class="footer">
                            <div class="card-body border ms-3 light-300" style="height: 150px; width: 900px;">
                                <div class="contents">
                                    <div class="contents_text">                               
                                            <span>고생많으십니다.</span>
                                            <br>
                                           
                                    </div>

                                            <br> 
                                        <div class="contents_date">
                                            <span>2021-10-09</span>
                                            <br>                                                                            
                                        </div>

                                        <div class="contents_footer">
                                            
                                           
                                            
                                            
                                                <a href="#" class="" style="margin-left: 93%;">
                                                    <button type="submit" class="btn btn-outline-primary">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                                          </svg>
                                                        <span>10</span>
                                                    </button>
                                                            
                                                </a>
                                           
                                            
                                        </div>

                                    
                                   
                                </div>                            
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Comment -->


        <div class="row justify-content-center" style="margin-left: 9%;">
            <div class="worksingle-comment-heading col-8 m-auto pb-3" >
                <br><br><br><br><br>
                <h4 class="h5">댓글쓰기</h4>
            </div>
        </div>

        <div class="row pb-4"  style="margin-left: 10%;">
            <div class="worksingle-comment-body col-md-8 m-auto">
                <div class="d-flex">
                    <div>
                        <img class="rounded-circle" src="./resources/img/team-05.jpg" style="width: 50px;">
                    </div>
                    <div class="comment-body">
                        <div class="comment-header d-flex justify-content-between ms-3">
                            <div class="header text-start">
                                <h5 class="h6">김봉현</h5>
                              
                            </div>
                        
                        </div>
                        <div class="footer">
                            <div class="card-body border ms-3 light-300" style="height: 150px; width: 900px;">
                                <div class="contents">
                                    <div class="contents_text">                               
                                            <span>유용한 정보 감사합니다.</span>
                                            <br>
                                           
                                    </div>

                                            <br> 
                                        <div class="contents_date">
                                            <span>2021-10-10</span>
                                            <br>                                                                            
                                        </div>

                                        <div class="contents_footer">
                                            
                                           
                                            
                                            
                                                <a href="#" class="" style="margin-left: 93%;">
                                                    <button type="submit" class="btn btn-outline-primary">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                                          </svg>
                                                        <span>10</span>
                                                    </button>
                                                            
                                                </a>
                                           
                                            
                                        </div>

                                    
                                   
                                </div>                            
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Comment -->


        <div class="row justify-content-center" style="margin-left: 9%;">
            <div class="worksingle-comment-heading col-8 m-auto pb-3" >
                <br><br><br><br><br>
                <h4 class="h5">댓글쓰기</h4>
            </div>
        </div>

        <div class="row pb-4"  style="margin-left: 10%;">
            <div class="worksingle-comment-body col-md-8 m-auto">
                <div class="d-flex">
                    <div>
                        <img class="rounded-circle" src="./resources/img/team-05.jpg" style="width: 50px;">
                    </div>
                    <div class="comment-body">
                        <div class="comment-header d-flex justify-content-between ms-3">
                            <div class="header text-start">
                                <h5 class="h6">김성훈</h5>
                              
                            </div>
                        
                        </div>
                        <div class="footer">
                            <div class="card-body border ms-3 light-300" style="height: 150px; width: 900px;">
                                <div class="contents">
                                    <div class="contents_text">                               
                                            <span>감사합니다.</span>
                                            <br>
                                           
                                    </div>

                                            <br> 
                                        <div class="contents_date">
                                            <span>2021-10-12</span>
                                            <br>                                                                            
                                        </div>

                                        <div class="contents_footer">
                                            
                                           
                                            
                                            
                                                <a href="#" class="" style="margin-left: 93%;">
                                                    <button type="submit" class="btn btn-outline-primary">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                                          </svg>
                                                        <span>10</span>
                                                    </button>
                                                            
                                                </a>
                                           
                                            
                                        </div>

                                    
                                   
                                </div>                            
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Comment -->


        <div style="height: 200px;"></div>
      


   

   <!-- Start Footer -->
   <footer class="bg-secondary pt-4">
    <div class="container" style="margin-left: 19%;">
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

</body>

</html>