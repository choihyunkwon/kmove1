<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>�α���â</title>
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
		 location.href="Join.jsp";
	}

</script>
</head>

<body>
	
	<header>
	<h2>Cities</h2>
	</header>
	
	<div width="280px" height="300px" align="center">
	<form action="authentication.jsp" method="post">
		<legend style="text-align: center;">�α���</legend>
		<table border="0" width="250px" height="100px">
			<tr bgcolor="gray">
				<td align="center"><font size=2 color="black">���̵�</font></td>
				<td><input type="text" name="userid" /></td>
			</tr>

			<tr bgcolor="gray">
				<td align="center"><font size=2 color="black">��й�ȣ</font></td>
				<td><input type="password" name="userpwd" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="�α���""/> 
					<input type="submit" value="ȸ������"onclick="goJoin()"/></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>