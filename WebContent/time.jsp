<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<html>
	<head>
		<title>当前时间</title>
	</head>
	<body>
		<%
			response.setHeader("Refresh", "1");
			Date currentTime = new Date();
			SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm:ss");
			out.write("当前时间: " + timeFormat.format(currentTime));
		%>
	</body>
</html>