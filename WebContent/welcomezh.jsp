<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>欢迎光临</title>
	</head>
	<body>
		<%		
			request.setCharacterEncoding("UTF-8");	
			String name = request.getParameter("username");
			out.println(name + "，欢迎光临！");
		%>
	</body>
</html>