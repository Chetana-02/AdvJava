<%@page import="com.service.copy.UserService"%>
<%@page import="com.service.copy.UserServiceImple"%>
<jsp:useBean id="user" class="com.dto.User" scope="page"></jsp:useBean>
//User object is created and stored in session scope which is reffered by id = user

<jsp:setProperty property="*" name="user" />
//setters and getter are called and data is stored in bean properties

//controller is taking data from view and storing data in bean object

<%
	UserService userService = new UserServiceImple();
	userService.registerUser(user);
	response.sendRedirect("login.jsp");	
%>