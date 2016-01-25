<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:url value="/" var="homeUrl" />
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="resources/css/theme.css">  
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    	
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-briefcase"></span> Private Banking</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="${homeUrl}">Home</a></li>
        <li><a href="#">Account</a></li>
        <li><a href="#">Dashboard</a></li> 
        <li><a href="magasin">Magasin</a></li>
        <li><a href="ticket">Ticket</a></li> 
        <li><a href="products">Products</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      
    </div>
  </div>
</nav>
</body>
</html>