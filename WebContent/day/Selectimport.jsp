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
<h4 align="center">�Ϻ�</h4>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>�������</th>
<th>�� ��</th>
<th>�� ��</th>
<th>�� ��</th>

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
<input type="button" value="�ڷΰ���" >
</div>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>�� ��</th>
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