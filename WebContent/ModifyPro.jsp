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
<% request.setCharacterEncoding("UTF-8"); %>
<%
String id = session.getAttribute("id").toString();
MemberDAO da = new MemberDAO(); 
MemberDTO dt = new MemberDTO(); 
MemberDAO dao = MemberDAO.getInstance();
MemberDTO memberDTO = dao.getUserInfo(id);

dt.setName(request.getParameter("name"));
dt.setUserpwd(request.getParameter("userpwd"));
dt.setGender(request.getParameter("gender"));
dt.setUserid(id);
if(request.getParameter("name")==null){
	dt.setName(memberDTO.getName());
}else if(request.getParameter("gender")==null){
	dt.setGender(memberDTO.getGender());
}else if(request.getParameter("userpwd")==null){
	dt.setUserpwd(memberDTO.getUserpwd());
}


da.updateMember(dt);

%>
</body>
<script type="text/javascript">
		location.href="./logininfo.jsp";
	alert('정보수정이 완료되었습니다');

</script>
</html>