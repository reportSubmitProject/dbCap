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
    <div class="my-3 p-3 bg-white rounded shadow-sm">
    <strong>&nbsp&nbsp DB 캡스톤디자인 &nbsp&nbsp&nbsp&nbsp</strong>
    <small>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 홍은지 교수님 &nbsp&nbsp / &nbsp&nbsp 학생수 :26</small>
    </div>
    <div class="row">
      <div class="col-md-3 order-md-1 mb-4">
		<!-- Menu -->
		<c:import url="../common/menu.jsp" />
      </div>

      <div class="col-md-9 order-md-2">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <div class="my-2 ">
            <select>
              <optgroup label="전공">
                <option>DB 캡스톤디자인</option>
                <option>고급 웹프로그래밍2</option>
                <option>모바일 프로그래밍</option>
              </optgroup>
              <optgroup label="교양">
                <option>기초 영자신문 읽기</option>
                <option>교양 러시아어</option>
              </optgroup>
            </select>
            <hr>
            <form class="form-inline mt-2 mt-md-0">
              <input class="form-control mr-sm-2" type="text" placeholder="게시글 이름으로 검색하기" aria-label="Search">
              <button class="btn btn btn-primary my-2 my-sm-0" type="button">검색</button>
            </form>
          </div>
          <form>

            <table class="table table-striped  text-center">
              <thead class="thead-light">
                <tr>
                  <th><input type="checkbox" id="check" name=""></th>
                  <th>번호</th>
                  <th>머리말</th>
                  <th>제목</th>
                  <th>제출기한</th>
                  <th>연장기한</th>
                  <th>파일</th>
                  <th>제출여부</th>
                  <th>성적/만점</th>
                </tr>
              </thead>
              <tbody>
                <form class="form">
                  <tr>
                    <td><input type="checkbox" id="check" name=""></td>
                    <td>4</td>
                    <td>시험</td>
                    <td>중간 고사 시험 점수</td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td><button type="button" class="btn btn-outline-primary" onclick="location.href='inputscore.html'">입력</button></td>
                  </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><input type="checkbox" id="check" name=""></td>
                  <td>3 </td>
                  <td>과제</td>
                  <td><a href="professorlecture2.html">사용자 인터페이스</a></td>
                  <td>09/17 09:00</td>
                  <td> </td>
                  <td><button type="button" class="btn btn-outline-primary">파일</button></td>
                  <td> N</td>
                  <td><button type="button" class="btn btn-outline-primary" onclick="location.href='inputscore.html'">입력</button></td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><input type="checkbox" id="check" name=""></td>
                  <td>2 </td>
                  <td>과제</td>
                  <td>캡스톤 디자인 과제 계획서 및 보고서</td>
                  <td>09/10 09:00</td>
                  <td>09/13 09:00 </td>
                  <td><button type="button" class="btn btn-outline-primary">파일</button></td>
                  <td> Y</td>
                  <td> 미부여</td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><input type="checkbox" id="check" name=""></td>
                  <td>1 </td>
                  <td>공지</td>
                  <td>과목 안내서 및 조 생성</td>
                  <td> </td>
                  <td> </td>
                  <td> </td>
                  <td> </td>
                  <td> </td>
                </tr>
              </tbody>
            </table>
            <div style="float: right; display:inline-block; width: 900px;">

              <%--교수만--%>
              <button class="btn btn-primary mx-2 my-sm-0" type="button" style="width: 100px; float: right">삭제</button>
              <button class="btn btn-primary my-2 my-sm-0" type="button" style="width: 100px; float: right" onclick="location.href='posting.html'">작성</button>
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
