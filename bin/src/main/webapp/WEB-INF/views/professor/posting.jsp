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
	<c:import url="../professor/nav.jsp" />

	<main role="main" class="main-container"> <c:import
		url="../professor/lecturename.jsp" />
	<div class="row">
		<div class="col-md-3 order-md-1 mb-4">
			<!-- Menu -->
			<c:import url="../common/menu.jsp" />
		</div>

		<div class="col-md-9 order-md-2">
			<div class="my-3 p-3 bg-white rounded shadow-sm">
				<form:form method="post" modelAttribute="professorNotice">
					<table class="table table-bordered">
						<tr>
							<td class="table-active">제목</td>
							<td><form:input path="title" class="form-control" /></td>
						</tr>
						<tr>
							<td class="table-active">내용</td>
							<td><form:textarea path="content" class="form-control"
									style="height: 300px; overflow:auto" /></td>
						</tr>
						<%-- <tr>
							<td class="table-active">첨부파일</td>
							<td>
								<form method="post" enctype="multipart/form-data">
									<input type="file" name="upload" multiple> <input
										type="hidden" name="id" value="${lecture.lecture_no}">
									<button type="submit" name="cmd" value="uploadHomework"
										class="btn btn-primary">업로드</button>
								</form> 
								<c:forEach var="UploadedFile" items="${ files }">
									<tr>
										<td style="min-width: 200px">${ UploadedFile.file_name }</td>
										<td class="text-right"><fmt:formatNumber type="number"
												value="${ UploadedFile.file_size }" /> bytes</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
												value="${ UploadedFile.file_time }" /></td>
										<td>
											<form method="post" enctype="multipart/form-data">
												<button type="submit" name="cmd" value="download"
													class="btn btn-primary">다운로드</button>
												<input type="hidden" name="id"
													value="${UploadedFile.lecture_no}"> <input
													type="hidden" name="no" value="${UploadedFile.no}">
												<button type="submit" name="cmd" value="deletefile"
													class="btn btn-primary">삭제</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</td>
						</tr> --%>
						<tr>
							<td class="table-active">만점</td>
							<td><form:input path="perfect_score" class="form-control" 
									style="width: 50px" autocomplete="off"/></td>
						</tr>
						<tr>
							<td class="table-active">제출기한</td>
							<td><input type="text" name="deadline"
								class="datetimepicker" autocomplete="off" value="무기한"/></td>
						</tr>
						<tr>
							<td class="table-active">연장기한</td>
							<td><input type="text" name="deadline_add"
								class="datetimepicker" autocomplete="off" value=""/></td>
						</tr>
					</table>
					<div style="float: right; display: inline-block; width: 900px;">
						<button class="btn btn-primary mx-2 my-sm-0" type="submit"
							style="width: 100px; float: right"
							onclick="location.href='notice?id=${lecture.lecture_no}'">목록보기</button>
						<button class="btn btn-primary my-2 my-sm-0" type="submit"
							style="width: 100px; float: right"
							onclick="location.href='posting?id=${lecture.lecture_no}'">등록</button>
					</div>
					<label></label>
					<label></label>
				</form:form>
			</div>
		</div>
	</div>
	</main>
</body>

<link rel="stylesheet"
	href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script
	src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>

<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script type="text/javaScript" language="javascript" defer="defer">
	$(document).ready(function() {

		$("#advert_start").datepicker({

			dateFormat : 'yy-mm-dd'

		});

		$("#advert_end").datepicker({

			dateFormat : 'yy-mm-dd'

		});

	});
	$(function() {
		$('.datetimepicker').appendDtpicker({
			'locale' : 'ko',
			'autodateOnStart' : false
		});
	});
</script>

</html>
