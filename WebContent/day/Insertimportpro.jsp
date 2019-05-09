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

// 세션에 저장된 아이디를 가져와서
// 그 아이디 해당하는 회원정보를 가져온다.

InsertimportDTO dto = new InsertimportDTO();

if(id.equals(dto.getmember_id())){
dto.setcomedate(comedate);
dto.setcomemoney(comemoney);
dto.setmember_id(id);

}

InsertimportDAO da = InsertimportDAO.getInstance();
da.insert(dto);

%>
<body>
입력완료
</body>
</html>