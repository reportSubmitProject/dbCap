<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

  <div class="container">

    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">

      <a class="navbar-brand mr-auto mr-lg-0" href="login">성공회대학교 과제제출시스템</a>

    </nav>


    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <h4 class="mb-3">회원가입</h4>
        <hr class="mb-4">
        <button class="btn btn btn-primary btn-lg btn-block" type="button" onclick="location.href='studentsignup'" >학생 회원가입</button>
        <button class="btn btn btn-primary btn-lg btn-block" type="button" onclick="location.href='professorsignup'">교수 회원가입</button>

    </div>
    </form>
    <footer class="my-5 pt-5 text-muted text-center text-small">

    </footer>
  </div>

</body>

</html>
