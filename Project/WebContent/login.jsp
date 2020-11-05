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
}

.col-md-4{
     margin-top: 20ex;
     margin-left: 90px;
}

.col-md-6{
	
     margin-top: 20ex;
     align-content: center;
     justify-content: center;
     text-align: center;
     margin-left: 80px;
	
}

</style>

</head>
   <body>
      <%@ include file="header1.jsp" %> 
   
   
     	<form  action="validate.jsp" method="post">    
	      <div class="container-fluid">
	   		<div class="row">
	   		  <div class="col-md-4">
	   		  		<h2 class="text-left"  style="font-size: 50px; color: purple">Login</h2>
	   		  		<p class="text-left" style="font-size: 20px;font-weight: bold;" >Don't have an account ?<a href="reg_form.jsp">Create account</a></p>
	   		  		<input type="text" class="form-control" name="uname" placeholder="User name" required >
	   		  	    <input type="password" class="form-control" name="pass" placeholder="password" required>
	   		  	    <p class="text-right"><a href="#">Forget Password</a></p>
	   		  	    <input type="submit" value="Login" class="btn btn-info">	   		  	    
	   		  </div>
	   		  
	   		  	
	   		  <div class="col-md-6">
	   		      <h1 style="font-size: 55px">WELCOME TO</h1>
	   		      <h1 style="color: red;font-size:60px">APNI BANK</h1>
	   		      <h1 style="font-size:45px;margin-top:30px;color: purple">"Your Perfect Banking Partner"</h1>	   		  
	   		  </div>	   		  
	   		</div>
	       </div>						  							
    	</form>	
</body>
</html>