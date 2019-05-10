<%@page import="member.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/loginInfo.css" rel="stylesheet" type="text/css">
</head>
<style>
header {
	background-color: #666; padding : 30px;
	text-align: center;
	font-size: 35px;
	color: white;
	padding: 30px;
	font-height:60px;
}
</style>
<script type ="text/javascript">
	/* function gomain() {
	 location.href="main.jsp";
} */
	function main() {
		 location.href="./main.jsp";

}
function modify(){
	location.href="./Modifyform.jsp"
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
<header>
<h1>회원정보</h1>
</header>
<div id="info">
<hr>
<p>이름 : <%=memberDTO.getName() %></p>
<p>아이디 : <%=memberDTO.getUserid()%></p> 
<p>성별 : <%=memberDTO.getGender()%></p>
<p>잔액 : <%=memberDTO.getBalance()%></p>
</div>
<div id ="button">
<input type="button"  value="홈으로" onclick="main()">  
<input type="button" value="회원정보 수정" onclick="modify()">
<input type="button" value="회원탈퇴"onclick="memberdel()">
</div>

</body>
</html>