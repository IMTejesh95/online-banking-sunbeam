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

<script>
function verifyPassword() 
{
	var pass1 = $('#inputNewPass3').val();
	var pass2 = $('#confirmNewPass3').val();
	if(pass1 != pass2)
	{
		$('#passError1').show();
		return false;
	}
	return true;
}

function hideForm() 
{
	$('#show1').hide();	
}

</script>

</head>
<body onload="hideForm()">


	<div class="col-md-6 center" align="center" style="border-style: solid;">
	<div align="center">
	<h3>Reset Password</h3>
	</div>
	<hr>

	<form method="post" onsubmit="return verifyPassword()">
	<input type="hidden" value="${param.id}" name="id">
	  <div class="form-group">
	    <label for="inputNewPass3" class="col-sm-4 control-label">New Password</label>
	      <input type="password" name="newPass" class="form-control" id="inputNewPass3" placeholder="Enter Password"/>
	  </div>
	  
	   <div class="form-group">
	    <label for="confirmNewPass3" class="col-sm-4 control-label">Verify Password</label>
	      <input type="password" name="confirmPass" class="form-control" id="confirmNewPass3" placeholder="Re-Enter Password"/>
	       <span id="show1" style="color: red;">Password Not match</span>
	  </div>

	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10" >
	      <button type="submit" class="btn btn-success">Reset Password</button>
	    </div>
	  </div>
	</form>											
	</div>

</body>
</html>