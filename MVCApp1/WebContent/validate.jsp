<%@page import="com.service.copy.UserServiceImple"%>
<%@page import="com.dto.User"%>
<%@page import="com.service.copy.UserService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<%
	UserService userService = new UserServiceImple();
	boolean b = userService.login(user);
	if(b){
		response.sendRedirect("home.jsp");
	}else{
		response.sendRedirect("login.jsp?error_msg= please check your user name and Password");
	}
%>