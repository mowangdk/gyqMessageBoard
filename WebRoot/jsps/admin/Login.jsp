<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'Login.jsp' starting page</title>
  </head>
  <body>
		<form action="<c:url value='/user/user.login.do' />" name="login"></form>
		<input type="text" name="user.username" form="login" required="required"/>
		<input type="password" name="user.userpass" form="login" required="required"/>
		<input type="submit" form="login" value="submit" />
  </body>
</html>
