<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body onload="window.resizeTo(400,300)">
<fieldset>
	<legend style="text-align:center;">��Ī</legend>
	<table>
		<tr>
			<th>��� ��¥</th>
			<td><input type="date" /></td>
		</tr>
		<tr>
			<th>��� �ݾ�</th>
			<td><input type="text" /></td>
		</tr></br>
		<tr>
			<th>���ó</th>
			<td><select>
					<option value="�����">�����</option>
					<option value="�Ĵ�">�Ĵ�</option>
					<option value="���">���</option>
					<option value="��Ÿ">��Ÿ</option>
				</select>
			<br></td>
		</tr>
	</table>
		</br><input type="button" value="Ȯ ��" onclick="self.close();" />	
</fieldset>

</body>
</html>