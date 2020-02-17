<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">

        <a class="navbar-brand mr-auto mr-lg-0" href="professormain.html">성공회대학교 과제제출시스템</a>
        <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="professormain.html">초기화면</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="professormypage.html">마이페이지</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="taapprove.html">TA 승인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">도움말</a>
            </li>

          </ul>
          <form class="form-inline my-2 my-lg-0">
            <h7 class="mb-0 text-white lh-100">소프트웨어공학과 교수 홍은지&nbsp&nbsp</h7>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="location.href='loginform.html'">로그아웃</button>
          </form>
        </div>
    </nav>