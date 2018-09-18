<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id= (Integer) request.getAttribute("1");
String username= (String) request.getAttribute("2");
int basicpay= (Integer) request.getAttribute("3");
int workedhr= (Integer) request.getAttribute("4");
int total= (Integer) request.getAttribute("5");


out.println(id);
out.println("</br>");
out.println(username);
out.println("</br>");
out.println(basicpay);
out.println("</br>");
out.println(workedhr);
out.println("</br>");
out.println(total);

%>
</body>
</html>