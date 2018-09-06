<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>网页计数器</title>
	</head>
	<body>
		<%
			session.setMaxInactiveInterval(-1);
			Integer counter = (Integer) session.getAttribute("counter");
			if (counter == null) {
				counter = Integer.valueOf(2);
				session.setAttribute("counter", counter);
				out.write("欢迎首次访问本页面");
			} else {
				counter = (Integer) session.getAttribute("counter");
				out.write("欢迎再次访问本页面！您这是第" + counter.toString() + "次访问本页面");
				counter = Integer.valueOf(counter.intValue() + 1);
				session.setAttribute("counter", counter);
			}
		%>
	</body>
</html>