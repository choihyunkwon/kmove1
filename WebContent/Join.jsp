<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title> 회원가입 </title>
 </head>
 <body>
 <center>
 <h1> 회원가입 </h1>
 <FORM method="post" action="./Joinpro.jsp">
 <table border="2" bgcolor="wheat"> 
 
  <tr>
   <td> 이름 </td>
   <td><input type="text" name="name"/></td>
  </tr>
  
<tr><th>아이디</th>
	<td><input type="text" name="userid" 
		onkeyup="if( event.keyCode==13 ){ usable(); }else{ $('#id_check').val('n'); validate('userid') }"/>
		<input id="btn_id" type="button" value="중복확인" onclick="usable()"/><br>
		<div class="valid" id="userid_status">아이디는 영문소문자,숫자만 입력하세요</div>
	</td>
</tr>
  
<tr><th>비밀번호</th>
	<td><input type="password" name="userpwd" 
				onkeyup="validate('userpwd')"/><br>
		<div class="valid" id="userpwd_status">비밀번호는 영문대,소문자,숫자를 모두 입력하세요</div>
	</td>
</tr>

<tr><th>비밀번호 확인</th>
	<td><input type="password" name="userpwd2" 
				onkeyup="validate('userpwd_ck')"/><br>
		<div class="valid" id="userpwd_ck_status">비밀번호는 영문대,소문자,숫자를 모두 입력하세요</div>
	</td>
</tr>

  <tr>
   <td> 성별 </td>
   <td>
   <input type="radio"  name="gender"   value = 'm'/>남
    <input type="radio"  name="gender"  value = 'w'/>여
   </td>
  </tr>
  
  </TABLE>
   <input type="submit" value="회원가입"/>
   <input type="reset" value="다시입력"/>
   <input type="button" value="취소" onclick="goJoin()"/>
   
  </FORM>
  <script type="text/javascript">
  function goJoin() {
	  history.back(-1);
}
  </script>
  
 </center>
 </body>
</html>

