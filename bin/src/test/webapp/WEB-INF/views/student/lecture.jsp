<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <%--학생--%>
                <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 9pt; font-weight: bold;" onclick="location.href='lecturefile'">DB 캡스톤디자인
                <span class="d-block" style="font-weight: normal">홍은지 교수님</span></button>
                <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
              </div>

            </div>
          </div>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <strong class="text-gray-dark">모바일 프로그래밍<br /><small> 이승진 교수님</small></strong>
                <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
              </div>

            </div>
          </div>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <strong class="text-gray-dark">알고리즘<br /><small> 이승진 교수님</small></strong>
                <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
              </div>
            </div>
          </div>

        </div>

        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <h6 class="border-bottom border-gray pb-2 mb-0">교양</h6>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <strong class="text-gray-dark">드로잉 워크샵<br /><small> 유상신 교수님</small></strong>
                <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
              </div>
            </div>
          </div>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <strong class="text-gray-dark">기초영자신문읽기<br /><small> 노은하 교수님</small></strong>
                <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
              </div>
            </div>
          </div>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <strong class="text-gray-dark">교양 러시아어<br /><small> 임형 교수님</small></strong>
                <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-8 order-md-2">

    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="text" placeholder="강좌 검색하기" aria-label="Search">
        <button class="btn btn-primary my-2 my-sm-0" type="submit">검색</button>
      </form>
    </div>


    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <h6 class="border-bottom border-gray pb-2 mb-0">강좌 추가하기</h6>
      <div class="media text-muted pt-3">
        <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
          <div class="d-flex justify-content-between align-items-center w-100">
            <strong class="text-gray-dark">고급 웹프로그래밍 1<br /><small> 이승진 교수님</small></strong>
            <button type="button" class="btn btn-primary" name="button">추가</button>
          </div>

        </div>
      </div>
      <div class="media text-muted pt-3">
        <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
          <div class="d-flex justify-content-between align-items-center w-100">
            <strong class="text-gray-dark">고급 웹프로그래밍 2<br /><small> 이승진 교수님</small></strong>
            <button type="button" class="btn btn-primary" name="button">추가</button>
          </div>

        </div>
      </div>
      <div class="media text-muted pt-3">
        <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
          <div class="d-flex justify-content-between align-items-center w-100">
            <strong class="text-gray-dark">웹프로그래밍<br /><small> 이승진 교수님</small></strong>
            <button type="button" class="btn btn-primary" name="button">추가</button>
          </div>
        </div>
      </div>
      <div class="media text-muted pt-3">
        <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
          <div class="d-flex justify-content-between align-items-center w-100">
            <strong class="text-gray-dark">웹프로그래밍<br /><small> 박정식 교수님</small></strong>
            <button type="button" class="btn btn-primary" name="button">추가</button>
          </div>
        </div>
      </div>
      <div class="media text-muted pt-3">
        <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
          <div class="d-flex justify-content-between align-items-center w-100">
            <strong class="text-gray-dark">웹 개발 입문<br /><small> 김덕봉 교수님</small></strong>
            <button type="button" class="btn btn-primary" name="button">추가</button>
          </div>
        </div>
      </div>
      <img src="pagination.png" alt="pagination" width="430" height="50" style="display: block; margin: 0px auto;" />
    </div>
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
