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

// ���ǿ� ����� ���̵� �����ͼ�
// �� ���̵� �ش��ϴ� ȸ�������� �����´�.

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
�Է¿Ϸ�
</body>
</html>