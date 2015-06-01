<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin_Menu</title>
	</head>
	<body>
		<table border="0" cellspacing=0 cellpadding=0 align="center" width="760px" height="50px"" class="grayline">
			<tr>
				<td align="center">
					<a href="${pageContext.request.contextPath}/admin/index.do"><img src="${pageContext.request.contextPath}/jsps/images/admin_home.gif" border="0"></img></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/admin/dispatch.do?method=manager"><img src="${pageContext.request.contextPath}/jsps/images/admin_setup.gif" border="0"></img></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/admin/dispatch.do?method=logout"><img src="${pageContext.request.contextPath}/jsps/images/loginout.gif" border="0"></img></a>
				</td>
			</tr>
		</table>
	</body>
</html>