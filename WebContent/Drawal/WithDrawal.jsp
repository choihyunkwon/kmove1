<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금</title>
</head>
<body>

      	<form method="post" action="./WithDrawal_pro.jsp">
		사용날자: <input type = "date" name="date" /><br>
		사용금액: <input type = "text" name="price" /><br>
		사용처: <select nema="username">
				<option value="교통비">교통비</option>
				<option value="식대">식대</option>
				<option value="사비">사비</option>
				<option value="기타">기타</option>
			</select>
			
		<br><input type="submit" value="보내기" />
	</form>

</body>
</html>