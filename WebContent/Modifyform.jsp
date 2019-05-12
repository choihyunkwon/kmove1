<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
        String id = session.getAttribute("id").toString();
    
        MemberDAO dao = MemberDAO.getInstance();
        MemberDTO memberDTO = dao.getUserInfo(id);
    %>

<title>회원정보 수정화면</title>
<link href="css/Modify.css" rel="stylesheet" type="text/css">

<script type="text/javascript">     
        // 비밀번호 입력여부 체크
        function checkValue() {
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
        }
        
    </script>

</head>
<body onload="init()">

	<div id="info1">
	<h1>회원정보 수정</h1>
	</div>
	<hr>

	<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
	<!-- 값(파라미터) 전송은 POST 방식 -->
	<form method="post" action="ModifyformPro.jsp" name="userInfo"
		onsubmit="return checkValue()">
<style>
table {
	margin-left: auto;
	margin-right: auto;
	border: 10px solid #acacac;
}

td {
	border: 1px solid gray;
}

</style>
		<table>
			<tr>
				<td id="title">아이디</td>
				<td id="title"><%=memberDTO.getUserid() %></td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td><input type="password" name="password" maxlength="50">
				</td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td id="title"><%=memberDTO.getName() %></td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td id="title"><%=memberDTO.getGender()%></td>
			</tr>
		</table>
		<br>
		<div id="button">
			<input id="asd" type="button" value="취소"
				onclick="javascript:window.location='logininfo.jsp'"> 
				<input id="asd" type="submit" value="수정"/>
		</div>
	</form>

</body>
</html>