<%@page import="insertimport.*"%>
<%@page import="member.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입금</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String comedate = request.getParameter("comedate");
int comemoney = Integer.parseInt(request.getParameter("comemoney"));



String id = session.getAttribute("id").toString();

InsertimportDTO dto = new InsertimportDTO();
InsertimportDAO da = InsertimportDAO.getInstance();

MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);


Integer balance = memberDTO.getBalance();
int import_balance = balance + comemoney;

dto.setcomedate(comedate);
dto.setcomemoney(comemoney);
dto.setmember_id(memberDTO.getUserid());
dto.setimport_balance(import_balance);
da.insert(dto);
da.update(dto);
%>

<body>
입력완료
</body>
</html>