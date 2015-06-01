<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台管理</title>
	<link rel="stylesheet" type="text/css" href="../include/mycss.css">
  	<script type="text/javascript">
		function message()
		{
			alert("操作成功");
		}
	</script>
	<meta http-equiv="Refresh" content="1;url=index.jsp">
  </head>
  
  <body topmargin="0" leftmargin="0" onload="message()">
  	<jsp:include page="../jsps/top.jsp"></jsp:include>
  	<jsp:include page="adminmenu.jsp"></jsp:include>
  	
    <table border="0" align="center" height="200" width="760" class="grayline">
		<tr>
			<td align=center>
				&nbsp;
			</td>
		</tr>
	</table>
	<jsp:include page="../jsps/buttom.jsp"></jsp:include>
  </body>
</html>
