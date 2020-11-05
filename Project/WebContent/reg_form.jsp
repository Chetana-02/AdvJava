
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Login Page</title>
<style>

*{
	margin:0px;
	padding: 0px;
}

body{
	font-family: new time roman;
	width: 100%;
	height: 100%;
}

h2{
	font-size: 40px;
	color:black;
	margin-top: 90px;
}

.form-control{
	font-size: 19px;
	color: black;
	margin-top: 15px;
	padding: 20px;
}

.btn-info{
	float: center;
	font-size: 20px;
	width: 150px;
	border-radius: 100px;
	border: 0px;
	background: #873fdf;
	margin-top: 2ex;
}

.col-md-4{
     margin-left: 90px;
}

.col-md-6{
	
     margin-top: 20ex;
     align-content: center;
     justify-content: center;
     text-align: center;
     margin-left: 80px;
	
}

.require{
	font-size: 25px;
	color: red;
}

</style>

</head>
   <body>
   
         <%@ include file="header1.jsp" %> 
   
     	<form  action="reg.jsp" method="post">    
	      <div class="container-fluid">
	   		<div class="row">	   		  
	   	   		  <div class="col-md-6">
	   		      <h1 style="font-size: 55px">REGISTER WITH US</h1>
	   		      <h1 style="color: red;font-size:60px">TO EXPERIENCE</h1>
	   		      <h1 style="font-size:45px;margin-top:30px;color: purple">"SECURE BANKING"</h1>	   		  
	   		  </div>
	   		  
	   		    <div class="col-md-4">
	   		  	<h2 class="text-left"  style="font-size: 50px; color: purple">Valid Information needed for Registration<span class="require">(*Required)</span></h2>
	   		  	    <input type="text" class="form-control" name="fname" placeholder="*First name" required >
	   		  		<input type="text" class="form-control" name="mname" placeholder="*Middle name" required >
	   		  		<input type="text" class="form-control" name="lname" placeholder="*Last name" required >		   		  	   		  		   		  		
	   		  		<input type="text" class="form-control" name="uname" placeholder="*User name" required >
	   		  	    <input type="password" class="form-control" name="pass" placeholder="*Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>	   		  	    
	   		  	    <input type="submit" value="Register" class="btn btn-info">
	   		  	     <a href="login.jsp" class="btn btn-info" role="button">Back</a>	   		  	    
	   		  </div>	   		  
	   		</div>
	    </div>									
	</form>
</body>
</html>