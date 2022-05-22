<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
	<title>Customer Login</title>
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
    background: url(bootstrap/dist/template/images/cust_login.jpg)no-repeat;
    }
</style>
</head>


<body>
	
	<h1 class="title-head">Please Login Here</h1>
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
				<h3>Personal Login</h3>
				<spring:form method="post" modelAttribute="customer">
					<div class="img-grid1 align-items-center">
						<img src="bootstrap/dist/template/images/1.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3ls-icon">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<!-- <input type="email" class="user" name="email" placeholder="Username" required="" /> -->
						<spring:input class="user" path="userName" placeholder="Username" required="" />
					</div>
					<div class="w3ls-icon">
						<i class="fa fa-lock" aria-hidden="true"></i>
						<!-- <input type="password" class="lock" name="password" placeholder="Password" required="" /> -->
						<spring:password class="lock" path="password" placeholder="Password" required="" />
					</div>
					<div class="copy-right w3l-agile">
							<p>
								New Here ? <a href="http://w3layouts.com">Register for online banking.</a>
								
								<br>
								<a href="recover_password.html">Forgot Password?</a>
							</p>
						</div>
					
					<input type="submit" value="login">
				</spring:form>
		
			</div>
	
			
			

	</div>

	
		<div class="footer-copyright text-center py-3">
	 
	 © 2018 Copyright:
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