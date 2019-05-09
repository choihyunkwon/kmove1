<%@page import="insertimport.*"%>
<%@page import="member.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String comedate = request.getParameter("comedate");
int comemoney = Integer.parseInt(request.getParameter("comemoney"));
String member_id = request.getParameter("member_id");
int import_balance = Integer.parseInt(request.getParameter("comemoney"));


String id = session.getAttribute("id").toString();

InsertimportDTO dto = new InsertimportDTO();
InsertimportDAO da = InsertimportDAO.getInstance();

MemberDAO dao = MemberDAO.getInstance();

MemberDTO memberDTO = dao.getUserInfo(id);


Integer balance = (Integer)session.getAttribute("balance");
MemberDTO mdto = dao.getInsert(balance);

dto.setcomedate(comedate);
dto.setcomemoney(mdto.getBalance());
dto.setmember_id(memberDTO.getName());
//dto.setimport_balance(comemoney);

da.insert(dto);
%>
<body>
입력완료
</body>
</html>