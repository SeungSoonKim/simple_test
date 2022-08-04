<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.dto.*" %>    
<%@ page import="test.dao.*" %>    
    <%
    	MemberDto dto = new MemberDto();
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인 페이지</title>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script>
		$(function(){
			$("#btn_logout").click(function(){
				location.href = "LogoutAction.jsp";
			});
			$("#1").click(function(){
				alert('포인트가 부족합니다. 광고를 클릭하세요.');
			});
			$("#2").click(function(){
				alert('포인트가 부족합니다. 광고를 클릭하세요.');
			});
			$("#3").click(function(){
				alert('포인트가 부족합니다. 광고를 클릭하세요.');
			});
		});
	</script>
</head>
<body>
	<style>
		body {
			width: 1100px;
			height: 1920px;
			margin: 0 auto;
		}
		.fr {
			float: right;
		}
		.middle {
			padding-top: 60px;
			display: inline-block;
			text-align: center;
		}
		img:hover {
			cursor: pointer;
		}
	</style>
	
	<div class="top">
		<h2>메인페이지</h2>
		<div class="fr">
			<%=dto.getName()%>님 안녕하세요. 
			<button id="btn_logout">로그아웃</button> 
			<div>포인트 : <%=dto.getPoint()%>점</div>
		</div>
	</div>
	<div class="middle">
		<h4>구입할 컨텐츠를 선택하세요.</h4>
		<div>
			<img src="images/1.png" id="1"/>
			<div>100,000 포인트</div>
		</div>
		<div>
			<img src="images/2.png" id="2"/>
			<div>500,000 포인트</div>
		</div>
		<div>
			<img src="images/3.png" id="3"/>
			<div>300,000 포인트</div>
		</div>
	</div>
	<div class="bottom">
		<img src="images/korea_it.png"/>
	</div>
</body>
</html>