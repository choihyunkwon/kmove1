<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <form method = "post" action ="./Insertimportpro.jsp">
	입금날짜 : <input type = "date" name="comedate" ><br>
	입금 : <input type ="text" name ="comemoney" placeholder="0 " value="0"><br>
	아이디 : <input type ="text" name ="member_id" "><br>
	
	<input type = "submit" value = "보내기">
      </form>
</body>
</html>