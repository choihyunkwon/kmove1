<%@page import="insertimport.*"%>

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



InsertimportDTO dto = new InsertimportDTO();
dto.setcomedate(comedate);
dto.setcomemoney(comemoney);
dto.setmember_id(member_id);

InsertimportDAO da = InsertimportDAO.getInstance();
da.insert(dto);

%>
<body>
입력완료
</body>
</html>