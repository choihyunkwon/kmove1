<%@page import="SelectDrawal.*"%>
<%@page import="member.*"%>
<%@page import="java.util.ArrayList" %>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function selectback(){
		window.location.href="../main.jsp";
	}
</script>

</head>
<body>
<h4 align="center">�Ϻ�</h4>
<table border="1" align="center" style="width:80%; heigh:450px" >
<tr align="center">
<th>�������</th>
<th>�� ��</th>
<th>���ó</th>
<th>�� ��</th>

</tr>

<%
	SelectDrawalDAO da = new SelectDrawalDAO();
	ArrayList<SelectDrawalDTO> dtos = da.OracleDrawal();

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
<td><%=dto.getMember_id()%></td>
<td><%=dto.getExpense_alance()%></td>
</tr>

<%
	}}
	;
%>


</table>
<div align="center">
<input type="button" value="���ư���" onclick="selectback()">
</div>
</body>
</html>