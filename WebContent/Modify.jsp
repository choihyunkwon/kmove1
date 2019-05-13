<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
String id = session.getAttribute("id").toString();
MemberDAO dao= new MemberDAO();
MemberDTO memberDTO= new MemberDTO();

MemberDAO da = MemberDAO.getInstance();
MemberDTO dto = da.getUserInfo(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정 완료</title>
<link href="css/Modify.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

//비밀번호 입력여부 체크
function checkValue() {
	var form = document.userInfo;
    if(!form.userpwd.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    if(!form.name.value.length>20){
    	alert("이름이 너무 깁니다");
    	return false;
    }
    if(form.userpwd.value.length < 4 || form.userpwd.value.length > 20){
        alert("비밀번호를 4자 ~ 20자 까지만 해주세요")
          return false;
    }
    if(!form.name.value){
        alert("이름을 입력하세요.");
        return false;
    }
}

</script>
</head>
<body>
	<div id="info1">
		<h1>회원정보 수정</h1>
	</div>
	<hr>
	<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
	<!-- 값(파라미터) 전송은 POST 방식 -->
	<form method="post" action="ModifyPro.jsp" name="userInfo"
		onsubmit="return checkValue()">

		<table>
			<tr>
				<td id="title">아이디</td>
				<td id="title"><%=dto.getUserid() %></td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td><input type="password" name="userpwd" id="password10"
					onkeyup="validate('userpwd')" maxlength="50" /></td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td><input type="text" name="name" maxlength="19"
					value="<%=dto.getName()%>"></td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td><input type="radio" name="gender" value="남" />남 <input
					type="radio" name="gender" value="여" />여</td>
			</tr>
		</table>
		<br>
		<div id="button">
		<input id="button1" type="button" value="취소"
			onclick="javascript:window.location='main.jsp'"> 
			<input id="button1" type="submit" value="수정"/>
		</div>
	</form>
</body>
</html>