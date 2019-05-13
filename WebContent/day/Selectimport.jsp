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
<title>수입 내역</title>
<link href="../css/Drawal.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function selectback(){
		window.location.href="../main.jsp";
	}
</script>

</head>
<body>
<h3 align="center">일별</h3>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th id="title">사용일자</th>
<th id="title">입 금</th>
<th id="title">성 명</th>
<th id="title">잔 액</th>

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
<input id="button1" type="button" value="돌아가기" onclick="selectback()" >
</div>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th id="title">입 금</th>
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