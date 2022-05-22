<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Active Accounts List</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>

<style type="text/css">
body {
    background: url(bootstrap/dist/template/images/cust_login.jpg)no-repeat;
    }

</style>
</head>
<body>
	<div class="jumbotron text-center">
		<h2 >All Accounts from&nbsp;&nbsp;${sessionScope.validCustomer.myBranch.branchName} </h2>
	</div>
	
		<div class="col-md-8 offset-md-2 table-responsive">
		<table class="table table-hover">
			  <thead class="thead-light">
			    <tr>
			      <th >Account Number</th>
			      <th >Holder Name</th>
			      <th >Email</th>
			      <th >A/C Type</th>
			      <th >Address</th>
			      <th>Balance</th>
			    </tr>
			  </thead>
 			 <tbody>
   			<c:forEach var="acc" items="${sessionScope.accList}">
					<tr>
						<td>${acc.accountNo }</td>
						<td>${acc.accHolder.firstName}&nbsp;${acc.accHolder.lastName}</td>
						<td>${acc.accHolder.email}</td>
						<td>${acc.accType.accTypeName}</td>
						<td>${acc.accHolder.myAddress.streetAddr}&nbsp;${acc.accHolder.myAddress.city}<br><b>${acc.accHolder.myAddress.pin}</b></td>
						<td>${acc.accountBalance}</td>
					</tr>
			</c:forEach>
  			</tbody>
		</table>	
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