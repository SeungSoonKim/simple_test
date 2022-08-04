<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.dao.*" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDao mDao = new MemberDao();
	boolean result = mDao.loginCheck(id, pw);	

	if(id.equals("admin")) {
		session.setAttribute("loginId", id);										
%>
	<script>
		location.href="AdminMember.jsp";
	</script>
<%
	} else if(result) {
		session.setAttribute("loginId", id);
%>
		<script>
			location.href="MainPage.jsp";
		</script>
<%
	} else {
%>
		<script>
			alert('아이디/비밀번호를 다시 확인하세요');
			location.href="Login.jsp";
		</script>
<% 		
	}
%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 체크</title>
</head>
<body>
	
</body>
</html>