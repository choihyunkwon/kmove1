<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<style>
header {
	background-color: #666; padding : 30px;
	text-align: center;
	font-size: 35px;
	color: white;
	padding: 30px;
}

div {
	width: 1000px;
	height: 1000px;
	padding-left: 450px;
	margin-top: 38px;
	position: absolute;
}
</style>
<script type ="text/javascript">
	/* function gomain() {
	 location.href="main.jsp";
} */
	function goJoin() {
		 location.href="./Join.jsp";
	}
function logincheck() {
	 location.href="./logincheck.jsp";
}

</script>
</head>

<body>
	
	<header>
	<h2>Cities</h2>
	</header>
	
	<div width="280px" height="300px" align="center">
	<form action="loginpro.jsp" method="post">
		<legend style="text-align: center;">로그인</legend>
		<table border="0" width="250px" height="100px">
			<tr bgcolor="gray">
				<td align="center"><font size=2 color="black">아이디</font></td>
				<td><input type="text" name="userid" /></td>
			</tr>

			<tr bgcolor="gray">
				<td align="center"><font size=2 color="black">비밀번호</font></td>
				<td><input type="password" name="userpwd" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="로그인"/> 
					<input type="button" value="회원가입"onclick="goJoin()"/></td>
			</tr>
		</table>
		<% 
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<br>");
                out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
                out.println("<br>");
                out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
            }
        %>  


	</form>
	
	</div>
</body>
</html>