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
	<legend style="text-align:center;">명칭</legend>
	<table>
		<tr>
			<th>사용 날짜</th>
			<td><input type="date" /></td>
		</tr>
		<tr>
			<th>사용 금액</th>
			<td><input type="text" /></td>
		</tr></br>
		<tr>
			<th>사용처</th>
			<td><select>
					<option value="교통비">교통비</option>
					<option value="식대">식대</option>
					<option value="사비">사비</option>
					<option value="기타">기타</option>
				</select>
			<br></td>
		</tr>
	</table>
		</br><input type="button" value="확 인" onclick="self.close();" />	
</fieldset>

</body>
</html>