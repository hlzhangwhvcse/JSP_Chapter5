<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>welcome</title></head>  
  <body>
  <%
  	String gender=request.getParameter("gender");
  	if(gender.equals("male")){
  		gender = "Mr.";
  	}
  	else if(gender.equals("female")){
  		gender = "Ms.";
  	}
  	else{
  		gender="";
  	}
   %>
  Welcome! <%=gender%><%=request.getParameter("username")%>  
  </body>
</html>