<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

	<!-- Nav -->
	<c:import url="../student/nav.jsp" />


	<main role="main" class="main-container"> <c:import
		url="../student/lecturename.jsp" />
	<div class="row">
		<div class="col-md-3 order-md-1 mb-4">
			<c:import url="../common/menu.jsp" />
		</div>

		<div class="col-md-9 order-md-2">
			<div class="my-3 p-3 bg-white rounded shadow-sm">


				<table class="table table-bordered text-center">
					<tbody>
						<tr>
							<td class="table-active">강좌</td>
							<td>${lecture.lecture_name}</td>
						</tr>
						<tr>
							<td class="table-active">과제 제목</td>
							<td>${professorNotice.title}</td>
						</tr>
						<tr>
							<td class="table-active">첨부파일</td>
							<td>
								<form method="post" enctype="multipart/form-data">
									<input type="file" name="upload" multiple> <input
										type="hidden" name="id" value="${professorNotice.notice_no}">
									<input type="hidden" name="id2" value="${student.student_no}">
									<button type="submit" name="cmd" value="upload"
										class="btn btn-primary">과제제출</button>
								</form>
							</td>
						</tr>
					</tbody>
				</table>


				<!--                   <td class="table-active">제출된 파일</td>-->
				<table class="table table-hover text-center">
					<thead class="thead-light">
						<tr>
							<th>파일이름</th>
							<th>Size</th>
							<th>제출시간</th>
							<th>다운로드 / 삭제</th>
						</tr>
					</thead>
					<c:forEach var="Homework" items="${ files }">
						<tr>
							<td style="min-width: 200px">${ Homework.file_name }</td>
							<td class="text-right"><fmt:formatNumber type="number"
									value="${ Homework.file_size }" /> bytes</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
									value="${ Homework.submitdate }" /></td>
							<td><form method="post" enctype="multipart/form-data">
										<button type="submit" name="cmd" value="download" class="btn btn-primary">다운로드</button>
             							<input type="hidden" name="id" value="${professorNotice.notice_no}">
             							<input type="hidden" name="id2" value="${student.student_no}">
             							<input type="hidden" name="hw_no" value="${Homework.hw_no}">
             							<button type="submit" name="cmd" value="delete" class="btn btn-primary">삭제</button>
									</form></td>	
						</tr>
						
					</c:forEach>
				</table>



				<div style="float: right; display: inline-block; width: 900px;">
					<button class="btn btn-primary mx-2 my-sm-0" type="button"
						style="width: 100px; float: right"
						onclick="location.href='noticecontent?id=${professorNotice.notice_no}'">목록보기</button>
					<!-- <button class="btn btn-primary my-2 my-sm-0" type="button" style="width: 100px; float: right" onclick="location.href='noticecontent'">제출</button> -->
				</div>
				<label for=""><br></label>

			</div>
		</div>
	</div>
	</main>
</body>

</html>