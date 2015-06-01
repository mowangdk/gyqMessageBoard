<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑留言信息</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jsps/include/mycss.css">
</head>

<body topmargin="0" leftmargin="0">
	<jsp:include page="../jsps/top.jsp"></jsp:include>
	<jsp:include page="adminmenu.jsp"></jsp:include>

	<table border="0" align="center" width="760" class="grayline">
		<tr>
			<td align=center>
				<form
					action="${pageContext.request.contextPath}/admin/replay.do?id=${ms.id}"
					method="post">
					<table width="600" border="1" cellpadding="3" bordercolor="#333333"
						style="border-collapse: collapse;">
						<tr>
							<td align="right" width=20% height=15>留言者IP地址</td>
							<td>${ms.userIP}</td>
						</tr>
						<tr>
							<td align="right" width=20%>留言日期</td>
							<td>${ms.postDate }</td>
						</tr>
						<tr>
							<td align="right" width=20%>留言人姓名</td>
							<td>${ms.userName}</td>
						</tr>
						<tr>
							<td align="right" width=20%>留言邮箱</td>
							<td>${ms.userMail}</td>
						</tr>
						<tr>
							<td align="right" width=20%>留言网址</td>
							<td>${ms.url}</td>
						</tr>
						<tr>
							<td align="right" width=20%>QQ</td>
							<td>${ms.qq }</td>
						</tr>
						<tr>
							<td align="right" width=20%>留言内容</td>
							<td><textarea style="overflow:auto;" name="content"
									cols="60" rows="8">${ms.content }</textarea></td>
						</tr>
						<tr>
							<td align="right" width=20%>回复内容</td>
							<td><c:if test="${! empty ms.rmessages }">
									<c:forEach items="${ms.rmessages }" var="remessage">
										<textarea style="overflow:auto;" name="rmessage.reMessage"
											cols="60" rows="8">${remessage.reMessage}</textarea>
									</c:forEach>
								</c:if> 
								<textarea style="overflow:auto;" name="rmessage.reMessage" cols="60" rows="8"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" width=20%><input
								type="submit" value=" 提 交 "></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
	<jsp:include page="../jsps/buttom.jsp"></jsp:include>
</body>
</html>
