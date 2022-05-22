<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account Statement</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>

</head>
<body>
	
	
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
								<td><form:radiobutton path="accountId"
										value="${accnt.accountId}" /></td>
								<td>${accnt.accountNo}</td>
								<td>${accnt.accountBalance}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>

		<center><input type="submit" class="btn btn-light btn-lg" name="btn" value="Show Transactions" /></center><br><br>
	
		<br>
		<%-- <c:if test="${requestScope.isHid}"> --%>
		<table class="table table-hover">
			<tr>
				<th>Transaction Id</th>
				<th>Date Of Transaction</th>
				<th>Amount</th>
				<th>Transaction Type</th>
				<th>Description</th>
			</tr>
			<c:forEach var="trans" items="${requestScope.listTransaction}">
				<tr>
					<td>${trans.transactionId}</td>
					<td>${trans.date}</td>
					<td>${trans.amount}</td>
					<td>${trans.transactionType}</td>
					<td>${trans.descrption}</td>
				</tr>
			</c:forEach>
		</table>
		<%-- </c:if> --%>
		
	</form:form>

	<br>
	<br>
	<div class="footer-copyright text-center py-3">
	 	<br>
		<a href='<spring:url value="/customer_dashboard"></spring:url>'><<<---Go Back</a>
		<br>
	 
	 © 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>
</body>
</html>