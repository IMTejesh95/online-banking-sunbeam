<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>Employee Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Distinct Widget web template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<link href="bootstrap/dist/template/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="bootstrap/dist/template/css/login_style.css" rel='stylesheet' type='text/css' />
	<link href="bootstrap/dist/template/css/font-awesome.css" rel="stylesheet">

	<script src="bootstrap/dist/template/js/jquery-2.2.3.min.js"></script>
	<!-- //end-smoth-scrolling -->
	<link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">

<style type="text/css">
body {
    background: url(bootstrap/dist/template/images/emp_login.jpg)no-repeat;
    }
</style>
</head>

<body>
	<h1 class="title-head" style="color: black;">Please Login Here</h1>
	<div class="agileits-main-grid">
		<!-- <div class="content text-center">
				<h3>is this you ?</h3>
				<div class="img-grid">
					<img src="images/1.png" alt=" " class="img-responsive" />
					<h4>Robert K. Garcia</h4>
				</div>
				<div class="alert-close"> </div>
				<ul class="list">
					<li>
						<span>200</span>
						followers
					</li>
					<li>
						<span>	130</span>
						following
					</li>
					<li>
						<span>170</span>
						tweets
					</li>
				</ul>
				<a href="#">connect with twitter</a>

			</div> -->

	<div class="right-grid-w3ls text-center">
		<h3>Employee</h3>
		<spring:form method="post" modelAttribute="employee">
			<div class="img-grid1">
				<img src="bootstrap/dist/template/images/2.png" alt=" " class="img-responsive" />
			</div>
			<div class="w3ls-icon">
				<i class="fa fa-envelope" aria-hidden="true"></i>
				<!-- <input type="email" class="user" name="email" placeholder="Username" required="" /> -->
				<spring:input  class="user" path="username" placeholder="Username" />
			</div>
			<div class="w3ls-icon">
				<i class="fa fa-lock" aria-hidden="true"></i>
				<!-- <input type="password" class="lock" name="password" placeholder="Password" required="" /> -->
				<spring:password class="user" path="password" placeholder="Password"/>
			</div>
			<input type="submit" value="login">
			
		</spring:form>

	</div>
	</div>
	
	<div class="footer-copyright text-center py-3">© 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>
	
	<script src="bootstrap/dist/template/js/jquery-2.1.4.min.js"></script>
	<script>
		$(document).ready(function (c) {
			$('.alert-close').on('click', function (c) {
				$('.content').fadeOut('slow', function (c) {
					$('.content').remove();
				});
			});
		});
	</script>

</body>

</html>