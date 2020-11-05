<%@page import="com.service.copy.AccountServiceImple"%>
<%@page import="com.service.copy.AccountService"%>
<%@page import="com.dto.Account"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<%
	if(user !=null && user.getUserId()>0){

%>    

<%
	int accountId = Integer.parseInt(request.getParameter("accountId"));
	AccountService accountService = new AccountServiceImple();
	Account account = accountService.findAccount(accountId);
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add</title>
</head>
<body>
      <%@ include file="header1.jsp" %> 

	<form action="account_update.jsp" method="post" >
		<table align="center" style="font-size: 35px" >
			<thead>
				<tr>
					<th colspan="2" >Update Expenses</th>
				</tr>
			</thead>
			<tbody>
				<tr><td><input type="hidden" name="acc_id" value="<%=account.getAcc_id()%>" ></td><tr>
				
				<tr>
					<td>IFSC:</td>
					<td><input type="text" name="ifsc" value="<%=account.getIfsc()%>"> </td>
				</tr>
				
				<tr>
					<td>CIF:</td>
					<td><input type="text" name="cif" value="<%=account.getCif()%>"> </td>
				</tr>
				
				<tr>
					<td>Account no:</td>
					<td><input type="text" name="acc" value="<%=account.getAcc()%>"> </td>
				</tr>
				
				<tr>
					<td>Amount:</td>
					<td><input type="text" name="amt" value="<%=account.getAmt()%>"> </td>
				</tr>
				
				<tr>
					<td>Branch:</td>
					<td><input type="text" name="bran" value="<%=account.getBran()%>"> </td>
				</tr>
				
				<tr>
					<td>EmailId:</td>
					<td><input type="text" name="email" value="<%=account.getEmail()%>"> </td>
				</tr>
				
				<tr>
					<td>Mobile no:</td>
					<td><input type="text" name="ano" value="<%=account.getMno()%>"> </td>
				</tr>
				
				<tr>
					<td>Aadhar no:</td>
					<td><input type="text" name="pno" value="<%=account.getAno()%>"  /> </td>
				</tr>
				
				<tr>
					<td>Pan no:</td>
					<td><input type="text" name="mno" value="<%=account.getPno()%>"  /> </td>
				</tr>
				
				<tr>
					<td><a href="account_list.jsp" >Back</a> </td>
					<td><input type="submit" value="Update"  /> </td>
				</tr>
				
			</tbody>
		</table>
	</form>
</body>
</html>
<%}else{
	response.sendRedirect("login.jsp");
}
	
	%>

