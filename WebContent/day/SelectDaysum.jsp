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
<h4 align="center">�Ϻ�</h4>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>�������</th>
<th>�Ա�</th>
<th>���</th>
<th>���ݾ�</th>
<th>�ܾ�</th>
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
<input type="submit" value="�ڷΰ���">
</div>
</body>
</html>