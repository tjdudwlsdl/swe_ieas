<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>     <!-- JSP에서 JDBC의 객체를 사용하기 위해 java.sql 패키지를 import 한다 -->


<!DOCTYPE html>
<html>
<head>
	<title>SW-Project</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="project.css">
	<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
String userID = (String)session.getAttribute("Logon.isDone");
if(userID==null) {
	response.sendRedirect(String.format("%s://%s:%d/ieas%s", 
			request.getScheme(), request.getServerName(), 
			request.getServerPort(), "/login.jsp"));
	return;
}
%>
<!-- 상단 네비게이션 바 -->
<div class="navbar navbar-inverse navbar-fixed-top">
          <a class="navbar-brand" href="#">Ajou Univ SWE Project</a>    
</div>
<div class="container">
</div>
<section id="buttons" style="margin-top: 70px; text-align: center; margin-bottom:150px">
	<div class="page-header"><h4>Checking Information</h4></div>
	<div id="info_table" style=" padding-left:10px; text-align:left;">
	<p>Registered location: 경기도 수원시영통구 원천동</p>
	<p>Weather condition: Sunny</p>
	<p>Temperature: 12</p>
	<p>Humidity: 35 %</p>
	<p>CO2 density: 0.04 %</p>
	<p>Window state: Open</p>
	</div>
</section>
</body>
<footer>
<button class="btn btn-primary btn-lg" onclick="location.href='main.jsp'" 
	style="margin-left:10px;">Back</button>
</footer>
</html>