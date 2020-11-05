
<%@page import="com.service.copy.AccountService"%>
<%@page import="com.service.copy.AccountServiceImple"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean> //You need userId from user object for adding info for that particular user
<jsp:useBean id="account" class="com.dto.Account" scope="page"></jsp:useBean>
//User object is created and stored in session scope which is reffered by id = user

<jsp:setProperty property="*" name="account" />
//setters and getter are called and data is stored in bean properties

//controller is taking data from view and storing data in bean object

<%   
    System.out.println(user);
    account.setUserid(user.getUserId());   //userId taken from user object and stored in account object
	AccountService accountService = new AccountServiceImple();
	int i = accountService.addAccount(account);
	response.sendRedirect("account_add_form.jsp?msg="+i);	
%>