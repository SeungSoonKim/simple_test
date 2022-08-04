<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보수정</title>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script>
		$(function(){
			$(".go").click(function(){
				alert('수정되었습니다.');
				location.href="AdminMember.jsp";
			});
		});
	</script>
</head>
<body>
	<form>
		ID : <input type="text" name="id" readonly="readonly" />
		PW : <input type="text" name="pw" />
		Name : <input type="text" name="name" />
		point : <input type="text" name="point"/>
		<input type="submit" value="제출" id="go" />
	</form>
</body>
</html>