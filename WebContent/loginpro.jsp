<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
        // 인코딩 처리
        request.setCharacterEncoding("UTF-8"); 
        
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        String id= request.getParameter("userid");
        String pw = request.getParameter("userpwd");
        
        // DB에서 아이디, 비밀번호 확인
        MemberDAO dao = new MemberDAO();
        MemberDTO memberDTO = dao.login(id, pw);
        
        // URL 및 로그인관련 전달 메시지
        String msg = "";
        
        if(memberDTO !=  null)    // 로그인 성공
        { 
        	Integer balance=memberDTO.getBalance();
            // 세션에 현재 아이디 세팅
            session.setAttribute("id", memberDTO.getUserid());
            session.setAttribute("name", memberDTO.getName());
            session.setAttribute("balance", balance);
            session.setAttribute("gender", memberDTO.getGender());
            msg = "../join/main.jsp";


        }
        else
        {
            msg = "../join/login.jsp?msg=-1";
        }
       
         
        // sendRedirect(String URL) : 해당 URL로 이동
        // URL뒤에 get방식 처럼 데이터를 전달가능
        response.sendRedirect(msg);
        
        System.out.println(memberDTO.getGender());
        System.out.println(memberDTO.getName());
    %>


</body>
</html>