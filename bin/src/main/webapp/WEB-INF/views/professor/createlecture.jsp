<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

  	<!-- Nav -->
	<c:import url="../professor/nav.jsp" />



  <main role="main" class="main-container">
    <div class="row">
    <div class="col-md-4 order-md-1 mb-4">
    <form:form>
		<div class="my-3 p-3 bg-white rounded shadow-sm">
          <h6 class="border-bottom border-gray pb-2 mb-0">내 강좌</h6>
          <div class="text-gray-dark"> 전공
		  <c:forEach var="lecture" items="${professorLecture1}"> 
            <div class="media text-muted pt-3">
              <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
              <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                <div class="d-flex justify-content-between align-items-center w-100">
                  <strong class="text-gray-dark">${lecture.lecture_name}<br /></strong>
                  <form method="post">
                  <input type="hidden" name="id" value="${ lecture.lecture_no }" />
                  <button type="submit" name="cmd" value="delete" class="btn btn-outline-primary">삭제</button>
                  </form>
                </div>
              </div>
            </div>
            </c:forEach> 
          </div>

          <div class="text-gray-dark"> 교양
         <c:forEach var="lecture" items="${professorLecture2}"> 
            <div class="media text-muted pt-3">
              <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
              <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                <div class="d-flex justify-content-between align-items-center w-100">
                  <strong class="text-gray-dark">${lecture.lecture_name}<br /></strong>
                  <form method="post">
                  <input type="hidden" name="id" value="${ lecture.lecture_no }" />
                  <button type="submit" name="cmd" value="delete" class="btn btn-outline-primary">삭제</button>
                  </form>
                </div>
              </div>
            </div>
          </c:forEach> 
          </div>
        </div>
        </form:form>
</div>
        


      <div class="col-md-8 order-md-2">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
        <form:form method = "post" modelAttribute="lecture" class="needs-validation" novalidate="novalidate">
            <table class="table">
              <thead>
                <tr>
                  <td class="table-active">강좌명 </td>
                  <td>
                  	<form:input path="lecture_name" style="width: 50%;" class="form-control" autocomplete="off" required="required"/>
                  	<div class="invalid-feedback">
        			강좌명을 입력해주세요.
      			  	</div>
      			  </td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="table-active">분류</td>
                  <td>
                    <div class="custom-control custom-radio">
                      <form:radiobutton path="lecture_type" value="전공" checked="checked"/>
                      <label >전공</label>
                    </div>
                    <div class="custom-control custom-radio">
                      <form:radiobutton path="lecture_type" value="교양"/>
                      <label >교양</label>
                    </div>
                  </td>               
             	</tr>
              </tbody>
            </table>
            <div style="float: right; display:inline-block; width: 800px;">
              <button class="btn btn-primary mx-2 my-sm-0" type="submit" style="width: 100px; float: right">강좌 개설</button>
            </div>
            <label>
              <br>

            </label>

          </form:form>
          </div>
        </div>
      </div>     
  </main>
  
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
