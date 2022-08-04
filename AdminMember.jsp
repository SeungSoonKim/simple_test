<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.dto.*" %>
<%@ page import="test.dao.*" %>
<%@ page import="java.util.*" %>

	
	<%
		MemberDto dto = new MemberDto();
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 페이지</title>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script>
		$(function(){
			$(".revice").click(function(){
				location.href="AdminRevice.jsp";
			});
			$(".delete").click(function(){
				alert('삭제되었습니다.');
				session.invalidate();
			});
		});
	</script>
	<style>
		table {
			border-collapse: collapse;
			margin: 0 auto;
		}
		th, td {
			padding: 5px;
			border: 1px solid grey;
		}
		tr, td {
			cursor: pointer !important;
		}
		
	</style>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<td><%=dto.getId() %></td>
		</tr>
		<tr>
			<th>PW</th>
			<td><%=dto.getPw() %></td>
		</tr>
		<tr>
			<th>Name</th>
			<td><%=dto.getName() %></td>
		</tr>
		<tr>
			<th>Point</th>
			<td><%=dto.getPoint() %></td>
		</tr>
		<tr>
			<th>수정</th>
			<td><button class="revice">수정</button></td>
		</tr>
		<tr>
			<th>삭제</th>
			<td><button class="delete">삭제</button></td>
		</tr>
	</table>
	
	<button id="plus">스케줄러(20초마다 포인트1 증가)실행 시작</button>
	<a href="MainPage.jsp">스케쥴러 실행종료</a>
</body>
</html>
