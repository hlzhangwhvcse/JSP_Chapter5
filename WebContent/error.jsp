<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page isErrorPage="true"%>
<html>
	<head>
		<title>error</title>
	</head>
	<body>
		页面运行时发生异常
		<br>
		<%=exception.toString()%>
	</body>
</html>