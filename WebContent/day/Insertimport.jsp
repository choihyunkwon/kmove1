<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입금</title>

<script type="text/javascript">
	function checkValue(){
		if(!document.insert.comedate.value){
			alert("날짜를 입력하세요.")
			return false;
		}
		if(!document.insert.comemoney.value){
			alert("금액을 입력하세요.")
			return false;
		}
	}
</script>
</head>
<body>
      <form method = "post" action ="./Insertimportpro.jsp"
      name="insert" onsubmit="return checkValue()">
	입금날짜 : <input type = "date" name="comedate" ><br>
	입금 : <input type ="text" name ="comemoney" placeholder="0 "><br>
	<input type = "submit" value = "확인"> <input type = "button" onclick="self.close()" value = "취소">
      </form>
</body>
</html> 