<%@page import="com.service.copy.ExpenseServiceImple"%>
<%@page import="com.service.copy.ExpenseService"%>
<%
	int expenseId = Integer.parseInt(request.getParameter("expenseId"));
	ExpenseService expenseService = new ExpenseServiceImple();
	expenseService.removeExpense(expenseId);
	response.sendRedirect("expense_list.jsp");
%>