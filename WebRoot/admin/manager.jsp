<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>后台管理</title>
		<link rel="stylesheet" type="text/css" href="../include/mycss.css">
	</head>
	<body topmargin="0" leftmargin="0">
		<jsp:include page="../jsps/top.jsp"></jsp:include>
  		<jsp:include page="adminmenu.jsp"></jsp:include>
		<table border="0" align="center" width="760" class="grayline">
			<tr>
				<td align=center>
					<form action="${pageContext.request.contextPath}/admin/modify.do" method="post" name="managerform">
						<table width="600" border="1" cellpadding="3" bordercolor="#333333" style="border-collapse: collapse;">
							<tr>
								<td width="25%" align="right">网站名称 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=text name=sitename value="${applicationScope.siteInfo.name }" maxlength=20>
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">管理员姓名 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=text name=admin value="${sessionScope.admin.userName }" readonly="readonly" maxlength=16>
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">管理员密码 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=password name=password value="" maxlength=16> [若不修改密码，请留空]</td>
								</tr>
							<tr>
								<td width="25%" align="right">留言必填Email &nbsp; &nbsp; </td>
								<td align="left">
									<mytag:radio name="needEmail"></mytag:radio>
									[留言时是否必须填写有效E-mail地址]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">支持html功能 &nbsp; &nbsp; </td>
								<td align="left">
									<mytag:radio name="supportHtml"></mytag:radio>
									[是否屏蔽用户留言中的html代码]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">留言审核开关 &nbsp; &nbsp; </td>
								<td align="left">
									<mytag:radio name="needCheckup"></mytag:radio>
									[留言是否需要审核]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">留言内容长度 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=text name=maxlength value="${applicationScope.siteInfo.contentLength }" maxlength=3> 
									[留言内容的最多字符数，例如200]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">每页留言条数 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=text name=pages value="${applicationScope.siteInfo.pageSize }" maxlength=2>  
									[推荐10]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">管理员回复提示 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=text name=huifutishi value="${applicationScope.siteInfo.replayTip }" maxlength=10> 
									[例如：“客服回复”]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">管理员回复颜色 &nbsp; &nbsp; </td>
								<td>
									<input type=text name=huifucolor value="${applicationScope.siteInfo.replayColor }" maxlength=10> 
									[可使用英文单词或16进制数，如：red、#CCFF00”]
								</td>
							</tr>
							<tr>
								<td width="25%" align="right">脏话过滤 &nbsp; &nbsp; </td>
								<td align="left">
									<input type=text name=bad value="${applicationScope.siteInfo.badWords }" size=50 maxlength=255><br> 
									[用/隔开]
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="保存设置">
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<jsp:include page="../jsps/buttom.jsp"></jsp:include>
	</body>
</html>