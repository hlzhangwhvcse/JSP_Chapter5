<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>appParams</title>
	</head>
	<body>

		<%
			//Enumeration pNames = application.getInitParameterNames();
			Enumeration <?> pNames = application.getInitParameterNames();
			while (pNames.hasMoreElements()) {
				String pName = (String) pNames.nextElement();
				out.print(pName + ": ");
				out.print(application.getInitParameter(pName) + "<br>");
			}
		%>

	</body>
</html>
