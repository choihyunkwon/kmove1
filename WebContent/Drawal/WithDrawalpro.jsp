

<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="WithDrawal.WithDrawalDTO"%>
<%@page import="WithDrawal.WithDrawalDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�Ա�</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String usename = request.getParameter("usename");
int price = Integer.parseInt(request.getParameter("price"));
String member_id = request.getParameter("member_id");
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
dto.setUsename(usename);
dto.setMember_id(memberDTO.getUserid());
dto.setExpense_alance(Expense_alance);
da.insert(dto);
da.update(dto);
%>

<body>
�Է¿Ϸ�
</body>
</html>