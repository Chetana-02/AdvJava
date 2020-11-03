<%@page import="com.service.copy.UserServiceImple"%>
<jsp:useBean id="user" class="com.dto.User" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="user" />

<%
	UserServiceImple userService = new UserServiceImple();
	userService.registerUser(user);
	response.sendRedirect("login.jsp");
	
%>