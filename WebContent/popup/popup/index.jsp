<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script language="javascript">
	function showPopup() {window.open("popup.jsp","�ݾ�Ȯ��","width=400,height=300,left=100,top=50");}
	function showPopup2() {window.open("popup2.jsp","�����ݾ�","width=400,height=200,left=100,top=50");}
</script>

</head>
<body>

	<input type="button" value="�ľ�â ȣ��" onclick="showPopup();" />
	<input type="button" value="ȣ��2" onclick="showPopup2();" />

</body>
</html>