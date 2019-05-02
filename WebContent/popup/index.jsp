<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script language="javascript">
	function showPopup() {window.open("popup.jsp","금액확인","width=400,height=300,left=100,top=50");}
	function showPopup2() {window.open("popup2.jsp","충전금액","width=400,height=200,left=100,top=50");}
</script>

</head>
<body>

	<input type="button" value="파업창 호출" onclick="showPopup();" />
	<input type="button" value="호출2" onclick="showPopup2();" />

</body>
</html>