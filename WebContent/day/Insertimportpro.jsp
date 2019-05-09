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

String id = session.getAttribute("id").toString();

InsertimportDTO dto = new InsertimportDTO();

MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);


dto.setcomedate(comedate);
dto.setcomemoney(comemoney);
dto.setmember_id(memberDTO.getName());


InsertimportDAO da = InsertimportDAO.getInstance();
da.insert(dto);
%>
<body>
입력완료
</body>
</html>