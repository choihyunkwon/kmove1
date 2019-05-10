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
		사용처: <select>
				<option value="교통비" name="username">교통비</option>
				<option value="식대" name="username">식대</option>
				<option value="사비" name="username">사비</option>
				<option value="기타" name="username">기타</option>
			</select><br>
		사용금액: <input type = "text" name="price" /><br>
		잔액 : <input type = "text" name="expense_alance"/><br>
		아이디 : <input type = "text" name="member_id"/><br>
		사용날자: <input type = "date" name="date" /><br>
			
		<br><input type="submit" value="보내기" />
	</form>
</body>

</html>