<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fund Transfer</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>
</head>
<body>
<%-- 
	<form:form method="post" modelAttribute="account">
		<table>
			<tr>
				<td></td>
				<td>Account No.</td>
				<td>Balance</td>
			</tr>
			<c:forEach var="accnt" items="${requestScope.listAccount}">
				<tr>
					<td><input type="radio" name="senderAccontNo"
						value="${accnt.accountNo}" /></td>
					<td>${accnt.accountNo}</td>
					<td>${accnt.accountBalance}</td>
				</tr>
			</c:forEach>
		</table> --%>
		
		
		
		<form:form method="post" modelAttribute="account">

		<div class="card border-dark mb-3" style="max-width:1200px;margin: auto;">
			<div class="card-header"><h5 class="card-title">Your Accounts</h5></div>
			<div class="card-body text-dark">

			
					<table class="table table-hover">
						<tr>
							<th>Select</th>
							<th>Account No</th>
							<th>Balance</th>
						</tr>
						<c:forEach var="accnt" items="${requestScope.listAccount}">
							<tr>
								<td><input type="radio" name="senderAccontNo"
						value="${accnt.accountNo}" /></td>
								<td>${accnt.accountNo}</td>
								<td>${accnt.accountBalance}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			
		<br><br>
		<h4 class="text-center">Enter Transaction Details</h4>
		<br>
		<div class="col-md-10 offset-md-4">
			
			<div class="form-group row">
			<label for="accNo" class="col-sm-2 col-form-label">Beneficiary Account No</label>
			<div >
				<form:input type="number"  class="form-control"
					id="accNo" path="accountNo" placeholder="Enter Account No"></form:input>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="amt" class="col-sm-2 col-form-label">Enter Amount to Transfer</label>
			<div >
				<input type="number"  class="form-control"
					id="amt" name="amount" placeholder="Enter Amount"></input>
			</div>
		</div>
		
		<div class="form-group row">
			<label for="desc" class="col-sm-2 col-form-label">Purpose of Transfer</label>
			<div>
				<textarea  class="form-control"
					id="desc"  name="purpose" placeholder="Description...."></textarea>
			</div>
		</div>
			
			
		</div>
		<center><input type="submit" class="btn btn-warning btn-lg" value="Transfer" /></center>
		
		
<%-- 		
Benificiary Account No<br>
		<form:input path="accountNo" />
		<br>
Enter Amount to Transfer<br>
		<input type="text" name="amount" />
		<br>
Purpose of Transfer<br>
		<input type="text" name="purpose" />
		<br>
		<br>
		<input type="submit" value="Transfer" />
		<br>
 --%>
</form:form>
	<br>
	<br>
	<div class="footer-copyright text-center py-3">
		<br> <a
			href='<spring:url value="/customer_dashboard"></spring:url>'><<<---Go
			Back</a> <br> © 2018 Copyright: <a href="http://localhost:8080/BOS/">BOS.com</a>
	</div>
</body>
</html>