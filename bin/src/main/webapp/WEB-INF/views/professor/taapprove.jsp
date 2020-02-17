<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">
	<!-- Nav -->
	<c:import url="../professor/nav.jsp" />
	<main role="main" class="container">
	
	<div class="my-3 p-3 bg-white rounded shadow-sm">
			<c:choose>
				<c:when test="${ professor.ta_no > 0}">
				<h6 class="border-bottom border-gray pb-2 mb-0">Ta 정보</h6>
				<label></label>
					<div class="row">
						<div class="mb-3 order-md-1 mx-3">
							<label>TA 아이디</label>
							<div class="student_number">
								<span class="student_number-text">${ta.ta_id}</span>
							</div>
						</div>

						<div class="mb-3 order-md-2 mx-5">
							<label>TA 비밀번호</label>
							<div class="student_number">
								<span class="student_number-text">${ta.password}</span>
							</div>
						</div>
					</div>
				</c:when>

				<c:otherwise>
				<h6 class="border-bottom border-gray pb-2 mb-0">Ta 정보</h6>
				<label></label>
					<div class="mb-1 mx-1">
						<div class="student_number">
							<button class="btn btn-primary  my-sm-0" type="button"
								onclick="location.href='createta'" style="width: 140px;">TA
								생성하기</button>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	

		<div class="my-3 p-3 bg-white rounded shadow-sm">
			<h6 class="border-bottom border-gray pb-2 mb-0">미승인</h6>
			<c:forEach var="lecture" items="${taNoLecture}">
			<div class="media text-muted pt-3">
				<img
					data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1"
					alt="" class="mr-2 rounded">
				<div
					class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
					<div
						class="d-flex justify-content-between align-items-center w-100">
						<strong class="text-gray-dark">${lecture.lecture_name}</strong>
						<form method="post">
                  		<input type="hidden" name="id" value="${ lecture.lecture_no }" />
                  		<button type="submit" name="cmd" value="yes" class="btn btn-primary">승인</button>
                  		</form>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	
		<div class="my-3 p-3 bg-white rounded shadow-sm">
			<h6 class="border-bottom border-gray pb-2 mb-0">승인</h6>
			<c:forEach var="lecture" items="${taYesLecture}">
			<div class="media text-muted pt-3">
				<img
					data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1"
					alt="" class="mr-2 rounded">
				<div
					class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
					<div
						class="d-flex justify-content-between align-items-center w-100">
						<strong class="text-gray-dark">${lecture.lecture_name}</strong>
						<form method="post">
                  		<input type="hidden" name="id" value="${ lecture.lecture_no }" />
                  		<button type="submit" name="cmd" value="no" class="btn btn-outline-primary">취소</button>
                  		</form>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>

	</main>
	<footer class="my-5 pt-5 text-muted text-center text-small"> </footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
	<script src="../../assets/js/vendor/popper.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<script src="../../assets/js/vendor/holder.min.js"></script>
	<script src="offcanvas.js"></script>
</body>

</html>
