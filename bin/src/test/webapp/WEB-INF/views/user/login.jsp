<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/loginhead.jsp" />

<body>

  <div class="container">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand mr-auto mr-lg-0" href="loginform">성공회대학교 과제제출시스템</a>
    </nav>

    <form class="form-signin my-3 p-3 bg-white rounded shadow-sm">
      아이디<label for="inputEmail" class="sr-only">아이디</label>
      <input type="text" id="inputEmail" class="form-control" placeholder="id" required autofocus>

      비밀번호<label for="inputPassword" class="sr-only">비밀번호</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox">
        <label>
          <input type="checkbox" value="id"> 아이디저장
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="button">로그인</button>
      <button class="btn btn-lg btn-primary btn-block" type="button" onclick="location='option' ">회원가입</button>
      <a href="findpassword">비밀번호 찾기</a>
    </form>
  </div> 

  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>
