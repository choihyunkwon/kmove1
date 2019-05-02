<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> 회원가입 </title>
 </head>
 <body>
 <center>
 <h1> 회원가입 </h1>
 <FORM method="post" action="./join001/Joinpro.jsp">
 <table border="2" bgcolor="wheat"> 
 
 
 
 
 
 
  <tr>
   <td> 이름 </td>
   <td><input type="text" nema="name"/></td>
  </tr>

    <tr>
   <td> 아이디 </td>
   <td><input type="text" name="id"/>
   <input type="button" value="중복확인"/>
   </td>
  </tr>

  <tr>
   <td> 암호 </td>
   <td><input type="password" name="password"/></td>
  </tr>

  <tr>
   <td> 암호확인 </td>
   <td><input type="password" name="password"/>&nbsp;*같은 암호를 입력하세요</td>
  </tr>

  <tr>
   <td> 성별 </td>
   <td><input type="radio" name="gender" checked>남
    	<input type="radio" name="gender" checked>여
   </td>
  </tr>
  
  <br/>
  </TABLE>

   <input type="submit" value="회원가입"/>
   <input type="reset" value="다시입력"/>
   <input type="button" value="취소"/>
  </FORM>

 </center>
 </body>
</html>

