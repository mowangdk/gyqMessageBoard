<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>发表新留言</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/include/mycss.css">
		<!-- <script type="text/javascript" src="include/validation-framework.js"></script> -->
	</head>
	<body>
		<jsp:include page="top.jsp"></jsp:include>
  		<jsp:include page="menu.jsp"></jsp:include>
  		
  			<table width="760" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF"  class="grayline">
  				<tr>
  					<td>
  						<form id="addMessageForm" action="<c:url value='/message/addmessage.do' /> " method="post">
		  					<table border="0" cellspacing=1 cellpadding=4 align="center" width="680px"bgcolor="#000000" bordercolor="#FFFFFF">
		  						<tr bgColor="#ebebeb">
				  					<td width="20%" align=right>您的姓名：</td>
				   				    <td >
				   				    	<input type=text name="message.userName" id="userName" size="30" maxlength=20> 
				      					<font color="#FF0000">*</font>
				      				</td> 
		      					</tr> 
				   				<tr bgColor="#ebebeb">
				 					<td width="20%" align=right>您的邮箱：</td>
				 					<td >
				 						<input type=text name="message.userMail" id="userMail" size="30"  maxlength=50> 
									</td>   
								</tr> 
								<tr bgColor="#ebebeb">
				 					<td width="20%" align=right>您的主页：</td>
									<td>
										<input type=text value="http://" name="message.url" id="url" size="30"   maxlength=100>
									</td>
								 </tr>
				  				<tr bgColor="#ebebeb">
				    				<td width="20%" align=right>您的QQ：</td>
				    				<td>
				    					<input type=text value="" name="message.qq" id="url" size="30"  maxlength=50>
				    				</td>
				  				</tr>
				  				<tr bgColor="#ebebeb">
				    				<td width="20%" align=right>留言内容：<br>
				    					<font color=red>（<span id="wordsNumber">200</span>字以内）</font>
				    				</td>
				    				<td>
				    					<textarea name="message.content" id="content" rows="7" cols="66" style="overflow:auto;"></textarea>
				   					</td>
				 				</tr>
				 				<tr bgColor="#ebebeb">
								    <td width="20%" align=right>请选择表情：</td>
								    <td>
										<input type="radio" value="1" name="message.face" id="face" checked><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face1.gif"> 
										<input type="radio" value="2" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face2.gif">
										<input type="radio" value="3" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face3.gif">
										<input type="radio" value="4" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face4.gif">
										<input type="radio" value="5" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face5.gif">
										<input type="radio" value="6" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face6.gif"> 
										<input type="radio" value="7" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face7.gif">
										<input type="radio" value="8" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face8.gif">
										<input type="radio" value="9" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face9.gif">
										<input type="radio" value="10" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face10.gif">
										<br>
										<input type="radio" value="11" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face11.gif"> 
										<input type="radio" value="12" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face12.gif">
										<input type="radio" value="13" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face13.gif">
										<input type="radio" value="14" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face14.gif">
										<input type="radio" value="15" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face15.gif">
										<input type="radio" value="16" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face16.gif"> 
										<input type="radio" value="17" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face17.gif">
										<input type="radio" value="18" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face18.gif">
										<input type="radio" value="19" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face19.gif">
										<input type="radio" value="20" name="message.face" id="face"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/face20.gif">
								    </td>
				  				</tr>
				  				<tr bgColor="#ebebeb">
								    <td width="20%" align=right>请选择头像：</td>
								    <td>
										<input type="radio" value="1" name="message.pic" id="pic" checked><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic1.gif" width=60>
										<input type="radio" value="2" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic2.gif" width=60>
										<input type="radio" value="3" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic3.gif" width=60>
										<input type="radio" value="4" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic4.gif" width=60>
										<input type="radio" value="5" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic5.gif" width=60>
										<br>
										<input type="radio" value="6" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic6.gif" width=60>
										<input type="radio" value="7" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic7.gif" width=60>
										<input type="radio" value="8" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic8.gif" width=60>
										<input type="radio" value="9" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic9.gif" width=60>
										<input type="radio" value="10" name="message.pic" id="pic"><img border=0 src="${pageContext.request.contextPath}/jsps/images/face/pic10.gif" width=60>
								    </td>
				 				</tr>
				 				<tr bgColor="#EFEBEB">
				    				<td colSpan="2" align="center">
				    					<input type="submit" value="提交留言" > 
				     					<input type="reset" value="重新填写">
				     				</td>
				  				</tr>
		  					</table>
	  					</form>
  					</td>
  				</tr>
  			</table>
  		<jsp:include page="buttom.jsp"></jsp:include>
	</body>
</html>