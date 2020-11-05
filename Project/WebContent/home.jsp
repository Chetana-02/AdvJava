<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ include file="header.jsp" %> 
   <%@ include file="cache_control.jsp" %>   
 
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<%
	if(user !=null && user.getUserId()>0){

%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME Page</title>
</head>
<body>
	
		<table align="center" style="font-size: 40px" >
			<thead>
				<tr>
					<th colspan="2" >Home Page</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="account_add_form.jsp" >Add Account Info</a></td>
					
				</tr>
				
							
				<tr>
					<td><a href="account_list.jsp" >Show List</a></td>				
				</tr>
				
				
				<tr>
					<td><a href="login.jsp" >Back to Login Page</a></td>
					
				</tr>
				
			</tbody>
		</table>

</body>
</html>

<%}else{
	response.sendRedirect("login.jsp");
}
	
	%>
