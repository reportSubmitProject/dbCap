<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<!-- Head -->
<c:import url="../common/loginhead.jsp" />

<body>

	
  <div class="container">
  
    <!-- Nav -->
	<c:import url="../professor/nav.jsp" />

	<div class="form-signin my-3 p-3 bg-white rounded shadow-sm">
    <form:form method="post" modelAttribute="ta" class="needs-validation" novalidate="novalidate">
    
      <h4 class="mb-3">TA 생성</h4>
      <hr class="mb-4">
      <div class="form-group">
      <label>아이디:</label>
      <form:input path="ta_id" class="form-control" autocomplete="off" required="required"/>
      <div class="invalid-feedback">아이디를 입력해주세요.</div>
    </div>
    <div class="form-group">
    <label>비밀번호:</label>
      <form:input path="password"  class="form-control" autocomplete="off" placeholder="password" required="required"/>
      <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
    </div>
    <hr />
    <button type="submit" class="btn btn-lg btn-primary btn-block">생성하기</button>
  	</form:form>
  	</div>
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
  </body>

</html>