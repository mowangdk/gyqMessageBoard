<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>在线留言板</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/include/bootstrap.css">
 <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jsps/include/mycss.css">
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/sysPagination.js"></script>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>

	<c:forEach items="${ml}" var="message">
		<div id="messageboard">
			<div id="headpic">
				<img id="picture"
					src="${pageContext.request.contextPath}/jsps/images/face/pic${message.pic}.gif">
			</div>
			<div id="uname">
				姓名：${message.userName}<br /> 心情：<img
					src="${pageContext.request.contextPath}/jsps/images/face/face${message.face}.gif"><br />
				ip:${message.userIP } userMail:${message.userMail }
			</div>
			<div id="topic">${message.postDate }</div>
			<div id="content1">
				${message.content}
				<c:if test="${!empty message.rmessages}">
					<div id="Recontent">
						<c:forEach items="${message.rmessages}" var="rmessage">
							<div id="reid">${rmessage.id }：${rmessage.reMessage}</div>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</div>
	</c:forEach>
	<div id="pageSplit">

		<script type="text/javascript">
			$(function() {
			var pageInfo={
				page : ${pi.page},
				pageCount : ${pi.pageCount},
				rowCount : ${pi.rowCount},
				limit : 5
			}
				Pagination.pageBottom(pageInfo, "redirect({page:pageNo_})",
						"#pageSplit", false);
			});

			function redirect(args) {
		
				window.location.href = "${pageContext.request.contextPath}/message/showmessage.do?pi.page="+args.page;
			}
		</script>
	</div>
	<jsp:include page="buttom.jsp"></jsp:include>
</body>
</html>
