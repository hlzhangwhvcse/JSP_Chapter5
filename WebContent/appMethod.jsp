<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>appMethod</title>
	</head>
	<body>
		<%=application.getMajorVersion()%><br>
		<%=application.getMinorVersion()%><br>
		<%=application.getRealPath("appMethod.jsp")%><br>
		<%=application.getServerInfo()%><br>
		<%
			application.log("hello");
		%>
	</body>
</html>