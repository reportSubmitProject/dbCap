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
  <c:import url="../ta/nav.jsp" />


    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <form method="post" class="needs-validation" novalidate>
      <h4 class="mb-3">마이페이지</h4>

        <hr class="mb-4">
        <div class="mb-3">
          <label for="username">아이디</label>
          <div class="ta_number">
            <span class="ta_number-text">${ta.ta_id}</span>
          </div>
        </div>
        <hr class="mb-4">
        <div class="mb-3">
          <label for="username">담당 교수 이름<span class="text-muted"></span></label>
          <div class="input-group">
            <span class="student_number-text">${professor.name}</span>
          </div>
        </div>

        <div class="mb-3">
          <label for="address">비밀번호</label>
          <input type="password" class="form-control" name="password" value="${ta.password}" placeholder="password" required>
        </div>
        
        <button class="btn btn-primary btn-lg btn-block" type="submit" >수정</button>
      </form>
    </div>


  



    <footer class="my-5 pt-5 text-muted text-center text-small">

    </footer>
  </div>


</body>

</html>
