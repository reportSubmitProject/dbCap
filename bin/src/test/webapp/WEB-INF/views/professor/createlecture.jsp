<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<!-- Head -->
<c:import url="../common/head.jsp" />

<body class="bg-light">

  	<!-- Nav -->
	<c:import url="../professor/nav.jsp" />



  <main role="main" class="main-container">
    <div class="row">
      <div class="col-md-4 order-md-1 mb-4">
      <form:form method = "post" modelAttribute=LecturRegisterModel">
      <div class="my-3 p-3 bg-white rounded shadow-sm">
        <h6 class="border-bottom border-gray pb-2 mb-0">전공</h6>
        <%-- <c:forEach items="${} }"> --%>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <%--교수랑 TA--%>
              <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 11pt; font-weight: bold;" onclick="location.href='professorlecture1.html'">DB 캡스톤디자인</button>
              <button type="button" class="btn btn-outline-primary" name="button">삭제</button>
            </div>

          </div>
        </div>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
            	<%--학생--%>
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
      </form:form>
        </div>
        


      <div class="col-md-8 order-md-2">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
        <form:form method = "post" modelAttribute="lectureRegisterModel" class="form">
            <table class="table">
              <thead>
                <tr>
                  <td class="table-active">강좌명 </td>
                  <td><form:input path="lectureName"/></td>
                </tr>
              </thead>
              <tboby>
                <tr>
                  <td class="table-active">분류</td>
                  <td>
                    <div class="custom-control custom-radio">
                      <form:radiobutton path="lectureType" value="전공"/>
                      <label >전공</label>
                    </div>
                    <div class="custom-control custom-radio">
                      <form:radiobutton path="lectureType" value="교양"/>
                      <label >교양</label>
                    </div>
                  </td>
  
                  
                </tr>
              </tboby>
            </table>
            <div style="float: right; display:inline-block; width: 800px;">
              <button class="btn btn-primary mx-2 my-sm-0" type="submit" style="width: 100px; float: right">강좌 개설</button>
            </div>
            <label>
              <br>

            </label>

          </form:form>
          </div>
        </div>
      </div>     
  </main>
</body>

</html>
