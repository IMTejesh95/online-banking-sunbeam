<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Profile</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>

</head>
<body>

	<div class="jumbotron text-center">
		<h2 >Profile Update</h2>
	</div>
	<div class="alert alert-success text-center">${requestScope.status}</div>
	<div class="col-md-8 offset-md-4">
		<sf:form modelAttribute="customer" method="post" enctype="multipart/form-data">
		<img src="${sessionScope.url}" style="border-radius: 50%; height: 150px; width: 150px;" class="rounded" alt="${sessionScope.validCustomer.firstName}'s image" >
		<h3 style="color: olive;font-family:inherit;">Personal Details</h3>
		<br>
		<div class="form-group row">
			<label for="staticName" class="col-sm-2 col-form-label">Full Name</label>
			<div >
				<sf:input type="text" readonly="true" class="form-control-plaintext"
					id="staticFn" path="firstName"></sf:input>
			</div>
			<div >
				<sf:input type="text" readonly="true" class="form-control-plaintext"
					id="staticLn" path="lastName"></sf:input>
			</div>
			
		</div>
		
		
		<div class="form-group row">
			<label for="staticDOB" class="col-sm-2 col-form-label">Date Of Birth</label>
			<div class="col-sm-10">
				<sf:input type="date" readonly="true" class="form-control-plaintext"
					id="staticdob" path="dateOfBirth"></sf:input>
			</div>
		</div>
		
		
		<div class="form-group row">
			<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
			<div class="col-sm-5">
				<sf:input type="text" class="form-control"
					id="staticEmail" path="email"></sf:input>
			</div>
		</div>
		
		<br><br>
		<h3 style="color: olive;font-family:inherit;">Address Details</h3>
		<br>
		<div class="form-group row">
			<label for="staticAddr" class="col-sm-2 col-form-label">Address</label>
			<div >
				<sf:input class="form-control"
					id="staticStreet" path="myAddress.streetAddr"></sf:input><br>
					<sf:input  class="form-control"
					id="staticCity" path="myAddress.city"></sf:input><br>
					<sf:input 	 class="form-control"
					id="staticState" path="myAddress.state"></sf:input><br>
			</div>
		</div>
		<div class="form-group row">
			<label for="staticPIN" class="col-sm-2 col-form-label">PIN</label>
			<div>
				<sf:input type="number"  class="form-control"
					id="staticEmail" path="myAddress.pin"></sf:input>
			</div>
		</div>
		<br>
		<h3 style="color: olive;font-family:inherit;">Change Profile Picture</h3>
		<div class="form-group row">
			<label for="image" class="col-sm-2 col-form-label">Profile Photo</label>
			<div>
				<input type="file" class="form-control" id="inputimg3" name="imageUpload"/>
			</div>
		</div>
		
		<br><br>
		<input type="submit" value="Update Profile" class="btn btn-success btn-lg">
	</sf:form>
		
	</div>
	<br><br>
	
	 <div class="footer-copyright text-center py-3">
	 	<br>
		<a href='<spring:url value="/customer_dashboard"></spring:url>'><<<---Go Back</a>
		<br>
	 
	 © 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>

</body>
</html>