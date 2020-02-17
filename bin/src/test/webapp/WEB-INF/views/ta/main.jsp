<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%

Calendar cal = Calendar.getInstance();
String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
if(strYear != null)
{
  year = Integer.parseInt(strYear);
  month = Integer.parseInt(strMonth);
}else{
}

//년도/월 셋팅

cal.set(year, month, 1);
int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;
//오늘 날짜 저장.
Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));
%>
<!doctype html>
<html lang="en">
  <!-- Head -->
<c:import url="../common/head.jsp" />

  <body class="bg-light">

    <!-- Nav -->
  <c:import url="../ta/nav.jsp" />
  
  <div class="main-container">
      <div class="row">
        <div class="col-md-3 order-md-1 mb-4">
            <div class="my-3 p-3 bg-white rounded shadow-sm">
          <h6 class="border-bottom border-gray pb-2 mb-0">강좌</h6>
          <div class="text-gray-dark">
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 11pt; font-weight: bold;" onclick="location.href='talecture1.html'">DB 캡스톤디자인</button>
              </div>
            </div>
          </div>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 11pt; font-weight: bold;" >Python 프로그래밍</button>
              </div>
            </div>
          </div>
          <div class="media text-muted pt-3">
            <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
              <div class="d-flex justify-content-between align-items-center w-100">
                <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 11pt; font-weight: bold;">C 프로그래밍</button>
              </div>
            </div>
          </div>
        </div>


          <small class="d-block text-right mt-3">
            <a href="addlecture.html">강좌 편집</a>

          </small>
        </div>
          </div>

        <div class="col-md-6 order-md-2">
          <div class="my-3 p-3 bg-white rounded shadow-sm">
        <h6 class="border-bottom border-gray pb-2 mb-0">타임 라인</h6>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 10pt; font-weight: bold;" onclick="location.href='talecture1.html'">DB 캡스톤디자인
              <span class="d-block" style="font-weight: normal">[과제]사용자 인터페이스</span></button>
            </div>
          </div>
        </div>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 10pt; font-weight: bold;" onclick="location.href=''">Python 프로그래밍
              <span class="d-block" style="font-weight: normal">[과제] 교재 60페이지 구현해보기</span></button>
            </div>
          </div>
        </div>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <button type="button" class="btn btn-block" style="color: #6f6f6f; text-align: left; font-size: 10pt; font-weight: bold;" onclick="location.href=''">C프로그래밍
              <span class="d-block" style="font-weight: normal">[공지] 고정 자리 지정하기</span></button>
            </div>
          </div>
        </div>
        <small class="d-block text-right mt-3">
          <a href="#"> </a>
        </small>
      </div>
        </div>
      <div class="col-md-3 order-md-3">
        <div class="my-3 p-3 bg-white rounded shadow-sm">
          <h6 class="border-bottom border-gray pb-2 mb-0">달력</h6>
          <div>
            <table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#F3F9D7" style="border:1px solid #CED99C">
            <tr>
             <td align="center" >   
                    &nbsp;&nbsp;
                    <%=year%>년
                    <%=month+1%>월
                    &nbsp;&nbsp;
             </td>
       </tr>
       </table>

<table border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF" >
<thead>
<tr bgcolor="#CECECE">
       <td width='40px'>
       <div align="center"><font color="red">일</font></div>
       </td>
       <td width='40px'>
       <div align="center">월</div>
       </td>
       <td width='40px'>
       <div align="center">화</div>
       </td>
       <td width='40px'>
       <div align="center">수</div>
       </td>
       <td width='40px'>
       <div align="center">목</div>
       </td>
       <td width='40px'>
       <div align="center">금</div>
       </td>
       <td width='40px'>
       <div align="center"><font color="#529dbc">토</font></div>
       </td>

</tr>

</thead>

<tbody>

<tr>
<%
//처음 빈공란 표시
for(int index = 1; index < start ; index++ )
{
  out.println("<td >&nbsp;</td>");
  newLine++;
}

for(int index = 1; index <= endDay; index++)
{
       String color = "";

       if(newLine == 0){
    	   color = "RED";
    	   }else if(newLine == 6){
    	   color = "#529dbc";
    	   }else{
    		   color = "BLACK"; };

       String sUseDate = Integer.toString(year); 
       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);

       int iUseDate = Integer.parseInt(sUseDate);

       String backColor = "#EFEFEF";
       if(iUseDate == intToday ) {
             backColor = "#c9c9c9";
       }
       out.println("<TD valign='top' align='left' height='30px' bgcolor='"+backColor+"' nowrap>");
       %>
       <font color='<%=color%>'>
             <%=index %>
       </font>
       <%
       out.println("<br>");
       out.println("<br>");
       //기능 제거 
       out.println("</td>");
       newLine++;
       if(newLine == 7)
       {
         out.println("</tr>");
         if(index <= endDay)
         {
           out.println("<tr>");
         }
         newLine=0;
       }
}
//마지막 공란 LOOP
while(newLine > 0 && newLine < 7)
{
  out.println("<td>&nbsp;</td>");
  newLine++;
}
%>
</tr>
</tbody>
</table>

          </div>

        </div>
      </div>
      </div>
      </div>
    </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">

      </footer>
    </div>
  </body>
</html>
