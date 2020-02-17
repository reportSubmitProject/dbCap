<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

    <!-- Nav -->
  <c:import url="../student/nav.jsp" />


  <main role="main" class="main-container">

    <div class="row">
      <div class="col-md-4 order-md-1 mb-4">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <h6 class="border-bottom border-gray pb-2 mb-0">전공</h6>
           <c:forEach var="lecture" items="${ studentlectures1 }">
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <strong class="text-gray-dark">${lecture.lecture_name}<br /><small></small></strong>
                <form method="post">
                  <input type="hidden" name="id" value="${ lecture.lecture_no }" />
                  <button type="submit" name="cmd" value="delete" class="btn btn-outline-primary">삭제</button>
                  </form>
              </div>
            </div>
          </div>
            </c:forEach>
        </div>

        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <h6 class="border-bottom border-gray pb-2 mb-0">교양</h6>
          <c:forEach var="lecture" items="${ studentlectures2 }"> 
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

      <div class="col-md-8 order-md-2">

    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <form method="post" class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="text" name="search" value="${search}" autocomplete="off" placeholder="강좌 검색하기" aria-label="Search">
        <button class="btn btn-primary my-2 my-sm-0" type="submit" name="cmd" value="search">검색</button>
      </form>
    </div>


    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <h6 class="border-bottom border-gray pb-2 mb-0">강좌 추가하기</h6>
      <c:forEach var="lecture" items="${ lectures }">
      <div class="media text-muted pt-3">
        <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
          <div class="d-flex justify-content-between align-items-center w-100">
            <strong class="text-gray-dark">${lecture.lecture_name}<br /><small> ${lecture.professor_lecture.professor.name} 교수님</small></strong>
            <form method="post">
                  <input type="hidden" name="id" value="${ lecture.lecture_no }" />
                  <button type="submit" name="cmd" value="insert" class="btn btn-primary">추가</button>
                  </form>
          </div>

        </div>
      </div>
      </c:forEach>
    </div>

      <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" queryStringName="pg" />

  </div>
</div>

  </main>
  <footer class="my-5 pt-5 text-muted text-center text-small">

  </footer>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
  <script src="../../assets/js/vendor/popper.min.js"></script>
  <script src="../../dist/js/bootstrap.min.js"></script>
  <script src="../../assets/js/vendor/holder.min.js"></script>
  <script src="offcanvas.js"></script>
</body>

</html>
