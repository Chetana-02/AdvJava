<%@page import="com.dto.Account"%>
<%@page import="com.service.copy.AccountServiceImple"%>
<%@page import="com.service.copy.AccountService"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
	AccountService accountService = new AccountServiceImple();  
 	ArrayList<Account> list = accountService.AccountList(user.getUserId());
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account list Page</title>
</head>
<body>
	
		<table align="center" style="font-size: 30px" >
			<thead>
	            <a href="home.jsp" class="btn btn-info" role="button">Back</a>		   		  	     							  	    
			
				
				<tr>
					<th >IFSC Code  </th>
					<th >CIF Code  </th><br>
					<th >Account No </th><br>
					<th >Balance </th><br>
					<th >Branch  </th><br>
				    <th >Email id  </th><br>
					<th >Mobile NO  </th><br>
					<th >Aadhar NO  </th><br>
					<th >Pan No  </th>
										
					
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(Account e : list){
				%>
				<tr>
					                    <td style="text-align: center;" ><%=e.getIfsc()%></td>
										<td style="text-align: center;" ><%=e.getCif()%></td>
										<td style="text-align: center;" ><%=e.getAcc()%></td>
										<td style="text-align: center;" ><%=e.getAmt()%></td>
										<td style="text-align: center;" ><%=e.getBran()%></td>
										<td style="text-align: center;" ><%=e.getEmail()%></td>
										<td style="text-align: center;" ><%=e.getMno()%></td>
										<td style="text-align: center;" ><%=e.getAno()%></td>
										<td style="text-align: center;" ><%=e.getPno()%></td>
										
					
					<td style="text-align: center;" ><a href="account_delete.jsp?accountId=<%=e.getAcc_id()%>" >Delete</a></td>
					<td style="text-align: center;" ><a href="account_update_form.jsp?accountId=<%=e.getAcc_id()%>">Update</a></td>
				</tr>
				<% } %>
				
				
			</tbody>
		</table>
	
</body>
</html>