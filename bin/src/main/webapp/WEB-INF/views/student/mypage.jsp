<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

  <div class="container">
      <!-- Nav -->
  <c:import url="../student/nav.jsp" />


    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <h4 class="mb-3">마이페이지</h4>
      <form method="post" name="student" modelAttribute="student" class="needs-validation" novalidate >
      

        <hr class="mb-4">
        <div class="mb-3">
          <label for="username">아이디</label>
          <div class="student_number">
            <span class="student_number-text">${student.id}</span>
          </div>
        </div>
        <hr class="mb-4">
        <div class="mb-3">
          <label for="username">이름<span class="text-muted">&nbsp(반드시 실명이어야 합니다.)</span></label>
          <div class="input-group">
            <input type="text" class="form-control" name="name" value="${student.name}" placeholder="이름" required>
            <div class="invalid-feedback">이름을 입력해주세요.</div>
          </div>
        </div>


          <div class="mb-3">
            <label for="country">학과</label>
            <select class="custom-select d-block w-100" id="department_no" name="department_no" required >
            
              <option value="1" ${student.department_no == 1 ? "selected" :""}>소프트웨어공학과</option>
              <option value="2" ${student.department_no == 2 ? "selected" :""}>컴퓨터공학과</option>
              <option value="3" ${student.department_no == 3 ? "selected" :""}>정보통신학과</option>
              <option value="4" ${student.department_no == 4 ? "selectd" :""}>글로컬IT학과</option>
              <option value="18" ${student.department_no == 18 ? "selected" :""}>신학과</option>
              <option value="19" ${student.department_no == 19 ? "selected" :""}>영어학과</option>
              <option value="20" ${student.department_no == 20 ? "selectd" :""}>일어일본학과</option>
              <option value="21" ${student.department_no == 21 ? "selected" :""}>중어중국학과</option>
              <option value="22" ${student.department_no == 22 ? "selected" :""}>사회복지학과</option>
              <option value="23" ${student.department_no == 23 ? "selected" :""}>사회과학부</option>
              <option value="24" ${student.department_no == 24 ? "selected" :""}>신문방송학과</option>
              <option value="25" ${student.department_no == 25 ? "selected" :""}>경영학부</option>
              <option value="26" ${student.department_no == 26 ? "selectd" :""}>디지털컨텐츠학과</option>
              <option value="27" ${student.department_no == 27 ? "selected" :""}>인문융합 자율학부</option>
              <option value="28" ${student.department_no == 28 ? "selected" :""}>사회융합 자율학부</option>
              <option value="29" ${student.department_no == 29 ? "selected" :""}>미디어컨테츠융합 자율학부</option>
              <option value="30" ${student.department_no == 30 ? "selected" :""}>IT융합 자율학부</option>
            </select>
          </div>



        <div class="mb-3">
          <label for="email">이메일</label>
          <input type="email" class="form-control" value="${student.student_email}" name="student_email" placeholder="dmsdo1234@gmail.com" required>
          <div class="invalid-feedback">이메일을 입력해주세요.</div>
        </div>


        <div class="mb-3">
          <label for="address">전화번호<span class="text-muted">&nbsp(-없이 숫자만 입력해주세요.)</span></label>
          <input type="text" class="form-control" name="student_phone" value="${student.student_phone}" placeholder="01012341234" required>
          <div class="invalid-feedback">전화번호를 입력해주세요.</div>
        </div>

        

        <div class="mb-3">
          <label for="address">비밀번호</label>
          <input type="password" class="form-control" name="password1" id="pwd1" value="${student.password1}" placeholder="password" required>
          <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
        </div>
        <div class="mb-3">
          <label for="address">비밀번호 확인</label>
          <input type="password" class="form-control" name="password2" id="pwd2" value="${student.password2}" placeholder="password" required>
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