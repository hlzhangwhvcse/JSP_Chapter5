<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>
<html>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String uname = request.getParameter("uname");
			//用户名不为空则添加到用户列表中，并且将用户名存放到session对象中，否则
			//返回到登录界面，并显示错误信息 
			if (uname != null && uname.trim().length() > 0) 
			{
				session.setAttribute("uname", uname);
				Vector users = (Vector) application.getAttribute("users");
				if (users == null) 
				{
					users = new Vector();
				}
				users.add(uname);
				application.setAttribute("users", users);
				response.sendRedirect("chatframe.jsp");
			} 
			else 
			{
		%>
		<jsp:forward page="login.jsp">
			<jsp:param name="error" value="error" />
		</jsp:forward>
		<%
			}
		%>
	</body>
</html>