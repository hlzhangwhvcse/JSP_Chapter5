<%@page contentType="text/html;charset=UTF-8"%>
<%
	//从session对象中获取用户名，如果为空则跳转到登录页面，防止非法用户直接访问此页面
	String uname = (String) session.getAttribute("uname");
	if (uname == null) 
	{
		response.sendRedirect("login.jsp");
	} 
	else 
	{
%>
<html>
	<head>
		<title>聊天室</title>
	</head>
	<frameset rows="400,100" frameborder="yes" border="1" framespacing="1">
		<frameset cols="600,160" frameborder="yes" border="1">
			<frame name="chatlist" src="chatlist.jsp">
			<frame name="user" src="user.jsp" noresize>
		</frameset>
		<frame name="chat" src="chat.jsp" noresize>
	</frameset>
</html>
<%
	}
%>