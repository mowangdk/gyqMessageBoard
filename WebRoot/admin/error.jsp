<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台管理</title>
	<link rel="stylesheet" type="text/css" href="../include/mycss.css">
  </head>
  
  <body topmargin="0" leftmargin="0">
  	<jsp:include page="../jsps/top.jsp"></jsp:include>
  	<jsp:include page="adminmenu.jsp"></jsp:include>
  	
    <table border="0" align="center" width="760" class="grayline">
		<tr>
			<td align=center>
				出现未知错误。${requestScope.message }
			</td>
		</tr>
	</table>
	<jsp:include page="../jsps/buttom.jsp"></jsp:include>
  </body>
</html>
