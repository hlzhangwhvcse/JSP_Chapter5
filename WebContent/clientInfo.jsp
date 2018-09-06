<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>HTTP 协议信息</title>
	</head>
	<body>
		一 用request.getHeaderNames()方法获取HTTP头信息的名字，用request.getHeader()方法获取HTTP头信息的值：
		<br>
		<%
			String headName = "";
			//Enumeration headNames = request.getHeaderNames();
			Enumeration <?> headNames = request.getHeaderNames();//使用泛型通配符去除警告信息
			while (headNames.hasMoreElements()) 
			{
				headName = (String) headNames.nextElement();
				out.write(headName + "=" + request.getHeader(headName)	+ "<br>");
			}
		%>
		二 用request.getHeaders()方法获取HTTP所有头信息的值：
		<br>
		<%
			String header = "";
			Enumeration <?> headers = request.getHeaders("Accept-Encoding");
       		while(headers.hasMoreElements())
       		{
       			header = (String ) headers.nextElement();
            	out.write(header + "=" + request.getHeader(header)	+ "<br>");
        	}
	
		%>
		三  用request.getHeader()方法获取浏览器信息：
		<br>
		<%
			out.write("浏览器：" + request.getHeader("user-agent") + "<br>");
		%>
		四  用request的其他方法获取信息：
		<br>
		<%
			out.write("提交方法：" + request.getMethod() + "<br>");
			out.write("请求路径：" + request.getRequestURL() + "<br>");
			out.write("服务器名称：" + request.getServerName() + "<br>");
			out.write("服务器端口号：" + request.getServerPort() + "<br>");
			out.write("客户端IP地址：" + request.getRemoteAddr() + "<br>");
			out.write("客户端主机名称：" + request.getRemoteHost() + "<br>");
			out.write("协议名称：" + request.getProtocol() + "<br>");
		%>
		五  用System.getProperty()方法获取操作系统信息：
		<br>
		<%
			out.write("os.name：" + System.getProperty("os.name") + "<br>");
			out.write("os.version：" + System.getProperty("os.version") + "<br>");
			out.write("os.arch：" + System.getProperty("os.arch") + "<br>");	
		%>
	</body>
</html>