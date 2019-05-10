<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%-- 자바빈 관련 액션태그 사용 --%>
       
    
    <%
        // 세션에서 아이디를 가져와 MemberBean에 세팅한다.
        String id= (String)session.getAttribute("id"); 
    String pw = request.getParameter("password");
    MemberDAO da=new MemberDAO();
    MemberDTO memberDTO=new MemberDTO();
    
    
    MemberDTO dto = da.login(id,pw);
    String msg = "";
    if(dto !=  null)    // 로그인 성공
    { 
        msg = "../join/Modify.jsp";
        response.sendRedirect(msg);


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