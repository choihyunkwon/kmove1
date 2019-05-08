<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
      <form method = "post" action ="./InsertDaysumpro.jsp">
	아이디 : <input type = "date" name="insertday" ><p>
	입금 : <input type ="text" name ="plus" placeholder="0 " value="0"><p>
	출금 : <input type ="text"  name="ma" placeholder="0"><p>
	사용금액 : <input type ="text" name="us" placeholder="0"><p>
	<input type = "submit" value = "보내기">
      </form>
</body>
</html>