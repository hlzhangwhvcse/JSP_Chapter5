<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.text.*"%>
<html>
	<head>
		<title>session信息</title>
	</head>
	<body>
		session是否为新建：<%=session.isNew()%><br>
		session ID:
		<%=session.getId()%><br>
		session创建时间：
		<%--=session.getCreationTime()--%>
		<%=new SimpleDateFormat("hh:mm:ss").format(session.getCreationTime())%>
		<br>
		session最近访问时间：
		<%--=session.getLastAccessedTime()--%> 
		<%=new SimpleDateFormat("hh:mm:ss").format(session.getLastAccessedTime())%>
		<br>
		<%
			session.setMaxInactiveInterval(2);
		%>
		session有效时间：<%=session.getMaxInactiveInterval()%>
	</body>
</html>