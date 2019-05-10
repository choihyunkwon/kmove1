<%@page import="WithDrawal.*" %>
<%@page import="member.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("usename");
int price = Integer.parseInt(request.getParameter("price"));
int expense_alance = Integer.parseInt(request.getParameter("expense_alance"));
String member_id = request.getParameter("member_id");
String usedate = request.getParameter("usedate");

String id = session.getAttribute("id").toString();

DrawalDTO dto = new DrawalDTO();
DrawalDAO dar = DrawalDAO.getInstance();

MemberDAO dao = MemberDAO.getInstance();


dto.setUsername(username);
dto.setPrice(price);
dto.setExpense_alance(expense_alance);
dto.setMember_id(member_id);
dto.setUsedate(usedate);

dar.insert(dto);
%>
<body>
완료
</body>
</html>