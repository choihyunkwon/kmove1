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
<title>년별 입금</title>
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
<th id="title">입 금</th>
<th id="title">성 명</th>
<th id="title">잔 액</th>
</tr>
<%
	SelectImportDAO dadd = new SelectImportDAO();
	ArrayList<SelectImportDTO> dtott = dadd.yearSelect();
	
	for(int i=0; i<dtott.size(); i++){
		SelectImportDTO dto = dtott.get(i);
		
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
<input id="button1" type="button" value="돌아가기" onclick="selectback()" >
</div>
</body>
</html>