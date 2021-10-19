<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value ="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>CityTurtle - SignUp Page</title>
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
	.bg-light{
		height: 1153px;
		padding-top:55px;
		padding-bottom:75px;
	}
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 700px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
	.container.py-4{
		margin: 0 auto;
		width : 503px;
	}
	.d-grid.gap-2{
		padding-top: 30px;
	}
	.bir_yy,.bir_mm,.bir_dd{
		width:160px;
		display:table-cell;
	}
	.bir_mm+.bir_dd, .bir_yy+.bir_mm{
		padding-left:10px;
	}


	
</style>

</head>

<body>
 
    <!-- Start Banner Hero -->
    <section class="bg-light">
        <div class="container py-4">
            <div class="row align-items-center justify-content-between">
                <a class="navbar-brand h1 text-center" href="index.do">
                    <span class="text-dark h4">도시</span> <span class="text-primary h4">거북</span>                 
                </a>
            </div>
            <form action="insertMembers.do" method="post">
                <div class="form-group">
               		<label for="mb_id" class="form-label mt-4">아이디</label>
                    <input type="text" class="form-control" name="mb_id" id="mb_id">
					<div><font id="id_feedback" size="2"></font></div>
                </div>
                <div class="form-group">
               		<label for="mb_nick" class="form-label mt-4">닉네임</label>
                    <input type="text" class="form-control" name="mb_nick">
                </div>
				<div class="form-group has-success">
					<label class="form-label mt-4" for="inputValid">비밀번호</label>
					<input type="password" class="form-control" id="mb_pwd1" name="mb_pwd">
					<div class="valid-feedback"></div>
				</div>

				<div class="form-group has-danger">
					<label class="form-label mt-4" for="inputInvalid">비밀번호 재확인</label> 
					<input type="password" class="form-control" id="mb_pwd2">
					<div><font id="pwd_feedback" size="2"></font></div>
				</div>
                <div class="form-group">
               		<label for="exampleInputEmail1" class="form-label mt-4">이름</label>
                    <input type="text" class="form-control" name="mb_name">
                </div>
                <div class ="bir_wrap">
                	<label class="form-label mt-4">생년월일</label>
                	<div class="bir_yy">
                		<span class="ps_box">
                			<input type="text" class="form-control" id="yy" placeholder="년(4자)" maxlength="4" name="mb_yy">
                		</span>
                	</div>
                	<div class="bir_mm">
                		<span class="ps_box focus">
			                <select class="form-select" id="mm" name ="mb_mm">
						        <option>월</option>
						        <option value="01">1</option>
						        <option value="02">2</option>
						        <option value="03">3</option>
						        <option value="04">4</option>
						        <option value="05">5</option>
						        <option value="06">6</option>
						        <option value="07">7</option>
						        <option value="08">8</option>
						        <option value="09">9</option>
						        <option value="10">10</option>
						        <option value="11">11</option>
						        <option value="12">12</option>
						     </select>
                		</span>
                	</div>
                	<div class="bir_dd">
                		<span class="ps_box">
                			<input type ="text" class="form-control" id ="dd" placeholder="일" maxlength="2" name="mb_dd">
                		</span>
                	</div>
                </div>
			    <div class="form-group">
			      <label for="mb_sex" class="form-label mt-4">성별</label>
			      <select class="form-select" name="mb_sex">
			        <option value="남자">남자</option>
			        <option value="여자">여자</option>
			        <option value="거북">거북</option>
			      </select>
			    </div>                
                <div class="form-group">
               		<label for="mb_email" class="form-label mt-4">본인 확인 이메일</label>
                    <input type="email" class="form-control" placeholder="선택입력" name="mb_email">
                </div>
				<div class="d-grid gap-2">
                    <button class="btn btn-primary btn-lg" type="submit">가입하기</button>
                </div>

            </form>
        </div>
    </section>
    <!-- End Banner Hero -->

    <!-- Start Footer -->
    <footer class="bg-secondary pt-4">
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script type ="text/javascript">

		$('#mb_pwd2').keyup(function(){
			let pass1 = $("#mb_pwd1").val();
		    let pass2 = $("#mb_pwd2").val();
		    
		    if (pass1 != "" || pass2 != ""){
		    	if (pass1 == pass2){
		        	$("#pwd_feedback").html('비밀번호가 일치합니다');
		        	$("#pwd_feedback").attr('color','#2fb380');
		        	$("#mb_pwd2").removeClass("is-invalid");
		        	$("#mb_pwd2").addClass("is-valid");
		        } else {
		        	$("#pwd_feedback").html('비밀번호가 일치하지 않습니다');
		            $("#pwd_feedback").attr('color','#dc3545');
		        	$("#mb_pwd2").removeClass("is-valid");		            
		        	$("#mb_pwd2").addClass("is-invalid");
		        }
		    }
		
		})
		
		$('#mb_id').keyup(function(){
			let mb_id = $('#mb_id').val();
			
			$.ajax({
				url : "${cpath}/mbidCheck.do",
				type : "post",
				data : {mb_id: mb_id},
				dataType : 'json',
				success : function(result){
					if(result == 1){
						$("#id_feedback").html('이미 사용중인 아이디입니다.');
						$("#id_feedback").attr('color','#dc3545');
					} else{
						$("#id_feedback").html('사용할 수 있는 아이디입니다.');
						$("#id_feedback").attr('color','#2fb380');
					} 
				},
				error : function(){
					alert("서버요청실패");
				}
			})
			 
		})

	</script>



</body>

</html>