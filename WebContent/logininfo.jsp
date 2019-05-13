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
input{
padding:7px 30px 7px 30px;
font-size:15px;
font-weight:bold;
color:black;
border:solid 1px 0px 1px ;
background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff), to(#666));
-webkit-border-radius:5px;
border-bottom-color:#666;
text-shadow:0 -1px 0 #666;
}
p{
text-align:center;
	font-size: 30px;
	font-weight: bold;
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
<div id="info1">
<h1 >회원정보</h1>
</div>
<hr>
<p>이름 : <%=memberDTO.getName() %></p>
<p>아이디 : <%=memberDTO.getUserid()%></p> 
<p>성별 : <%=memberDTO.getGender()%></p>
<p>잔액 : <%=memberDTO.getBalance()%></p>
<div id="button">
<input type="button" value="홈으로" onclick="main()">  
<input type="button" value="회원정보 수정" onclick="modify()">
<input type="button" value="회원탈퇴"onclick="memberdel()">
</div>
</body>
</html>