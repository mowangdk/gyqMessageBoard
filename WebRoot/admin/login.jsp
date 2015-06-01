<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理员登陆</title>
		<link rel="stylesheet" type="text/css" href="../include/mycss.css">
	</head>
	<body topmargin="0" leftmargin="0">
		<jsp:include page="../jsps/top.jsp"></jsp:include>
  		
		<table border="0" align="center" width="760" class="grayline">
			<tr>
				<td>
					<form action="${pageContext.request.contextPath}/admin/login.do" name="form1" method="post">
						<table width="320" border="1" cellpadding="3" bordercolor="#333333" style="border-collapse: collapse;" align=center>
							<caption style="padding-bottom:10px;font-family:隶书;font-size:25px">
								管理员登陆
							</caption>
							<tr>
								<td align="center">用户名：</td>
								<td>
									<input type="text" name="username" style="width:150px" value="coolszy">
									<span style="color:red"></span> 
								</td>
							</tr>
							<tr>
								<td align="center">密&nbsp;码：</td>
								<td>
									<input type="password" name="password" style="width:150px" value="kuka">
									<span style="color:red"></span>
								</td>
							</tr>
							<tr>
								<td colspan="2"  align="center">
									<input type="submit" value="管理登陆">
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td align="center">
					<font color="red">
						<html:errors property="loginFail"/>
					</font>
				</td>
			</tr>
		</table>
		
		<jsp:include page="../jsps/buttom.jsp"></jsp:include>
	</body>
</html>