<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�Ա�</title>

<script type="text/javascript">
	function checkValue(){
		if(!document.insert.comedate.value){
			alert("��¥�� �Է��ϼ���.")
			return false;
		}
		if(!document.insert.comemoney.value){
			alert("�ݾ��� �Է��ϼ���.")
			return false;
		}
	}
</script>
</head>
<body>
      <form method = "post" action ="./Insertimportpro.jsp"
      name="insert" onsubmit="return checkValue()">
	�Աݳ�¥ : <input type = "date" name="comedate" ><br>
	�Ա� : <input type ="text" name ="comemoney" placeholder="0 "><br>
	<input type = "submit" value = "Ȯ��"> <input type = "button" onclick="self.close()" value = "���">
      </form>
</body>
</html> 