<%@page import="SelectDrawal.*" %>
<%@page import="member.*" %>
<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금</title>
</head>
<body>
<h4 align="center">일별</h4>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>사용일자</th>
<th>사용금액</th>
<th>사용처</th>
<th>잔액</th>

</tr>

<%
	SelectDrawalDAO dar = new SelectDrawalDAO();
	ArrayList<SelectDrawalDTO> dtos = dar.OracleDrawal();
	
	for(int i=0; i<dtos.size(); i++){
		SelectDrawalDTO dto = dtos.get(i);
		
		String id = session.getAttribute("id").toString();
		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO memberDTO = dao.getUserInfo(id);
		
		
		if(memberDTO.getName().equals(dto.getMember_id())){
		
%>

<tr align="center">
<td><%=dto.getUsername() %></td>
<td><%=dto.getPrice() %></td>
<td><%=dto.getExpense_alance() %></td>
<td><%=dto.getMember_id() %></td>'
<td><%=dto.getUsedate() %></td>
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