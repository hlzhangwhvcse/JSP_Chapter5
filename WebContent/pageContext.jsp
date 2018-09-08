<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>pageContext</title>
	</head>
	<body>
		<%
			pageContext.setAttribute("pageVar", "pageValue");
			pageContext.setAttribute("reqVar", "reqValue", 2);
			session.setAttribute("sessVar", "sessValue");
		%>
		page scope中的pageVar值：
		<%=pageContext.getAttribute("pageVar")%>
		<br>
		request scope中的reqVar值：
		<%=request.getAttribute("reqVar")%><br>
		page scope中的sessVar值：
		<%=pageContext.getAttribute("sessVar")%><br>
		session scope中的sessVar值：
		<%=pageContext.getAttribute("sessVar",
							PageContext.SESSION_SCOPE)%><br>
		sessVar的有效范围：
		<%=pageContext.getAttributesScope("sessVar")%><br>
	</body>
</html>