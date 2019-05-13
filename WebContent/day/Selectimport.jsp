<%@page import="selectimport.*"%>
<%@page import="member.*"%>
<%@page import="java.util.ArrayList" %>
<%@page import="SelectDrawal.*" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h4 align="center">일별</h4>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>사용일자</th>
<th>입 금</th>
<th>성 명</th>
<th>잔 액</th>

</tr>

<%
	SelectImportDAO da = new SelectImportDAO();
	ArrayList<SelectImportDTO> dtos = da.OracleSelect();
	
	for(int i=0; i<dtos.size(); i++){
		SelectImportDTO dto = dtos.get(i);
		
	String id = session.getAttribute("id").toString();
	MemberDAO dao = MemberDAO.getInstance();
	MemberDTO memberDTO = dao.getUserInfo(id);
	
	
	if(memberDTO.getUserid().equals(dto.getmember_id())){
		
%>

<tr align="center">
<td><%=dto.getComedate() %></td>
<td><%=dto.getComemoney() %></td>
<td><%=dto.getmember_id()%></td>
<td><%=dto.getimport_balance()%></td>
</tr>

<%
	}
	}
	;
%>


</table>
<div align="center">
<input type="button" value="뒤로가기" >
</div>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>입 금</th>
</tr>

<%
	SelectImportDAO dad = new SelectImportDAO();
	ArrayList<SelectImportDTO> dtot = dad.sumSelect();
	
	for(int i=0; i<dtot.size(); i++){
		SelectImportDTO dto = dtot.get(i);
		
		String id = session.getAttribute("id").toString();
		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO memberDTO = dao.getUserInfo(id);
		if(memberDTO.getUserid().equals(dto.getmember_id())){
		
%>

<tr align="center">
<td><%=dto.getComemoney() %></td>
</tr>

<%
	}
	}
	;
%>


</table>

</body>
</html>