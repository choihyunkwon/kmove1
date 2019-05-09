
<%@ page import="member.*" %>
<%
        // 인코딩 처리
        request.setCharacterEncoding("UTF-8"); 
        
        // 로그인 화면에 입력된 아이디를 가져온다
        String id= request.getParameter("userid");
       
        
        // DB에서 아이디 확인
        MemberDAO dao = new MemberDAO();
        boolean idok = dao.duplicateIdCheck(id);
        
        // URL 및 로그인관련 전달 메시지
        String msg = "";
        
        if(idok == true )    // 로그인 성공
        { 
        	
        	System.out.print("성공");
        	 msg = "1";
        }
        else
        {
        	System.out.print("실패");
        	  msg = "0";
        }
       
         
        // sendRedirect(String URL) : 해당 URL로 이동
        // URL뒤에 get방식 처럼 데이터를 전달가능

	
    %><%=msg%> 