<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	function logoutpro() {
		if(window.confirm("로그아웃 하시겠습니까")) //alert창 띄우기
			{
		window.location.href="./logoutpro.jsp";
	}
</script>
</head>
<body>
<% 
        String id = (String)session.getAttribute("id");
MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);ㅇ
System.out.println(id);
		if(id==null) {
			response.sendRedirect("./login.jsp");
		}
			
        // 세션에 저장된 아이디를 가져와서
        // 그 아이디 해당하는 회원정보를 가져온다.
        
		
        %>

<div id="center">
<a href="./logininfo.jsp">회원정보</a>
</div>
<div id="title1">
<h1>어서오세요  <%= memberDTO.getName() %>  님 </h1>
<h2>현재 총 잔액은 <%= memberDTO.getBalance() %> 입니다</h2>
</div>
<hr>
<div id="write1">
<h2>오늘의 지출액은   　<input type="submit" value="확인하기"/> </h2>
<h2>이달의 지출액은  　 <input type="submit" value="확인하기"/></h2>
<h2>올해의 지출액은   　<input type="submit" value="확인하기"/></h2>
</div>
<div id="button1">				
<input type="button" value="입금" onclick="location.href='./day/Insertimport.jsp'"/> 　
<input type="button" value="출금" onclick="location.href='./Drawal/WithDrawal.jsp'"/>
<input type="button" value="로그아웃" onclick="logoutpro()"/>
</div>

</body>
</html>