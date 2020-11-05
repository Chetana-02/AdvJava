
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<%
	if(user !=null && user.getUserId()>0){

%> 

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

.col-md-5{
	 margin-top:20ex;
     align-content: center;
     justify-content: center;
     text-align: center;
     color:purple;
}

.col-md-6{
	
     padding-top:0px;
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
   
     	<form  action="account_add.jsp" method="post">    
	      <div class="container-fluid">
	   		<div class="row">	   		  
	   	   		  <div class="col-md-5">
	   		      <h1 style="font-size: 50px">YOUR INFORMATION</h1>
	   		      <h1 style="font-size: 50px">IS</h1>
	   		      <h1 style="font-size: 50px">SAFE WITH US</h1>	   		  
	   		</div>
	   		  
	   		    <div class="col-md-6">
	   		  	<h2 class="text-left"  style="font-size: 31px; color: purple">Add Account Information <span class="require">(*Required)</span></h2>
	   		  	    <input type="text" class="form-control" name="ifsc" placeholder="Enter IFSC Code" required >
	   		  	    <input type="text" class="form-control" name="cif" placeholder="Enter CIF Code" required >
	   		  		<input type="text" class="form-control" name="acc" placeholder="Enter Account Number" required >
	   		  		<input type="text" class="form-control" name="amt" placeholder="Deposit Amount" required >
	   		  		<input type="text" class="form-control" name="bran" placeholder="Type bank branch" required >
	   		  		<input type="email" class="form-control" name="email" placeholder="Enter registered Emailid" required >
	   		  		<input type="text" class="form-control" name="ano" placeholder="Enter Aadhar Number" required >
	   		  	    <input type="text" class="form-control" name="pno" placeholder="Enter PanCard Number" required >	   		  	   		  	      		  	    
	   		  	    <input type="submit" value="Add" class="btn btn-info">
	   		  	    <a href="home.jsp" class="btn btn-info" role="button">Back</a>		   		  	     							  	    
	   		  </div>
	   		  	   		  
	   		</div>
	   		<tr style="font-size: 20px;color: red">
					<% 
					String m = request.getParameter("msg");
					
					String msg = "";
					if(m!=null && Integer.parseInt(m)>0){
						msg = "success";
					}
					%>
					<td colspan="2" ><%=msg%></td>					
			</tr>
	    </div>									
	</form>
</body>
</html>

<%}else{
	response.sendRedirect("login.jsp");
}
	%>



