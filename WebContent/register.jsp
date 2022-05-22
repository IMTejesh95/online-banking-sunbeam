<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Patronage Appointment form a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />

<title>Insert title here</title>
<%-- <link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
 --%>


<link rel="stylesheet" href="<spring:url value='/bootstrap/css/jquery-ui.css'/>" type="text/css" media="all">
<link href="<spring:url value='/bootstrap/css/wickedpicker.css'/>" rel="stylesheet" type='text/css' media="all" />
<link href="<spring:url value='/bootstrap/css/style.css'/>" rel='stylesheet' type='text/css' />

<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900" rel="stylesheet">



<style>
.center {
    margin-top: 5%;
    margin-right:25%;
    margin-left:25%;
    margin-bottom:5%;
    border: 3px solid green;
    padding: 20px;
}
</style>
</head>
<body>
<h1>Registration Form</h1>
 <div class="w3_frm">

 <div class="register-form-w3layouts">

 
 <h3>Personal Info</h3>
 
  <form action="#" method="post" enctype="multipart/form-data">
		<div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">FULL NAME<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">
		
			<input type="text" name="username"  placeholder="first name" required=" "/>
		</div>
		<div class="w3ls-name">
			<input type="text" name="lastname" placeholder="middle name" required=""/>
		</div>
		<div class="w3ls-name">
			<input type="text" name="lastname" placeholder="last name" required=""/>
		</div>
		</div>
	</div>
	<div class="w3l_nm">
		<div class="agile_fx">
		
		<label class="w3ls-opt">AGE<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">
			<input type="number" name="Age"  placeholder="age" required=" "/>
		</div>
		</div>
	</div>
	<div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">Date Of Birth<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">
		
			<div class="book-pag-frm1 agileits w3layouts">
<input class="date agileits w3layouts" id="datepicker2" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required=" ">
<!-- <input type="date" /> -->
</div>
		</div>
		</div>
	</div>
	<div class="w3l_nm">
		<div class="agile_fx">
		
		<label class="w3ls-opt">GENDER<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
				<div class="w3_sd4">
					<select required=" ">
							<option>Gender</option>
							<option value="India"> Male </option>
							<option value="India"> Female </option>				
					</select>
				</div>
			</div>
	</div>
	<h3>Contact Details</h3>
		<div class="wthree_loc">
	<div class="w3ls_ad">
		<label class="w3ls-opt">current address <span class="w3ls-star"> * </span> </label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">	
			<input type="text" name="username"  placeholder="Address1" required=" "/>
		</div>
		<!-- <div class="w3ls-name">
			<input type="text" name="lastname" placeholder="Address2" required=""/>
		</div> -->
		<div class="w3ls-name1">
		<div class="w3_sd3">
			<input type="text" name="lastname" placeholder="City" required=""/>
			</div>
			<div class="w3_sd4">
			<input type="text" name="lastname" placeholder="State" required=""/>
			</div>
		</div>
		<div class="w3ls-name1">
		<div class="w3_sd3">
			<input type="text" name="lastname" placeholder="Zip Code" required=""/>
			</div>
			<div class="wthree_fl">
				<div class="w3_sd4">
					<select>
							<option>Coutry</option>
							<option value="India"> India </option>
							<option value="India"> United State </option>				
					</select>
				</div>
			</div>
		</div>
		</div>
		</div>
		<!-- <div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">Best Day To Meet<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3_sd4">
			<select>
									<option value="Country"> Monday </option>
									<option value="India"> Tuesday </option>
									<option value="United states"> Wednesday </option>
									<option value="Afghanisthan"> Thursday </option>
									<option value="China"> Friday </option>
									<option value="Indonesia"> Saturday </option>
				</select>
			</div>
		</div>
	</div> -->
	<div class="w3l_nm">
		<div class="agile_fx">
		
		<label class="w3ls-opt">PHONE NUMBER<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">	
			<input type="text" name="username"  placeholder="Phone Number" required=" "/>
		</div>
		</div>
	</div>

	<div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">EMAIL<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">	
			<input type="email" name="username"  placeholder="Email" required=" "/>
		</div>
		</div>
	</div>
	<div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">CONFIRM EMAIL<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">	
			<input type="email" name="username"  placeholder="Email" required=" "/>
		</div>
		</div>
	</div>
	<!-- <div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">Best Time to meet<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3_sd4">
			<select>
									<option value="Country"> Morning </option>
									<option value="India"> Afternoon </option>
									<option value="United states"> Evening </option>
									
				</select>
			</div>
		</div>
	</div> -->
		
<!-- <div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">Specific Date/Time<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">
		
			<div class="book-pag-frm1 agileits w3layouts">
<input class="date agileits w3layouts" id="datepicker2" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">
		</div>
		</div>
		<div class="w3ls-name">
			<input type="text" id="timepicker" name="Time" class="timepicker form-control" value="Time">
		</div>
		</div>
	</div> -->
	<!-- <div class="w3l_nm">
		<div class="agile_fx">
		<label class="w3ls-opt">Areas of Interest<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
		<div class="w3ls-name">	
			<textarea id="message" name="message" placeholder="Your Queries" title="Please enter Your Queries"></textarea>

		</div>
		</div>
	</div> -->
	<h3>Account Details</h3>
	<div class="w3l_nm">
		<div class="agile_fx">
		
		<label class="w3ls-opt">BRANCH<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
			<div class="w3_sd4">
				<select>
						<option>Branch</option>
						<option value="Bhandara"> Bhandara </option>
						<option value="Gondia"> Gondia </option>
										
					</select>
				</div>
			</div>
	</div>

	<div class="w3l_nm">
		<div class="agile_fx">
		
		<label class="w3ls-opt">ACCOUNT TYPE<span class="w3ls-star"> * </span></label>
		</div>
		<div class="wthree_fl">
			<div class="w3_sd4">
				<select>
						<option>Account Type</option>
						<option value="Saving"> Saving </option>
						<option value="Current"> Current </option>
										
					</select>
				</div>
			</div>
	</div>
	<div class="w3l_nm">
			<div class="agile_fx">
			
			<label class="w3ls-opt">ADDRESS PROOF<span class="w3ls-star"> * </span></label>
			</div>
			<div class="wthree_fl">
				<div class="w3_sd4">
					<select>
							<option>ADDRESS PROOF</option>
							<option value="Saving"> Adhar Card </option>
							<option value="Current"> Driving Licence </option>
							<option value="Current"> Votter Id Card </option>
							<option value="Current"> Pan Card </option>
						</select>
					</div>
				</div>
		</div>

		<div class="w3l_nm">
				<div class="agile_fx">
				
				<label class="w3ls-opt">NOMINEE<span class="w3ls-star"> * </span></label>
				</div>
				<div class="wthree_fl">
				<div class="w3ls-name">	
					<input type="text" name="NOMINEE"  placeholder="NOMINEE" required=" "/>
				</div>
				</div>
			</div>

			<div class="w3l_nm">						
					<input type="checkbox" name="agree"  required=" "/>
					<label class="w3ls-opt">Agree terms and conditions</label>
				</div>
			


<div class="clear"></div>

		<input type="submit" value="submit">
		<input type="reset" value="Clear form">
</form>

	
	</div>
</div>

 		<!--copyright -->
	<div class="copy-wthree">
		<p>© 2018 Patronage Appointment Form . All Rights Reserved | Design by
			<a href="http://w3layouts.com/" target="_blank">W3layouts</a>
		</p>
	</div>
	<!--//copyright-->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>

		<!-- Necessary-JavaScript-Files-&-Links -->
			<!-- Date-Picker-JavaScript -->
				<script src="js/jquery-ui.js"></script>
				<script>
					$(function() {
						$( "#datepicker,#datepicker1,#datepicker2" ).datepicker();
					});
				</script>
				<script type="text/javascript" src="js/wickedpicker.js"></script>
			<script type="text/javascript">
				$('.timepicker').wickedpicker({twentyFour: false});
			</script>

			<!-- //Date-Picker-JavaScript -->
		<!-- //Necessary-JavaScript-Files-&-Links -->
</body>
</html>