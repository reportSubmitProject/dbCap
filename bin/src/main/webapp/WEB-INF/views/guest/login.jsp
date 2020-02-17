<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!doctype html>
<html lang="en">

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/signin/">

  <title>로그인</title>
  <style type="text/css">
    <%@include file="/WEB-INF/bootstrap/css/bootstrap.min.css" %>
    <%@include file="/WEB-INF/bootstrap/css/signin.css" %>
    <%@include file="/WEB-INF/bootstrap/css/form-validation.css" %>
  </style>
  <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
  <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

</head>

<body>

  <div class="container">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand mr-auto mr-lg-0" href="login">성공회대학교 과제제출시스템</a>
    </nav>

    <form class="form-signin my-3 p-3 bg-white rounded shadow-sm" method="post" action="login_processing">
      <label for="inputId" class="sr-only">아이디</label>
      <input type="text" name="loginId" class="form-control" placeholder="id" autocomplete="off" required autofocus>
 	  
      <label for="inputPassword" class="sr-only">비밀번호</label>
      <input type="password" name="passwd" class="form-control" autocomplete="off" placeholder="Password" required>
    
   
    
      <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
      <button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href='option' ">회원가입</button>
      <a href="findpassword">비밀번호 찾기</a>
      <c:if test="${ param.error != null }">
         <div class="mt5" style="text-align: right">로그인 실패</div>
      </c:if>
    </form>

  </div> 

  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>