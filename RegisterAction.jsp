<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.dao.*" %>
<%
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	MemberDao mDao = new MemberDao();
	mDao.registerMember(id, pw, name);
	
%>
	<script>
		alert('가입되었습니다. 로그인 해주세요.');
		location.href = "Login.jsp";
	</script>
	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 체크</title>
</head>
<body>
</body>
</html>