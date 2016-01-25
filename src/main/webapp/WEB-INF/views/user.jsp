<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<meta charset="UTF-8">
	<title>Users</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/theme.css">  
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resources/js/scripts.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
</head>

<body>
	<div class="container">
	<jsp:include page="navbar.jsp" />
        <div class="row centered-form">
        	<div class="col-xs-12 col-sm-10 col-md-6 col-sm-offset-4 col-md-offset-3">
        		<div class="panel panel-default">
        			<div class="panel-heading">
			    		<h3 class="panel-title text-center">Users</h3>
			 		</div>
			 			
			 		<div class="panel-body">
			 		
			    		<form role="form">
			    				
			    			<c:forEach var="user" items="${userList}" >
		    				 <div  class="row">	
		    					
		    					<div class="col-xs-4 col-sm-4 col-md-4">
		    							<div class="form-group">
		                					<input type="text" name="firstName" id="firstName" class="form-control input-sm" placeholder="First Name" value = "${user.firstName}">
		    							</div> 
		    					</div>
		    					
		    					<div class="col-xs-4 col-sm-4 col-md-4">
		    							<div class="form-group">
		                					<input type="text" name="lastName" id="lastName" class="form-control input-sm" placeholder="Last Name" value = "${user.lastName}">
		    							</div> 
		    					</div>
		    					
		    					<div class="col-xs-4 col-sm-4 col-md-4">
		    							<div class="form-group">
		                					<input type="text" name="userName" id="userName" class="form-control input-sm" placeholder="User Name" value = "${user.userName}">
		    							</div> 
		    					</div>
		    						
		    					<div class="col-xs-4 col-sm-4 col-md-12">
		    							<div class="form-group">
		    								<input type="text"  name="mail" id="mail" class="form-control input-sm" placeholder="mail" value = "${user.email}">
		    							</div>
		    					</div>
		    				 </div>	
		    				 		 
			    			</c:forEach>
			    			<div  class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="reset" value="Reset" class="btn btn-info btn-block">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="submit" id="addMagasin" value="Add User" class="btn btn-info btn-block">
			    					</div>
			    				</div>
			    			</div>
			    		
			    		</form>
			    		
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</body>
</html>