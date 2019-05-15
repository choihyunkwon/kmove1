<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.MemberDAO" %>    



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴 처리</title>
</head>
<script>
function login() {
	 location.href="./login.jsp";

}
</script>
<body>
<%
        String id= session.getAttribute("id").toString();
        String pw = request.getParameter("password");
        System.out.println(pw);
        // 세션에서 아이디를, DeleteForm.jsp에서 입력받은 비밀번호를 가져온다.
        // 가져온 결과를 가지고 회원정보를 삭제한다. - 삭제결과를 반환
        MemberDAO dao = MemberDAO.getInstance();
        int check = dao.deleteMember(id, pw);
        int check1= dao.deleteimport(id, pw);
        int check2=dao.deletexpense(id, pw);
        System.out.println(id);
        if(check == 1){
            session.invalidate(); // 삭제했다면 세션정보를 삭제한다.
    %>
<br><br>
        <b><font size="4" color="gray">회원정보가 삭제되었습니다.</font></b>
        <br><br><br>
    
        <input type="button" value="확인" onclick="login()">
    
    <%    
         // 비밀번호가 틀릴경우 - 삭제가 안되었을 경우
        }else{
    %>
        <script>
            alert("비밀번호가 맞지 않습니다.");
            history.go(-1);
        </script>
    <%
        } 
    %>



</body>
</html>