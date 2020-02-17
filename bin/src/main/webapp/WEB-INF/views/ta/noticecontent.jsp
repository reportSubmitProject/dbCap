<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

  <!-- Nav -->
	<c:import url="../ta/nav.jsp" />

  <main role="main" class="main-container">
   <c:import url="../professor/lecturename.jsp" />
    <div class="row">
      <div class="col-md-3 order-md-1 mb-4">
        <!-- Menu -->
		<c:import url="../common/menu.jsp" />
      </div>

      <div class="col-md-9 order-md-2">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
       

            <table class="table table-bordered  text-center">
              <tbody>
                <tr>
                  <td class="table-active" width="15%">제목 </td>
                  <td> ${professorNotice.title}</td>
                </tr>
                <tr>
                  <td class="table-active">내용</td>
                  <td style="white-space:pre;">${professorNotice.content}</td>

                </tr>
                <tr>
                  <td class="table-active">첨부파일 </td>
                  <td><button type="button" class="btn btn-outline-primary">열람</button></td>
                </tr>
                <tr>
                  <td class="table-active">만점</td>
                  <td>${professorNotice.perfect_score}</td>
                </tr>
                <tr>
                  <td class="table-active">제출기한</td>
                  <td>${professorNotice.deadline}</td>
                </tr>
                <tr>
                  <td class="table-active">연장기한</td>
                  <td>${professorNotice.deadline_add}</td>
                </tr>
              </tbody>
            </table>
            <table class="table text-center">
                <c:forEach var="comment" items="${comment}">
                  <tr>
                <td style="width: 100px">${comment.user.name}</td>
                <td style="width: 700px">${comment.content}</td>
                <td style="width: 200px">
                  <fmt:formatDate value="${comment.notice_date}" pattern="yyyy-MM-dd" />
                </td>
                    <c:if test="${comment.user.no == user.no}" >
                      <td>
                        <form method="post">
                        <input type="hidden" name="comment_no" value="${comment.comment_no}"/>
                        <input type="hidden" name="notice_no" value="${professorNotice.notice_no}"/>
                        <button class="btn btn-outline-primary" type="submit" name="cmd" value="deleteComment" style="height:30px; width:45px; font-size:13px; text-align: center;">X</button>
                        </form>
                      </td>
                      </c:if>
                      </tr>
              </c:forEach>
            </table>
          <tr>
            <form method="post">
                <textarea name="content" cols="50" rows="1"></textarea>
              <input type="hidden" name="notice_no" value="${professorNotice.notice_no}">
              <button class="btn btn-outline-primary" type="submit" name="cmd" value="insertComment">입력</button>
            </form>
          </tr>


            <div style="float: right; display:inline-block; width: 900px;">
	
              <button class="btn btn-primary my-sm-0" type="button" style="width: 100px; float: right" onclick="location.href='notice?id=${lecture.lecture_no}'">목록보기</button>
              <%--교수랑 TA만--%>
              <button class="btn btn-primary mx-2 my-sm-0" type="button" style="width: 100px; float: right" onClick = " location.href='/ta/inputscore?notice_no=${professorNotice.notice_no}'">점수부여</button>
          	
          	</div>
            <label for=""><br></label>

        </div>
      </div>
    </div>
  </main>
</body>

</html>
