

<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="WithDrawal.WithDrawalDTO"%>
<%@page import="WithDrawal.WithDrawalDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입금</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String usename = request.getParameter("usename");
int price = Integer.parseInt(request.getParameter("price"));
String usedate = request.getParameter("usedate");

String id = session.getAttribute("id").toString();

WithDrawalDTO dto = new WithDrawalDTO();
WithDrawalDAO da = WithDrawalDAO.getInstance();

MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);


Integer balance = memberDTO.getBalance();
int Expense_alance = balance - price;

dto.setUsedate(usedate);
dto.setPrice(price);
dto.setUsename(request.getParameter("usename"));
dto.setMember_id(memberDTO.getUserid());
dto.setExpense_alance(Expense_alance);
System.out.println(usename);
System.out.println(usedate);
da.insert(dto);
da.update(dto);
%>

<body>
입력완료<br>
<input type=button onclick="self.close()" value="확인">
</body>
</html>