<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>登录验证</title>
	</head>
	<body>
		<%
			String username = request.getParameter("username");
			String password = request.getParameter("pwd");
			if (username.equals("root") && password.equals("123")) {
				out.write("登录成功!");
			} else {
				out.write("登录失败!");
			}
		%>
	</body>
</html>
