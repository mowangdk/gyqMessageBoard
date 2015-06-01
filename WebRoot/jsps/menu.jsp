<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Menu</title>
	</head>
	<body>
		<table border="0" cellspacing=0 cellpadding=0 align="center" width="760px" height="50px" class="grayline">
			<tr>
				<td align="center">
					<a href="<c:url value='/message/getaddmessagepage.do' />"><img src="${pageContext.request.contextPath}/jsps/images/write.gif" border="0"></img></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<c:url value='/message/showmessage.do?pi.page=1' />"><img src="${pageContext.request.contextPath}/jsps/images/read.gif" border="0"></img></a>
				</td>
			</tr>
		</table>
	</body>
</html>