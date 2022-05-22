<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>"
	type="text/css" media="all">
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">

	
				<h2>Account Details</h2>
				
				

	
	</div>

	<div class="col-md-11 offset-md-1 row">

		<div class="card border-dark mb-3" style="max-width:1200px;">
			<div class="card-header"><h5 class="card-title">Update Account Details</h5></div>
	<form:form method="post" modelAttribute="account">

			<div class="card-body text-dark">
				<input type="text" name="accntId"
					value="${sessionScope.account.accountId}" hidden="true" /> <input
					type="text" name="custid"
					value="${sessionScope.account.accHolder.custId}" hidden="true" /> <input
					type="text" name="typeid"
					value="${sessionScope.account.accType.typeId}" hidden="true" />
				<table class="table">
					<thead>
						<tr>
							<th>Email</th>
							<th>Phone</th>
							<th>Account No</th>
							<th>Account Balance</th>
							<th>Account Type</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><form:input type="text" class="form-control" path="accHolder.email" /></td>
							<td><form:input type="text" class="form-control" path="accHolder.phone" /></td>
							<td><form:input type="text" class="form-control text-plain" readonly="true" path="accountNo" /></td>
							<td><form:input type="text"  class="form-control plaintext" readonly="true" path="accountBalance"/></td>
							<td><form:input type="text"  class="form-control plaintext" readonly="true" path="accType.accTypeName" /></td>
						</tr>
						<tr>
							<td><b>Amount</b> <input type="number" name="amount" value=0 /></td>
							<td><input type="submit" class="btn btn-primary" name="btn"
								value="Withdraw" />&nbsp;
							<input type="submit" class="btn btn-primary" name="btn"
								value="Deposit" /></td>
						</tr>
						<tr>
							
							<td colspan="5"><center><input type="submit" class="btn btn-success btn-lg" name="btn"
								value="Update" /></center></td>
						</tr>
					</tbody>
				</table>
			
				
			</div>
			
		</form:form>
		</div>
		
	</div>
	
	 <div class="footer-copyright text-center py-3">
	 	<br>
		<a href='<spring:url value="/dashboard"></spring:url>'><<<---Go Back</a>
		<br>
	 
	 © 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>
</body>
</html>