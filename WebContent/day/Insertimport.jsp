<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입금</title>
</head>
<body>
      <form method = "post" action ="./Insertimportpro.jsp">
	입금날짜 : <input type = "date" name="comedate" ><br>
	입금 : <input type ="text" name ="comemoney" placeholder="0 " value="0"><br>
	<input type = "submit" value = "확인"> <input type = "button" onclick="self.close()" value = "취소">
      </form>
</body>
</html> 