
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<% request.setCharacterEncoding("UTF-8"); %>
<%
MemberDAO da = new MemberDAO(); 
MemberDTO dt = new MemberDTO(); 
dt.setName(request.getParameter("name"));
dt.setUserid(request.getParameter("userid"));
dt.setUserpwd(request.getParameter("userpwd"));
dt.setGender(request.getParameter("gender"));
dt.setBalance(0);


da.join(dt);

%>
<body>
</body>
<script type="text/javascript">
		location.href="./login.jsp";
	alert('회원가입이 완료되었습니다.');

</script>
</html>