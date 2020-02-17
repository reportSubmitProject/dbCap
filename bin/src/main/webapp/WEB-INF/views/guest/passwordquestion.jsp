<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/loginhead.jsp" />

<body>
  <div class="container">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand mr-auto mr-lg-0" href="login">성공회대학교 과제제출시스템</a>
    </nav>

    <form class="form-signin my-3 p-3 bg-white rounded shadow-sm">
      <h4 class="mb-3">비밀번호 찾기</h4>
      <hr class="mb-4">
      질문<label for="inputId" class="sr-only">질문</label>
      <br>
       <br>
      디비에 있는 질문!!
<br>
      <br>
      답<label for="inputName" class="sr-only">답</label>
      <input type="text" id="inputEmail" class="form-control" placeholder="질문에 맞는 답을 입력해주세요." required autofocus>
      <br>
        <label>

        </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="location.href='newpassword' ">다음</a></button>
     <!--  <button class="btn btn-lg btn-primary btn-block" type="submit">로그인 하러 가기</button> -->

    </form>
  </div>

  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>
