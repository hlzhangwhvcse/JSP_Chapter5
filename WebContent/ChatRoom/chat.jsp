<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<body>
		<form method="Post" action="chatlist.jsp" target="chatlist">
			<%=session.getAttribute("uname")%>			
			<input type="text" name="chattext">
			<input type="submit" value="发送">
		</form>
	</body>
</html>