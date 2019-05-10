<%@page import="member.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<script type ="text/javascript">
	/* function gomain() {
	 location.href="main.jsp";
} */
	function main() {
		 location.href="./main.jsp";

}
function memberdel() {
	 location.href="./deleteform.jsp";

}

</script>
<% 
String id = session.getAttribute("id").toString();

// 세션에 저장된 아이디를 가져와서
// 그 아이디 해당하는 회원정보를 가져온다.
MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);
%>
<body>
<div id="info1">
<h1>회원정보</h1>

이름 : <%=memberDTO.getName() %>  <br>
아이디 :<%=memberDTO.getUserid()%><br>
성별 : <%=memberDTO.getGender()%><br>
잔액 : <%=memberDTO.getBalance()%><br>
<input type="button"  value="홈으로" onclick="main()">  
<input type="button" value="회원탈퇴"onclick="memberdel()">

</div>

</body>
</html>