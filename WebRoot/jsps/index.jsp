<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
    	<title>在线留言板</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/include/mycss.css">
  	</head>
  <body>
    	<jsp:include page="top.jsp"></jsp:include>
  		<jsp:include page="menu.jsp"></jsp:include>
  		<table class="grayline" id="table" border="0" align="center" width="760">
  		<c:forEach items="${ml}" var="message">
  				<tr>
  					<td>
  						<img src="${pageContext.request.contextPath}/jsps/images/face/pic${message.pic}.gif">
  					</td>
  				</tr>
  				<tr>
  					<td>
  						${message.userName}
  					</td>
  				</tr>
  			</c:forEach>
  		</table>
		<jsp:include page="buttom.jsp"></jsp:include>
  </body>
</html>
