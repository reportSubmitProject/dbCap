<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">
	<div class="container">
	
		<!-- Nav -->
		<c:import url="../professor/nav.jsp" />

		<div class="my-3 p-3 bg-white rounded shadow-sm">
			<h4 class="mb-3">마이페이지</h4>
			<form method="post" name="professor" modelAttribute="professor" class="needs-validation" novalidate >
				<hr class="mb-4">
				<div class="mb-3">
					<label for="username">아이디</label>
					<div class="professor_number">
						<span class="professor_number-text">${professor.id}</span>
					</div>
				</div>
				<hr class="mb-4">
				<div class="mb-3">
					<label for="username">이름<span class="text-muted">&nbsp(반드시
							실명이어야 합니다.)</span></label>
					<div class="input-group">
						<input type="text" class="form-control" name="name" value="${professor.name}" placeholder="이름" required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>
				</div>

				<div class="mb-3">
					<label for="email">이메일</label>
					<input type="email" class="form-control" value="${professor.professor_email}" name="professor_email" placeholder="dmsdo1234@gmail.com"required>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>


				<div class="mb-3">
					<label for="address">전화번호<span class="text-muted">&nbsp(-없이숫자만 입력해주세요.)</span></label> 
					<input type="text" class="form-control" name="professor_phone" value="${professor.professor_phone}" placeholder="01012341234" required>
					<div class="invalid-feedback">전화번호를 입력해주세요.</div>
				</div>



				<div class="mb-3">
					<label for="address">비밀번호</label>
					<input type="password" class="form-control" name="password1" id="pwd1" value="${professor.password1}" placeholder="password" required>
					<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
				</div>
				<div class="mb-3">
					<label for="address">비밀번호 확인</label>
					<input type="password" class="form-control" name="password2" id="pwd2" value="${professor.password2}" placeholder="password" required>
					<div class="invalid-feedback">비밀번호를 확인해주세요.</div>
				</div>
				<div class="alert alert-success" id="alert-success">비밀번호가
					일치합니다.</div>
				<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
					않습니다.</div>
				<button class="btn btn-primary btn-lg btn-block" type="submit" >수정</button>
			</form>
		</div>






		<footer class="my-5 pt-5 text-muted text-center text-small">

		</footer>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
    <script type="text/javascript"> 
  $(function(){ $("#alert-success").hide(); 
  $("#alert-danger").hide(); 
  $("input").keyup(function(){ var pwd1=$("#pwd1").val(); 
  var pwd2=$("#pwd2").val(); 
  if(pwd1 != "" || pwd2 != ""){ 
	  if(pwd1 == pwd2){ $("#alert-success").show(); 
	  $("#alert-danger").hide(); 
	  $("#submit").removeAttr("disabled"); 
	  }
	  else{ 
		  $("#alert-success").hide(); 
		  $("#alert-danger").show(); 
		  $("#submit").attr("disabled", "disabled"); 
		  } 
	  } 
  }); 
  }); 
  </script>

</body>

</html>
