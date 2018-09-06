<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>out</title>
	</head>
	<body>
		<%
			out.write("Hello");
			out.write("Hello", 1, 2);
			out.println(true);
			out.print(Integer.valueOf(20));
		%>
	</body>
</html>