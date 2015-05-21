<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>留言成功</title>
		
	</head>
	<body>
		<c:if test="${applicationScope.siteInfo.needCheckup}">
			<script type="text/javascript">
				alert("留言提交成功，留言须经管理员审核才能发布。");
				window.location.href="index.jsp";
			</script>
		</c:if>
		<script type="text/javascript">
			alert("留言提交成功，单击“确定”返回留言列表！");
			window.location.href="index.jsp";
		</script>
	</body>
</html>