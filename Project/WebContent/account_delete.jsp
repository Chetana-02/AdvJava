<%@page import="com.service.copy.AccountServiceImple"%>
<%@page import="com.service.copy.AccountService"%>
<%
	int accountId = Integer.parseInt(request.getParameter("accountId"));
	AccountService accountService = new AccountServiceImple();
	accountService.removeAccount(accountId);
	response.sendRedirect("account_list.jsp");
%>