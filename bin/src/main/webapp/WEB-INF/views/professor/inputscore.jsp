<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        
       
        
          <form method="post">
          <table class="table table-striped  text-center">
            <thead class="thead-light">
              <tr>
              	<th>과제번호</th>
                <th>학번</th>
                <th>이름</th>
                <th>학과</th>
                <th>채점</th>
                <th>제출정보</th>
                <th>성적</th>
                <th>등수</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach var="homework" items="${homeworks}">
                <tr>
                  <td>
                  	<input type="hidden" name="hw_no" value="${ homework.hw_no }" />
                  	${homework.hw_no}
                  </td>           
                  <td>${homework.student.id } </td>
                  <td>${homework.student.name } </td>
                  <td>${homework.student.department.department_name}</td>
                  <td><button type="submit" name="cmd" value="downloadHomework" class="btn btn-outline-primary" >열람</button></td>
                  <td>
                   <c:set var="submitdate" value="${homework.submitdate}" />
                  <fmt:formatDate value="${submitdate}" var="submitdate" pattern="yyyy-MM-dd hh:mm:ss"/>
                   <c:choose>
                  	<c:when test="${professorNotice.deadline >= submitdate}">
				  		${submitdate}
				  	</c:when>
                  	<c:when test="${professorNotice.deadline < submitdate and submitdate <= professorNotice.deadline_add}">
                  		<div style="background-color: yellow;">${submitdate}</div>
				  	</c:when>
				  	<c:when test="${professorNotice.deadline_add <= submitdate}">
				  		<div style="background-color: red;">${submitdate}</div>
				  	</c:when>
				  	<c:when test="${professorNotice.deadline < '무기한'}">
				  		${submitdate}
				  	</c:when>
                  </c:choose>   
				  </td>
                  <td>
                  	<input type="text" class="form-control" name="grade" value="${homework.grade}" style="width:50px"  />
                  </td>
                  <td>
                  	<input type="text" class="form-control" name="ranking" value="${homework.ranking}" style="width:50px"  />
                  </td>
                </tr>
                </c:forEach>
            </tbody>
          </table>
		
			<div style="float: right; display:inline-block; width: 900px;">
            	<button type="button" class="btn btn-primary mx-2 my-sm-0" style="width: 100px; float: right" onclick="location.href='noticecontent?id=${professorNotice.notice_no}'">목록</button>
            	<c:if test="${fn:length(homeworks) > 0}">
            	<button type="submit"class="btn btn-primary my-2 my-sm-0" name="cmd" value="input" style="width: 100px; float: right" >점수입력</button>
          		<button type="submit"class="btn btn-primary mx-2 my-sm-0" name="cmd" value="rank" style="width: 100px; float: right" >등수산출</button>
          		</c:if>
          	</div>
          	<label></label>
         <label></label>
          	
		</form>
		
         <label></label>
         <label></label>
          
        </div>
        
	</div>
	</main>
</body>

</html>