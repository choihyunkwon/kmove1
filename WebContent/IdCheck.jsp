
<%@ page import="member.*" %>
<%
        // ì¸ì½ë© ì²ë¦¬
        request.setCharacterEncoding("UTF-8"); 
        
        // ë¡ê·¸ì¸ íë©´ì ìë ¥ë ìì´ëë¥¼ ê°ì ¸ì¨ë¤
        String id= request.getParameter("userid");
       
        
        // DBìì ìì´ë íì¸
        MemberDAO dao = new MemberDAO();
        boolean idok = dao.duplicateIdCheck(id);
        
        // URL ë° ë¡ê·¸ì¸ê´ë ¨ ì ë¬ ë©ìì§
        String msg = "";
        
        if(idok == true )    // ë¡ê·¸ì¸ ì±ê³µ
        { 
        	
        	System.out.print("사용 가능한 아이디입니다.");
        	 msg = "1";
        }
        else
        {
        	System.out.print("사용불가능한 아이디입니다.");
        	  msg = "0";
        }
       
         
        // sendRedirect(String URL) : í´ë¹ URLë¡ ì´ë
        // URLë¤ì getë°©ì ì²ë¼ ë°ì´í°ë¥¼ ì ë¬ê°ë¥

	
    %><%=msg%> 