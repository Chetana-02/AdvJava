
<%@page import="com.service.copy.ExpenseServiceImple"%>
<%@page import="com.service.copy.ExpenseService"%>
<jsp:useBean id="expense" class="com.dto.Expense" ></jsp:useBean>
<jsp:setProperty property="*" name="expense"/>

<%
	ExpenseService expenseService = new ExpenseServiceImple();
	expenseService.modifyExpense(expense);
	response.sendRedirect("expense_list.jsp");
%>