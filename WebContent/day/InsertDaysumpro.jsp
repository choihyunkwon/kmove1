<%@page import="insertdaysum.InsertdaysumDTO"%>
<%@page import="insertdaysum.InsertdaysumDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% request.setCharacterEncoding("UTF-8");

String insertday = request.getParameter("insertday");
int plus = Integer.parseInt(request.getParameter("plus"));
int ma = Integer.parseInt(request.getParameter("ma"));
int us = Integer.parseInt(request.getParameter("us"));

InsertdaysumDTO dto = new InsertdaysumDTO();
dto.setinsertday(insertday);
dto.setplus(plus);
dto.setma(ma);
dto.setus(us);

InsertdaysumDAO da = InsertdaysumDAO.getInstance();
da.insert(dto);
%>
<body>
입력완료
</body>
</html>