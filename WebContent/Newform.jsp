<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="form">
<form action="process.jsp">
<div>
<label> Username </label>
<input type="text" name="username">
</div>
<div>
<label> Email </label>
<input type="email" name ="email">
</div>
<div>
<label> password </label>
<input type="password" name="password">
</div>
<div>
<input type="submit" value="send">
</div>
</form>
</body>
</html>