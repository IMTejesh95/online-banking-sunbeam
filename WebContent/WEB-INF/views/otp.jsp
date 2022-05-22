<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<style>
.center {
    margin-top: 10%;
    margin-right:25%;
    margin-left:25%;
    margin-bottom:10%;
    border: 3px solid green;
    padding: 20px;
}
.line {
display: inline;
}
</style>

</head>
<body>


	<div class="col-md-6 center" align="center" style="border-style: solid;">
	<div align="center">
		<h3>One Time Password</h3>
	</div>
	<h4 style="color:red">${sessionScope.msg}</h4>
	<hr>
	
	<form method="post" action="confirmOtp">
	  <div class="form-group">
	    <label for="inputotp3" class="col-sm-4 control-label">One Time Password</label>
	      <input name="otp" class="form-control" id="inputotp3" placeholder="Enter 6 digit OTP"/>
	  </div>

	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10" >
	      <button type="submit" class="btn btn-success">Proceed >> </button>
	    </div>
	  </div>
	</form>											
	</div>

</body>
</html>