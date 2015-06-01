<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="../jsps/include/mycss.css">
<script type="text/javascript">
	function selectAll(node) {
		var isChecked = node.checked;
		var checkboxes = document.getElementsByName("id");
		for (var i = 0; i < checkboxes.length; i++) {
			checkboxes[i].checked = isChecked;
		}
	}

	function submitCheck() {
		var checkboxes = document.getElementsByName("id");

		for (var i = 0; i < checkboxes.length; i++) {
			if (checkboxes[i].checked) {
				if (window.confirm("确实删除选定的留言？\n该操作不可恢复！")) {
					return true;
				} else {
					return false;
				}
			}
		}
		alert("请选则要删除的留言");
		return false;
	}
</script>
</head>

<body topmargin="0" leftmargin="0">
	<jsp:include page="../jsps/top.jsp"></jsp:include>
	<jsp:include page="adminmenu.jsp"></jsp:include>
	<form action="<c:url value='/admin/delete.do'/>" name="managerform" method="post">
		<table id="admintable" align="center" width="760px">
			<tr>
				<td>选择</td>
				<td>用户名</td>
				<td>留言</td>
				<td>日期</td>
				<td>邮箱</td>
				<td>QQ</td>
				<td>url</td>
			</tr>
			<c:forEach items="${allMessage}" var="message">
				<tr>
					<td><input type="checkbox" name="id" value="${message.id }"/></td>
					<td>${message.userName}</td>
					<td><a href="<c:url value='/admin/detailMessage.do?id=${message.id}' />" >${message.content }</a></td>
					<td>${message.postDate}</td>
					<td>${message.userMail }</td>
					<td>${message.qq}</td>
					<td>${message.url}</td>
				</tr>
			</c:forEach>
			<tr>
				<td><input type="checkbox" onclick="selectAll(this)">全选<input
					type="submit"  onclick="submitCheck()" value="删除" /></td>
			</tr>
		</table>
	</form>

	<jsp:include page="../jsps/buttom.jsp"></jsp:include>
</body>
</html>
