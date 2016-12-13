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
    <style type="text/css">
    	#err{
    		color: red;
    		font-size: 11pt;
    		text-align: center;
    	}	
    </style>
    
    <%
		String errMsg = (String)request.getAttribute("errMsg");
		if(errMsg==null){
			errMsg="";
		}
		//errMsg="you entered wrong pass or id";
	%>
	
</head>

<body>
<!-- 상단 네비게이션 바 -->
<div class="navbar navbar-inverse navbar-fixed-top">
          <a class="navbar-brand" href="#">Ajou Univ SWE Project</a>    
</div>
<div class="container">
</div>
<section id="buttons" style="margin-top: 70px; text-align: center;">

	<div class="page-header"><h4>Login Phase</h4></div>
</section>

 	<div class="loginForm">
 		<form name="login" method="post" action="/ieas/LoginHandler">
  			<div class="form-group">
		    	<label for="exampleInputEmail1" style="margin-left:10px;">ID</label>
    			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your id" name="id">
  			</div>
  			<div class="form-group">
    			<label for="exampleInputPassword1" style="margin-left:10px;">Password</label>
    			<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter your password" name="password">
				<p id="err"><%=errMsg%></p>  		
  			</div>
  			<section id="buttons" style="margin-top: 50px; margin-bottom: 130px; text-align: center;">
  				<div class="form-group">
    				<div class="col-sm-offset-2 col-sm-10">
      					<input type="submit" class="btn btn-default btn-lg" value="Login" style="vertical-align:center;">
      					
				    </div>
  				</div>
  			</section>	
  		</form>
    </div>
</body>
<footer>
<button class="btn btn-lg btn-primary" onclick="location.href='signin.jsp'" style="margin-left:10px;">Registration</button>

</footer>

</html>