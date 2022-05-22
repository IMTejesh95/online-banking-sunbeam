<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error</title>
<link href="<spring:url value='/bootstrap/dist/css/bootstrap.css'/>" type="text/css" rel="stylesheet"/>
<script src="bootstrap/dist/js/jquery.1.9.1.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
	<h2  style="color: red;font-style: italic;"><i>${requestScope.status}</i></h2>
	<a href="${requestScope.url}">${requestScope.link}</a>
	</div>s
	<br><br><
	 <div class="footer-copyright text-center py-3">© 2018 Copyright:
      <a href="http://localhost:8080/BOS/">BOS.com</a>
    </div>
</body>
</html>