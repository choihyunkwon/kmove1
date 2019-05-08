<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<%
String name = (String)session.getAttribute("name");
Integer balance = (Integer)session.getAttribute("balance");


%>
<div id="title1">
<h1>어서오세요  <%= name %>  님 </h1>
<h2>현재 총 잔액은 <%= balance %> 입니다</h2>
</div>
<hr>
<div id="write1">
<h2>오늘의 지출액은   　<input type="submit" value="확인하기"/> </h2>
<h2>이달의 지출액은  　 <input type="submit" value="확인하기"/></h2>
<h2>올해의 지출액은   　<input type="submit" value="확인하기"/></h2>
</div>
<div id="button1">
<input type="submit" value="가계부 작성"/> 　<input type="submit" value="잔액충전"/>
</div>

</body>
</html>