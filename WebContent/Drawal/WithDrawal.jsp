<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금</title>
</head>
<body>

      	<form method="post" action="./WithDrawalpro.jsp">
      	사용날자: <input type = "date" name="usedate" /><br>
      	사용금액: <input type = "text" name="price" placeholder="0" /><br>
		사용처:<input type="radio"  name="usename"   value = "교통비"/>교통비
    <input type="radio"  name="usename""  value = "식대"/>식대
    <input type="radio"  name="usename""  value = "사비"/>사비
    <input type="radio"  name="usename""  value = "기타"/>기타
		 
			
		<br><input type="submit" value="보내기" /> <input type="button" onclick="location.href='./main.jsp'" value="취소">
	</form>
</body>

</html>