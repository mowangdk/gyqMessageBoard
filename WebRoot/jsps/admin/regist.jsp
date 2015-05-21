<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>  
    <title>My JSP 'regist.jsp' starting page</title>  
  </head>
  
  <body>
   <form action="<c:url value='/user/user.regist.do' />" method="Post" id="regist" autocomplete="on"></form>
            登入账号：<input type="text" name="user.username" value="" form="regist" required="required" />
   	密码：<input type="password" name="user.userpass" value="" form="regist" required="required"/>
   	用户名：<input type="text" name="user.uname" value="" form="regist" required="required" placeholder="lalala"/>
   	生日：<input type="date" name="user.birthday" form="regist" />	 
   	邮箱:<input type="email" name="user.email" form="regist" />
	留言:<textarea name="user.remark" rows="3" cols="30" >
		</textarea>
   	<input type="submit" value="submit" form="regist" />
  </body>
</html>
