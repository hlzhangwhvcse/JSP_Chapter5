<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>config</title>
	</head>
	<body>
		<%
			out.print("servlet name: ");
			out.print(config.getServletName() + "<br>");
			Enumeration <?> pNames = config.getInitParameterNames();
			while (pNames.hasMoreElements()) 
			{
				String pName = (String) pNames.nextElement();
				out.print(pName + ": ");
				out.print(config.getInitParameter(pName) + "<br>");
			}
		%>
	</body>
</html>