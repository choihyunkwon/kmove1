<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>�α���â</title>
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
	<legend style="text-align:center;">�α���</legend>
	<table border = "0" width="250px" height="100px">
		<tr bgcolor ="green">
		<td align = "center"> <font size = 2 color="black">���̵�</font></td>		
		<td><input type="text"  name="id"/></td>
		</tr>
		
		<tr bgcolor ="green">
		<td align = "center"> <font size = 2 color="black">��й�ȣ</font></td>
		<td><input type="text" name="pwd"/></td>
		</tr>

	<tr>
		<td colspan="2" align ="center">
		<input type="submit" value="�α���" onclick="self.close();">	
		<input type="submit" value="ȸ������" onclick="self.close()">
		</td>
	</tr>
</table>
</div>

</body>
</html>