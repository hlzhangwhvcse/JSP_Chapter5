<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>reqParams</title>
	</head>
	<body>
		request对象中的参数：
		<br>
		<%
			String paramName = "";
			//Enumeration paramNames = request.getParameterNames();
			Enumeration <?> paramNames = request.getParameterNames();//使用泛型通配符去除警告信息
			while (paramNames.hasMoreElements()) 
			{
				paramName = (String) paramNames.nextElement();
				out.write(paramName + "=" + request.getParameter(paramName)
						+ "<br>");
			}
		%>
	</body>
</html>