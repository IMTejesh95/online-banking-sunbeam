<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>
</head>
<body>	
	<center>
		<div class="alert alert-success">${requestScope.status}</div>
		<h4>Email of Customer: <i>${sessionScope.account.accHolder.email}</i></h4>
		<br><br><br>
		<div class="col-md-6">
		<form method="post">
		 	<div class="form-group">
			 	 <label >Customer's Email</label>
    			<input type="email" class="form-control" name="email"  aria-describedby="emailHelp" placeholder="Enter email" autofocus>
   				<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			</div>
			<div class="form-group">
			 	 <label >Message</label>
    			<textarea class="form-control" name="message" readonly="readonly" rows=10>
    			Hello ${sessionScope.account.accHolder.firstName},
    			Congratulations! Your account has been activated successfully in Bank Of Sunbeam.
    			Your account details are:
    			Account No:${sessionScope.account.accountNo}
    			Username:${sessionScope.account.accHolder.userName}
    			Password:${sessionScope.account.accHolder.password}
    			Thank you.
    			
    			You can login from following link->
    			http://localhost:8080/DemoProject/customer_login
    			</textarea>
			</div>
			
			<div class="form-group">
				<input type="submit" value="Send Email">
			</div>
		</form>
		</div>
		
		<br>
			<a href='<spring:url value="/dashboard"></spring:url>'><<<---Go Back</a>
		<br>
	</center>
	
</body>
</html>