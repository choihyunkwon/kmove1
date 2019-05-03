<%@page import="pupop.PupopDTO"%>
<%@page import="pupop.PupopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<%
PupopDAO da = new PupopDAO(); 
PupopDTO dt = new PupopDTO(); 
dt.setDate(request.getParameter("date"));
dt.setPrice(request.getParameter("price"));
dt.setMember_id(request.getParameter("member_id"));

da.pupop(dt);
%>
<body>
지출금액확인
</body>
</html>