<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title> 회원가입 </title>
  <script type="text/javascript">
  function checkValue()
  {
      var form = document.userInfo;
  
      if(!form.userid.value){
          alert("아이디를 입력하세요.");
          return false;
      }

      if(form.idDuplication.value != "idCheck"){
          alert("아이디 중복체크를 해주세요.");
          return false;
      }
      if(!form.userpwd.value){
          alert("비밀번호를 입력하세요.");
          return false;
      }
      // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
      if(form.userpwd.value != form.userpwd2.value ){
          alert("비밀번호를 동일하게 입력하세요.");
          return false;
      }    
      if(!form.name.value){
          alert("이름을 입력하세요.");
		  return false;
	  }
}
  function openIdChk(){
      
      window.name = "parentForm";
      window.open("IdCheckForm.jsp", "chkForm", "width=500, height=300, resizable = no, scrollbars = no");    
  }
  function inputIdChk(){
      document.userInfo.idDuplication.value ="idUncheck";
  }
    </script>
 </head>
 <body>
 <center>
 <h1> 회원가입 </h1>
 <FORM method="post" action="./Joinpro.jsp" 
  onsubmit="return checkValue()" name = "userInfo">
 <table border="2" bgcolor="wheat"> 
 
  <tr><th> 이름 </th>
   <td><input type="text" name="name"/></td>
  </tr>
  
<tr><th>아이디</th>
	<td><input type="text" name="userid" maxlength="20" onkeydown="inputIdChk()"/>
		<input type="button" value="중복확인" onclick="openIdChk()"/>
		<input type="hidden" name="idDuplication" value="idUncheck">
		<div class="valid" id="userid_status">아이디는 영문소문자,숫자만 입력하세요</div>
	</td>
</tr>
  
<tr><th>비밀번호</th>
	<td><input type="password" name="userpwd" 
				onkeyup="validate('userpwd')" maxlength="26"/><br>
		<div class="valid" id="userpwd_status">비밀번호는 영문대,소문자,숫자를 모두 입력하세요</div>
	</td>
</tr>

<tr><th>비밀번호 확인</th>
	<td><input type="password" name="userpwd2" 
				onkeyup="validate('userpwd_ck')" maxlength="26"/><br>
		<div class="valid" id="userpwd_ck_status">비밀번호는 영문대,소문자,숫자를 모두 입력하세요</div>
	</td>
</tr>

  <tr><th> 성별 </th>
   <td>
   <input type="radio"  name="gender"   value = "남"/>남
    <input type="radio"  name="gender"  value = "여"/>여
   </td>
  </tr>
  
  </TABLE>
   <input type="submit" value="회원가입"/>
   <input type="reset" value="다시입력"/>
   <input type="button" value="취소" onclick="goLogin()"/>
   
  </FORM>
  
  <script type="text/javascript">
  function goLogin() {
      location.href="login.jsp";
  }

</script>   
 </center>
 </body>
</html>

