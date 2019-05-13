<%@page import="selectimport.*"%>
<%@page import="member.*"%>
<%@page import="java.util.ArrayList" %>
<%@page import="SelectDrawal.*" %>
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
<th>입 금</th>

</tr>

<%
	SelectImportDAO da = new SelectImportDAO();
	ArrayList<SelectImportDTO> dtos = da.sumSelect();
	
	for(int i=0; i<dtos.size(); i++){
		SelectImportDTO dto = dtos.get(i);
		
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
<div align="center">
<input type="button" value="뒤로가기" >
</div>

</body>
</html>