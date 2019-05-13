<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
input{
padding:7px 30px 7px 30px;
font-size:15px;
font-weight:bold;
color:black;
text-align:center;
border:solid 1px 0px 1px ;
background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff), to(#666));
-webkit-border-radius:5px;
border-bottom-color:#666;
text-shadow:0 -1px 0 #666;
}
</style>
<link href="css/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	function logoutpro() {
		if(window.confirm("로그아웃 하시겠습니까")) //alert창 띄우기
			{
		window.location.href="./logoutpro.jsp";
		
	}	}
	function goLogin() {
	      location.href="logininfo.jsp";
	  }
	   function showDisposit() {window.open("./day/Insertimport.jsp","충전금액","width=400,height=200,left=100,top=50");}
	   function showDrawal() {window.open("./Drawal/WithDrawal.jsp","충전금액","width=400,height=200,left=100,top=50");}
	   
	 function selectDrawal(){
		 window.location.href="./Drawal/SelectDrawal.jsp";
	 }
	 
	 
	 
	 function dayimport(){
		 window.location.href="./day/Selectimport.jsp";
	 }
	 function dayimport_day(){
		 window.location.href="./day/Selectimport_day.jsp";
	 }
	 function dayimport_year(){
		 window.location.href="./day/Selectimport_year.jsp";
	 }
	 

</script>
</head>
<body>
<% 
        String id = (String)session.getAttribute("id");
MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);

		if(id==null) {
		
			response.sendRedirect("./login.jsp");
			
		}
			
        // 세션에 저장된 아이디를 가져와서
        // 그 아이디 해당하는 회원정보를 가져온다.
        
		
        %>


<div id="title1">
<%if(id!=null){ %>
<h1>어서오세요  <%= memberDTO.getName() %>  님 </h1>
<h2>현재 총 잔액은 <%= memberDTO.getBalance() %> 입니다</h2>
<%} %>
<input type="button" value="로그아웃" onclick="logoutpro()"/>
<input type="button" value="회원정보" onclick="goLogin()">
</div>

<hr>
<div id="center">

</div>
<div id="write1">
<h2>일일 지출표   　<input type="submit" value="수입" onclick="dayimport() "/>
					<input type="button" value="지출" onclick="selectDrawal()"></h2>
<h2>월별 지출표  　 <input type="submit" value="수입" onclick="dayimport_day() "/>
					<input type="button" value="지출" onclick="selectDrawal()"></h2>
<h2>연별 지출표   　<input type="submit" value="수입" onclick="dayimport_year() "/>
					<input type="button" value="지출" onclick="selectDrawal()"></h2>
</div>
<div id="button1">				
<input type="button" value="입금" onclick="showDisposit()"/>
<input type="button" value="출금" onclick="showDrawal()"/>
</div>

</body>
</html>