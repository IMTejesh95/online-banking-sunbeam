<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pending Customers</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>

<script type="text/javascript">
/* $(document).ready(function(){
    $("#pendRow").click(function(){
        $(this).css("background-color","#dee2e6");
    });
}); */
</script>
</head>
<body>
	<div class="alert alert-success" role="alert">${requestScope.status}</div>
	<div class="jumbotron text-center">
		<h2 >All Pending Applications</h2>
	</div>
	<%-- <h4 class="text-center" style="color: ${requestScope.color};font-style: italic;">${requestScope.status}</h4> --%>
	
	<sf:form method="post">
		<div class="col-md-6 offset-md-3 table-responsive">
		<table class="table table-hover">
			  <thead class="thead-light">
			    <tr>
			      <th >Select</th>
			      <th >Customer Name</th>
			      <th >A/C Type</th>
			      <th >Address</th>
			    </tr>
			  </thead>
 			 <tbody>
   			<c:forEach var="cust" items="${sessionScope.pendingCustomers}">
					<tr id="pendRow" onclick="$(this).css('background', '#8b9397')">
						<%-- <td><center><input type="checkbox" name="custId" class="form-check-input" value="${cust.custId}"/></center></td> --%>
						<td><center><input class="form-check-input position-static" type="radio" name="custId" id="custId" value="${cust.custId}"></center></td>
						<td>${cust.firstName}&nbsp;${cust.lastName}</td>
						<td>${cust.accType.accTypeName}</td>
						<td>${cust.myAddress.streetAddr}&nbsp;${cust.myAddress.city}<br><b>${cust.myAddress.pin}</b></td>
					</tr>
			</c:forEach>
		
			<tr>
			<td colspan="4"><center>
				<input type="hidden" name="branchId" value="${param.branchId}">
				<input type="submit" class="btn btn-success" name="actionBtn" value="Approve"/>&nbsp;&nbsp;
				<input type="submit" class="btn btn-danger" name="actionBtn" value="Reject"/>
			</center></td>
			</tr>
  			</tbody>
		</table>	
		</div>
	</sf:form>
		
	
	 <div class="footer-copyright text-center py-3">
	 <br>
			<a href='<spring:url value="/dashboard"></spring:url>'><<<---Go Back</a>
		<br>
	 © 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>
</body>
</html>