<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Account</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">


	<form:form method="post" modelAttribute="account">

		<div class="col-md-6 offset-md-3">
			<h2>Search Account</h2>
			<br> <br>
			<form:input  path="accountNo" class="form-control" />
			<br>
			
				<button type="submit" class="btn btn-success btn-lg">Search</button>
			
			<br> <br>
			
			</div>
			</form:form>
	</div>
	
	<div class="footer-copyright text-center py-3">
	 	<br>
		<a href='<spring:url value="/customer_dashboard"></spring:url>'><<<---Go Back</a>
		<br>
	 
	 © 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>
	
</body>
</html>