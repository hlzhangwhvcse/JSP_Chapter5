<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>forward</title>
	</head>
	<body>
		<%--<jsp:forward page="welcomezh.jsp" >--%>
		<jsp:forward page="welcome.jsp" >
			<jsp:param name="username" value="Tom" />
			<jsp:param name="gender" value="male" />
		</jsp:forward>
	</body>
</html>