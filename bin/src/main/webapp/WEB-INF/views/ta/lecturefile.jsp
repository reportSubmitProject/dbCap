<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />


<body class="bg-light">

      <!-- Nav -->
  <c:import url="../ta/nav.jsp" />


  <main role="main" class="main-container">
    <c:import url="../ta/lecturename.jsp" />
    <div class="row">
      <div class="col-md-3 order-md-1 mb-4">
      <c:import url="../common/menu.jsp" />
      </div>

      <div class="col-md-9 order-md-2">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <table class="table table-hover text-center">
          <thead class="thead-light">
                <tr>
                  <th>파일이름</th>
                  <th>Size</th>
                  <th>제출시간</th>
                  <th>다운로드</th>
                </tr>
              </thead>
          <c:forEach var="Lecturefile" items="${ files }">
            <tr>
             <td style="min-width:200px">${ Lecturefile.file_name }</td>
             <td class="text-right">
                <fmt:formatNumber type = "number" value="${ Lecturefile.file_size }" /> bytes</td>
             <td>
                <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${ Lecturefile.file_time }" /></td>
             <td>
             <form method="post" enctype="multipart/form-data">
             	<button type="submit" name="cmd" value="downloadLecturefile" class="btn btn-primary">다운로드</button>
             	<%-- <input type="hidden" name="id" value="${lecture.lecture_no}"> --%>
             	<input type="hidden" name="no" value="${Lecturefile.no}">
             </form>
                <%-- <a class="btn btn-default btn-xs" href="/professor/lecturefile/download?no=${Lecturefile.no}">다운로드</a></td>
                <td> --%>
                
<%--                 <a class="btn btn-default btn-xs" href="lecturefile/deletefile?no=${Lecturefile.no}&id=${lecture.lecture_no}">삭제</a> 
 --%>                
             </td>
            </tr>
        </c:forEach>
            </table>
            <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }" queryStringName="pg" />

       
       
         
        </div>
      </div>
    </div>
  </main>
</body>

</html>