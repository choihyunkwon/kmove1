<%@ page import="member.MemberDAO"%>
<%@ page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<%
MemberDAO da = new MemberDAO(); 
//MemberDTO dt = new MemberDTO(); 
//dt.setUserid(request.getParameter("name"));
//dt.setUserid(request.getParameter("userid"));
//dt.setUserid(request.getParameter("userpwd"));
//dt.setUserid(request.getParameter("gender"));

//da.join(dt);
%>
<body>
회원가입 완료
</body>
</html>