<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String username=request.getParameter("username");  
 String email=request.getParameter("email");

 String password=request.getParameter("password");

 
 ResultSet rs= null;
 try {
 	
 	String query = "insert into perform (name,emailid,password) values('"+username+"','"+email+"','"+password+"')";
 System.out.println(query);
 	Class.forName("com.mysql.jdbc.Driver");
 	
 	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
 	
 	Statement stmt=con.createStatement();  
 	//rs=stmt.execute(query);
 	//while(rs.next()){
 	//out.println("DATA : "+rs.getString(2));
 	//}
 }
 catch (ClassNotFoundException e) {
 	e.printStackTrace();
 } catch (SQLException e) {
 	e.printStackTrace();
 }
 	

 
 
 %>
</body>
</html>