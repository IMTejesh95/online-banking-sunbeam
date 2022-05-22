<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clerk's Dashboard</title>
<%-- <link rel="stylesheet"
	href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>"
	type="text/css" media="all">
<script scr="bootstrap/dist/js/jquery.1.9.1.min.js"></script> --%>

<!-- Custom Theme files -->
<link href="bootstrap/dist/template/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="bootstrap/dist/template/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="bootstrap/dist/template/css/font-awesome.css" rel="stylesheet">   <!-- font-awesome icons --> 
<!-- //Custom Theme files -->  
<!-- js --> 
	<script src="bootstrap/dist/template/js/jquery-2.2.3.min.js"></script>
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Secular+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- //web-fonts --> 

</head>

<body>


<!-- ************************************************************************************************************** -->
<!--HEADER  -->
	<div class="headerw3-agile"> 
		<div class="header-w3mdl"><!-- header-two --> 
			<div class="container"> 
				<div class="agileits-logo navbar-left">
					<a href="index.jsp"><img src="bootstrap/dist/template/images/mylogo.png" alt="logo"/></a>
				</div> 
				<div class="agileits-hdright nav navbar-nav">
					<div class="header-w3top"><!-- header-top --> 
						<ul class="w3l-nav-top">
							<li><i class="fa fa-phone"></i><span>+919545223055 </span></li> 
							<li><a href="mailto:bankofsunbeam.bos@gmail.com"><i class="fa fa-envelope-o"></i> <span>bankofsunbeam.bos@gmail.com</span></a></li>
						</ul>
						<div class="clearfix"> </div> 	 
					</div>
					<div class="agile_social_banner">
						<ul class="agileits_social_list">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
						</ul>
					</div>  

				</div>
				<div class="clearfix"> </div> 
			</div>	
		</div>	
	</div>	
	<div class="header-nav"><!-- header-three --> 	
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						Menu 
					</button> 
				</div>
				<!-- top-nav -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp" class="active">Home</a></li>
						<li><a  href="clerk/search">Search And Update Account</a></li>     
						<li><a href="gallery.jsp" class="scroll">Gallery</a></li>
						<li><a  href="employee_logout">Logout</a></li>
					</ul>  
					<div class="clearfix"> </div>	
				</div>
			</nav>    
		</div>
<!--////HEADER  -->
<!-- ************************************************************************************************************** -->
	


	<div class="jumbotron text-center">
		<h2 >Clerk's Desk</h2>
		<p><i>${sessionScope.validEmployee.empName}</i><br><b>Branch:</b>${sessionScope.validEmployee.branch.branchName}</p>
	</div>

		<a href="clerk/search" class="btn btn-success btn-lg">Procceed to Search
			and update Account</a> <br> <br>
	</div>
	
<!-- ************************************************************************************************************** -->
<!--footer-->
<div class="agile-footer w3ls-section">
	<div class="container">
		<div class="col-md-7 list-footer">
		  <ul class="footer-nav">
				<li><a  href="index.jsp">Home</a></li>
				<li><a  href="about.jsp">About</a></li>
				<li><a  href="services.jsp">Services</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
		  </ul>
		  <p>Vivamus sed porttitor felis. Pellentesque habitant morbi tristique senectus et netus et ctetur adipiscing elit. Cras rutrum iaculis</p>
		</div>
		<div class="col-md-5 agileinfo-sub">
			<h6>Click the link below to start the subscription service</h6>
			<a href="#" data-toggle="modal" data-target="#myModal1">subscribe</a>
		</div>
		<div class="clearfix"></div>
     </div>
</div>	 
<div class="w3_agile-copyright text-center">
		<p>© 2018 E-Banking. All rights reserved | <a href="http://localhost:8080/BOS/">BOS.com</a></p>
	</div>
<!--//footer-->		

	<!-- FOR HEADE FOOTER -->
	<script src="bootstrap/dist/template/js/SmoothScroll.min.js"></script>
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript" src="bootstrap/dist/template/js/move-top.js"></script>
	<script type="text/javascript" src="bootstrap/dist/template/js/easing.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <script src="bootstrap/dist/template/js/bootstrap.js"></script>
<!-- ************************************************************************************************************** -->
</body>
</html>