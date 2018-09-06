<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>register</title>
	</head>
	<body>
		<form action="reqParams.jsp">
			name:
			<input type="text" name="username"><br>
			gender:
			<input type="Radio" name="gender" value="male" checked>
			male
			<input type="Radio" name="gender" value="female">
			female
			<br>
			<input type="submit" name="submitbtn" value="submit">
		</form>
	</body>
</html>
