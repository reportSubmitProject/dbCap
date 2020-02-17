<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

    <!-- Nav -->
  <c:import url="../professor/nav.jsp" />

  <main role="main" class="main-container">
    <c:import url="../professor/lecturename.jsp" />
    <div class="row">
      <div class="col-md-3 order-md-1 mb-4">
		<!-- Menu -->
		<c:import url="../common/menu.jsp" />
      </div>

      <div class="col-md-9 order-md-2">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <form>

            <table class="table table-hover  text-center">
              <thead class="thead-light">
                <tr>
                  <th style="width: 350px">제목</th>
                  <th>제출기한</th>
                  <th>연장기한</th>
                  <!-- <th>파일</th> -->
  
                  <th>성적/만점</th>
                </tr>
              </thead>
              <tbody>
                <form class="form">
                <c:forEach var="professorNotice" items="${professorNotices}"> 
				 <tr onClick = " location.href='noticecontent?id=${professorNotice.notice_no}' ">				
                  <td>${professorNotice.title}</td>
                  <td>${professorNotice.deadline}</td>
                  <td>${professorNotice.deadline_add}</td>
                  <!-- <td><button type="button" class="btn btn-outline-primary">파일</button></td> -->
   
                  <td>${professorNotice.perfect_score}</td>
                 </tr>
                </c:forEach>
                </form>
              </tbody>
              
            </table>
            
             <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" queryStringName="pg" />
            <div style="float: right; display:inline-block; width: 900px;">

              <%--교수만--%>
              <!-- <button class="btn btn-primary mx-2 my-sm-0" type="button" style="width: 100px; float: right">삭제</button> -->
              <button class="btn btn-primary my-2 my-sm-0" type="button" style="width: 100px; float: right" onclick="location.href='posting?id=${lecture.lecture_no}'">작성</button>
            </div>
			<label>
			</label>
			<label>
			</label>
        </div>

        </form>
      </div>
    </div>
    </div>
  </main>
</body>

</html>
