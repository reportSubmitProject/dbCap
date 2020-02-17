<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      <h4 class="mb-3">비밀번호 변경</h4>
      <hr class="mb-4">
      <div class="my-3 p-3 bg-white rounded shadow-sm">
      <div class="mb-3">
        <label for="address">비밀번호</label>
        <input type="password" class="form-control" id="password" placeholder="password" required>
        <div class="invalid-feedback">
          비밀번호를 입력해주세요.
        </div>
      </div>

      <div class="mb-3">
        <label for="address">비밀번호 확인</label>
        <input type="password" class="form-control" id="passwordok" placeholder="password" required>
        <div class="invalid-feedback">
          비밀번호 확인을 입력해주세요.
        </div>
      </div>
    </div>
      <div class="checkbox">
        <label>

        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">확인</button>
      <button class="btn btn-lg btn-primary btn-block" type="submit">로그인 하러 가기</button>

    </form>
  </div>

  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>
