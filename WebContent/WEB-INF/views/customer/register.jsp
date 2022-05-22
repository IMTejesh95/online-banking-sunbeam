<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Patronage Appointment form a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />

<title>Customer Registration</title>

<link rel="stylesheet"
	href="<spring:url value='bootstrap/dist/template/css/jquery-ui.css'/>"
	type="text/css" media="all">
<link href="<spring:url value='bootstrap/dist/template/css/wickedpicker.css'/>"
	rel="stylesheet" type='text/css' media="all" />
<link href="<spring:url value='bootstrap/dist/template/css/style_register.css'/>"
	rel='stylesheet' type='text/css' />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900"
	rel="stylesheet">


<!--FOR HEADER-FOOTER -->
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

<style>
	.err
	{
		color: red;
		font-style: italic;
		font-weight: bold;
		
	}
</style> 
</head>
<body>

<!--HEADER  -->
	<div class="headerw3-agile"> 
		<div class="header-w3mdl"><!-- header-two --> 
			<div class="container"> 
				<div class="agileits-logo navbar-left">
					<a href="http://localhost:8080/BOS/"><img src="bootstrap/dist/template/images/mylogo.png" alt="logo"/></a>
				</div> 
				<div class="agileits-hdright nav navbar-nav">
					<div class="header-w3top"><!-- header-top --> 
						<ul class="w3l-nav-top">
							<li><i class="fa fa-phone"></i><span>+919545223055 </span></li> 
							<li><a href="mailto:bankofsunbeam.bos"><i class="fa fa-envelope-o"></i> <span>bankofsunbeam.bos@gmail.com</span></a></li>
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
						<li><a href="about.jsp" class="scroll">About</a></li>    
						<li><a href="services.jsp" class="scroll">services</a></li>    
						<li><a href="gallery.jsp" class="scroll">Gallery</a></li> 
						 <li><a href="index.jsp" data-toggle="dropdown">Login<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="employee_login">Employee Login</a></li>
								<li><a href="customer_login">Customer Login</a></li>
							</ul>
						</li>
						<li><a href="contact.jsp" class="scroll">Contact Us</a></li>
					</ul>  
					<div class="clearfix"> </div>	
				</div>
			</nav>    
		</div>
<!--////HEADER  -->


	<!-- <h1 style="color:white;">Registration Form</h1> -->
	<div class="w3_frm">
		<div class="register-form-w3layouts">
			<h3  style="color:white;">Personal Info</h3>

			<sf:form method="post" modelAttribute="customer"
				enctype="multipart/form-data">

				<div class="w3l_nm">
					<div class="agile_fx">
						<label class="w3ls-opt">FULL NAME<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input path="firstName" placeholder="first name"/>
						</div>
						<sf:errors class="err" path="firstName"/>
						<div class="w3ls-name">
							<sf:input path="middleName" placeholder="middle name"  />
						</div>
						<%-- <sf:errors path="middleName"/> --%>
						<div class="w3ls-name">
							<sf:input path="lastName" placeholder="last name" />
						</div>
						<sf:errors class="err" path="lastName"/>
					</div>
				</div>

				<div class="w3l_nm">
					<div class="agile_fx">
						<label class="w3ls-opt">Date Of Birth<span
							class="w3ls-star"> * </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">

							<div class="book-pag-frm1 agileits w3layouts">
								<sf:input path="dateOfBirth" type="date"
									class="date agileits w3layouts" />
							</div>
							<sf:errors class="err" path="dateOfBirth"/>
						</div>
					</div>
				</div>
				<div class="w3l_nm">
					<div class="agile_fx">

						<label class="w3ls-opt">GENDER<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3_sd4">
							<sf:select path="gender">
								<option>Gender</option>
								<option value="India">Male</option>
								<option value="India">Female</option>
							</sf:select>
						</div>
						<sf:errors class="err" path="gender"/>
					</div>
				</div>

				<h3  style="color:white;">Contact Details</h3>


				<div class="w3l_nm">
					<div class="agile_fx">

						<label class="w3ls-opt">PHONE NUMBER<span
							class="w3ls-star"> * </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input path="phone" placeholder="Phone Number"  />
						</div>
						<sf:errors class="err" path="phone"/>
					</div>
				</div>

				<div class="w3l_nm">
					<div class="agile_fx">
						<label class="w3ls-opt">EMAIL<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input path="email" id="email" placeholder="Email"/>
						</div>
						<sf:errors class="err" path="email"/>
					</div>
				</div>
				
				<div class="w3l_nm">
					<div class="agile_fx">
						<label class="w3ls-opt">CONFIRM EMAIL<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input path="" name="cnfem" id="cnfemail" placeholder="Confirm Email"/>
						</div>
					</div>
				</div>
				<%-- <span id="emailError" style="color: red;font-style: italic;">${requestScope.status} </span> --%>
				
				<%-- <div class="w3l_nm">
					<div class="agile_fx">
						<label class="w3ls-opt">USERNAME<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input path="userName" id="uName" placeholder="Username"/>
						</div>
					</div>
				</div>
				<div class="w3l_nm">
					<div class="agile_fx">
						<label class="w3ls-opt">PASSWORD<span
							class="w3ls-star"> * </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input  path="password" placeholder="Password" />
						</div>
					</div>
				</div> --%>


				<div class="wthree_loc">
					<div class="w3ls_ad">
						<label class="w3ls-opt">current address <span
							class="w3ls-star"> * </span>
						</label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<sf:input path="myAddress.streetAddr" placeholder="Street Address" />
						</div>

						<div class="w3ls-name1">
							<div class="w3_sd3">
								<sf:input path="myAddress.city" placeholder="City" />
							</div>
							<div class="w3_sd4">
								<sf:input path="myAddress.state" placeholder="State" />
							</div>
						</div>
						<div class="w3ls-name1">
							<div class="w3_sd3">
								<sf:input path="myAddress.pin" placeholder="Zip Code"	 />
							</div>
							<div class="wthree_fl">
								<div class="w3_sd4">
									<select name="country">
										<option>Coutry</option>
										<option value="India">India</option>
										<option value="India">United State</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>




				<h3  style="color:white;">Account Details</h3>
				<div class="w3l_nm">
					<div class="agile_fx">

						<label class="w3ls-opt">BRANCH<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3_sd4">
							<sf:select path="myBranch.branchId">
								<sf:option value="NONE">Branch</sf:option>
								<c:forEach var="branch" items="${requestScope.branches}">
									<sf:option value="${branch.branchId}">${branch.branchLoc}</sf:option>
								</c:forEach>
							</sf:select>
						</div>
					</div>
				</div>


				<div class="w3l_nm">
					<div class="agile_fx">

						<label class="w3ls-opt">ACCOUNT TYPE<span
							class="w3ls-star">*</span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3_sd4">
							<sf:select path="accType.typeId">
								<option>Account Type</option>
	
								<c:forEach var="accType" items="${requestScope.accTypes}">
									<sf:option value="${accType.typeId}">${accType.accTypeName}</sf:option>
								</c:forEach>

							</sf:select>
						</div>
					</div>
				</div>

				
				<!-- **********************IMAGES ***************-->
					
					
				<div class="w3l_nm">
					<div class="agile_fx">

						<label class="w3ls-opt">Profile Photo<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							 <input type="file" class="form-control" id="inputimg3" name="imageUpload"/>
						</div>
					</div>
				</div>
					
				<!-- **********************////////////////IMAGES ***************-->
				
				

				<!-- <div class="w3l_nm">
					<div class="agile_fx">

						<label class="w3ls-opt">NOMINEE<span class="w3ls-star">
								* </span></label>
					</div>
					<div class="wthree_fl">
						<div class="w3ls-name">
							<input type="text" name="NOMINEE" placeholder="NOMINEE"
								required=" " />
						</div>
					</div>
				</div> -->

				<div class="w3l_nm">
					<input type="checkbox" name="agree" required=" " /> <label
						class="w3ls-opt">Agree terms and conditions</label>
				</div>
				<div class="clear"></div>

				<input type="submit" value="submit">
				<input type="reset" value="Clear form">

			</sf:form>

		</div>
	</div>

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
		<p>© 2018 E-Banking. All rights reserved |<a href="http://localhost:8080/BOS/">BOS.com</a></p>
	</div>
<!--//footer-->	

	<script type="text/javascript" src="bootstrap/dist/template/js/jquery-3.3.1.min.js"></script>

	<!-- Necessary-JavaScript-Files-&-Links -->
	<!-- Date-Picker-JavaScript -->
	<script src="bootstrap/dist/template/js/jquery-ui.js"></script>
	<script>
					$(function() {
						$( "#datepicker,#datepicker1,#datepicker2" ).datepicker();
					});
				</script>
	<script type="text/javascript" src="bootstrap/dist/template/js/wickedpicker.js"></script>
	<script type="text/javascript">
				$('.timepicker').wickedpicker({twentyFour: false});
			</script>

	<!-- //Date-Picker-JavaScript -->
	<!-- //Necessary-JavaScript-Files-&-Links -->
	
	
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
</body>
</html>