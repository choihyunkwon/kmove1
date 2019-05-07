<%@page import="selectdaysum.DaysumDTO"%>
<%@page import="selectdaysum.DaysumDAO"%>
<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<h4 align="center">일별</h4>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>사용일자</th>
<th>입금</th>
<th>출금</th>
<th>사용금액</th>
<th>잔액</th>
</tr>

<%
	DaysumDAO da = new DaysumDAO();
	ArrayList<DaysumDTO> dtos = da.OracleSelect();
	
	for(int i=0; i<dtos.size(); i++){
		DaysumDTO dto = dtos.get(i);
%>

<tr align="center">
<td><%=dto.getinsertday() %></td>
<td><%=dto.getplus() %></td>
<td><%=dto.getma() %></td>
<td><%=dto.getus() %></td>
<td><%=dto.getbalance()%></td>
</tr>

<%
	}
	;
%>


</table>
<div align="center">
<input type="submit" value="뒤로가기">
</div>
</body>
</html>