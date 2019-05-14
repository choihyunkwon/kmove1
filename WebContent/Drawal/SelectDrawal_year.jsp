<%@page import="SelectDrawal.*"%>
<%@page import="member.*"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지출 내역</title>
<link href="../css/Drawal.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
   function selectback(){
      window.location.href="../main.jsp";
   }
</script>
</head>
<body>
<h3 align="center">연별</h3>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th id="title">사용일자</th>
<th id="title">출 금</th>
<th id="title">사용처</th>
<th id="title">잔 액</th>
</tr>

<%
   SelectDrawalDAO da = new SelectDrawalDAO();
   ArrayList<SelectDrawalDTO> dtos = da.OracleDrawal_year();

   for(int i=0; i<dtos.size(); i++){
      SelectDrawalDTO dto = dtos.get(i);
      
   String id = session.getAttribute("id").toString();
   MemberDAO dao = MemberDAO.getInstance();
   MemberDTO memberDTO = dao.getUserInfo(id);
   
   if(memberDTO.getUserid().equals(dto.getMember_id())){   
%>

<tr align="center">
<td><%=dto.getUsedate() %></td>
<td><%=dto.getPrice() %></td>
<td><%=dto.getUsename()%></td>
<td><%=dto.getExpense_alance()%></td>
</tr>
<%
   }}
   ;
%>
</table>

<br>
<div id="button">
<input id="button1" type="button" value="돌아가기" onclick="selectback()">
</div>
</body>
</html>