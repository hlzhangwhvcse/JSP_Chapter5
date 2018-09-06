<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>

<!--<%@ page import="java.util.Date,java.text.*" %>-->
<%--@page import="java.util.Date,java.text.*" --%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%  
  Date currentTime = new Date();
  SimpleDateFormat dateFormat=new  SimpleDateFormat("yyyy/MM/dd");
  SimpleDateFormat timeFormat=new  SimpleDateFormat("hh:mm:ss");
  out.write("Date: "+dateFormat.format(currentTime)+"<br>");
  out.write("Time: "+timeFormat.format(currentTime));
  %>  
</body>
</html>