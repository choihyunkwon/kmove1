<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<script type ="text/javascript">
	/* function gomain() {
	 location.href="main.jsp";
} */
	function main() {
		 location.href="./main.jsp";  

}

</script><% 

/* String name = (String)session.getAttribute("name");
String id = (String)session.getAttribute("id");
Integer balance = (Integer)session.getAttribute("balance");
String gender=(String)session.getAttribute("gender");
System.out.print(gender); */

%>
<body>
<% 
String id=session.getAttribute("id").toString();
MemberDAO dao= MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);
%>
<div id="info1">
<h1>회원정보</h1>

이름 : <%=memberDTO.getName() %>  <br>
아이디 : <%=memberDTO.getUserid() %><br>
성별 : <%=memberDTO.getGender()%><br>
잔액 : <%=memberDTO.getBalance() %><br>
<input type="button"  value="홈으로" onclick="main()">

</div>

</body>
</html>