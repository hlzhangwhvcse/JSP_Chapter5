<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>
<html>
	<meta http-equiv="Refresh" content="5">
	<body>
		在线用户<br>
		<%
			Vector users = (Vector) application.getAttribute("users");
			if (users != null) 
			{
				for (int i = 0; i < users.size(); i++) 
				{
					out.println(users.get(i) + "<br>");
				}
			}
		%>
	</body>
</html>