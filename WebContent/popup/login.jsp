<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<style>
	div{
		width: 1000px; height: 1000px;
		padding-left: 450px;	
    	margin-top: 200px;	
		position: absolute;
	}
	
</style>
</head>
<body >
<div width= "280px"  height="300px" align="center">
	<legend style="text-align:center;">로그인</legend>
	<table border = "0" width="250px" height="100px">
		<tr bgcolor ="green">
		<td align = "center"> <font size = 2 color="black">아이디</font></td>		
		<td><input type="text"  name="id"/></td>
		</tr>
		
		<tr bgcolor ="green">
		<td align = "center"> <font size = 2 color="black">비밀번호</font></td>
		<td><input type="text" name="pwd"/></td>
		</tr>

	<tr>
		<td colspan="2" align ="center">
		<input type="submit" value="로그인" onclick="self.close();">	
		<input type="submit" value="회원가입" onclick="self.close()">
		</td>
	</tr>
</table>
</div>

</body>
</html>