<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>聊天室登录</title>
	</head>
	<body>
		<b>聊天室登录</b>
		<form name="login" method="Post" action="auth.jsp">
			用户名:
			<input type="text" name="uname">
			<%--判断用户是否输入用户名--%>
			<%
				String error = request.getParameter("error");
				if (error != null) 
				{
			%>
			<font color="red">用户名不能为空！</font>
			<%
				}
			%>
			<br>
			<br>
			<input type="submit" value="登录">
			<input type="reset" value="重置">
		</form>
	</body>
</html>