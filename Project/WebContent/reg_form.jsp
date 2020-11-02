<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<form  action="reg.jsp" method="post">
		<table align="center" style="background-color:white;font-size: 25px">
		<thead>
		      <tr>
		      	<th colspan="2">Register Page</th>
		      </tr>
		</thead>
		<tbody>
				<tr>
				   <td>Enter First Name</td>
				   <td><input type="text" name="fname" required/></td>
				</tr>
				
				<tr>
				   <td>Enter Middle Name</td>
				   <td><input type="text" name="mname" required /></td>
				</tr>
				
				<tr>
				   <td>Enter Last Name</td>
				   <td><input type="text" name="lname"  required/></td>
				</tr>
				
				<tr>
				   <td>Enter valid Aadhar card Number</td>
				   <td><input type="text" name="anum" maxlength="12" required /></td>
				</tr>
				
				<tr>
				   <td>Pan Number</td>
				   <td><input type="text" name="pnum" /></td>
				</tr>
				
				<tr>
				   <td>Enter Residential Address</td>
				   <td><input type="text" name="address" required /></td>
				</tr>
				
				<tr>
				   <td>Enter valid Mobile Number</td>
				   <td><input type="text" name="monum" required/></td>
				</tr>
				
				<tr>
				   <td>Enter Username</td>
				   <td><input type="text" name="uname" required/></td>
				</tr>
				
				<tr>
				   <td>Enter Password</td>
				   <td><input type="password" name="pass" required /></td>
				</tr>
				
				<tr>
				   <td><a href="login.jsp">Go to Login Page</a></td>
				   <td><input type="submit" value="Register"></td>
				</tr>
		</tbody>
		</table>
	</form>
</body>
</html>