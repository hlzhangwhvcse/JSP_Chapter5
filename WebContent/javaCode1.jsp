<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int i = 90;%>
<%
	if (i % 2 == 0) {
		out.write("i is even!");
	} else {
		out.write("i is odd!");
	}
%>
</body>
</html>