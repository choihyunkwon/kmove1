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

<script type="text/javascript">
	function logoutpro() {
		if(window.confirm("로그아웃 하시겠습니까")) //alert창 띄우기
			{
		window.location.href="./logoutpro.jsp";
	}
	}
</script>
</head>
<body>
<% 
String id=session.getAttribute("id").toString();
MemberDAO dao= MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);
%>
<div id="center">
<a href="./logininfo.jsp">회원정보</a>
</div>
<div id="title1">
<h1>어서오세요  <%=memberDTO.getName() %>  님 </h1>
<h2>현재 총 잔액은 <%=memberDTO.getBalance()%> 입니다</h2>
</div>
<hr>
<div id="write1">
<h2>오늘의 지출액은   　<input type="submit" value="확인하기"/> </h2>
<h2>이달의 지출액은  　 <input type="submit" value="확인하기"/></h2>
<h2>올해의 지출액은   　<input type="submit" value="확인하기"/></h2>
</div>
<div id="button1">
<input type="submit" value="가계부 작성"/> 　<input type="submit" value="잔액충전"/>
<input type="button" value="로그아웃" onclick="logoutpro()"/>

</div>

</body>
</html>