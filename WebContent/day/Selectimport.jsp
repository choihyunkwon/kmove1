<%@page import="selectimport.*"%>
<%@page import="member.*"%>
<%@page import="java.util.ArrayList" %>

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
<th>�Ա�</th>
<th>���̵�</th>

</tr>

<%
	SelectImportDAO da = new SelectImportDAO();
	ArrayList<SelectImportDTO> dtos = da.OracleSelect();
	
	for(int i=0; i<dtos.size(); i++){
		SelectImportDTO dto = dtos.get(i);
		
        String id = session.getAttribute("id").toString();
        
        MemberDAO dao = MemberDAO.getInstance();
        MemberDTO memberDTO = dao.getUserInfo(id);
		if(id.equals(memberDTO.getName())){
%>

<tr align="center">
<td><%=dto.getComedate() %></td>
<td><%=dto.getComemoney() %></td>
<td><%= memberDTO.getName() %></td>
</tr>

<%
	}}
	;
%>


</table>
<div align="center">
<input type="button" value="�ڷΰ���" >
</div>
</body>
</html>