<%@page import="com.service.copy.AccountServiceImple"%>
<%@page import="com.service.copy.AccountService"%>

<jsp:useBean id="account" class="com.dto.Account" ></jsp:useBean>
<jsp:setProperty property="*" name="account"/>

<%
	AccountService expenseService = new AccountServiceImple();
	expenseService.modifyAccount(account);
	response.sendRedirect("account_list.jsp");
%>