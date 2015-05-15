<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>  
    <title>My JSP 'regist.jsp' starting page</title>  
  </head>
  
  <body>
   <form action="<c:url value='/user/regist.do' />" method="Post" id="regist" autocomplete="on"></form>
  	登入 账号：<input type="text" name="account" value="" form="regist" required="required" />
   	密码：<input type="password" name="password" value="" form="regist" required="required"/>
   	用户名：<input type="text" name="username" value="" form="regist" required="required" placeholder="lalala"/>
   	生日：<input type="date" name="birthday" form="regist" />	 
   	邮箱:<input type="email" name="userMail" form="regist" />

   	<input type="submit" value="submit" form="regist" />
  </body>
</html>
