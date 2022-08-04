<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<body>
	<form action="RegisterAction.jsp" method="post">
		ID : <input type="text" name="id" /> <br/>
		PW : <input type="password" name="pw" /> <br/> 
		Name : <input type="text" name="name" /> <br>
		<input type="submit" value="작성완료" />
	</form>
</body>
</html>