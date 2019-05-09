<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>회원탈퇴</title>
</head>
<script type="text/javascript">
//비밀번호 미입력시 경고창
function checkValue(){
	if(!document.deleteform.password.value){
		alert("비밀번호를 입력하지 않았습니다");
		return false;
	}
}
</script>
<body>
<div id="info1">
<br><br>
<b><font size="6" color="gray">내 정보</font></b>
    <br><br><br>
 
    <form name="deleteform" method="post" action="DeletePro.jsp"
        onsubmit="return checkValue()">
 
        <table>
            <tr>
                <td bgcolor="skyblue">비밀번호</td>
                <td><input type="password" name="password" maxlength="50"></td>
            </tr>
        </table>
        
        <br> 
        <input type="button" value="취소" onclick="javascript:window.location='logininfo.jsp'">
        <input type="submit" value="탈퇴" /> 
    </form>

</div>
</body>
</html>