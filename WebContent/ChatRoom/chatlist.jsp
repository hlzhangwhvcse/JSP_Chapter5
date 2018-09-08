<%@page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<%--让本页面每5秒刷新一次，更新聊天信息 --%>
		<meta http-equiv="Refresh" content="5">
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			//获取用户名
			String uname = (String) session.getAttribute("uname");
			//获取聊天记录
			String chatlist = (String) application.getAttribute("chatlist");
			if (chatlist == null)
			{
				chatlist = new String();
			}
			//获取当前用户的发言
			String chattext = (String) request.getParameter("chattext");
			if (chattext != null) 
			{
				//添加聊天记录
				chatlist = chatlist + "<br>" + uname + ": " + chattext;
				application.setAttribute("chatlist", chatlist);
			}
			out.println(chatlist);
		%>
	</body>
</html>