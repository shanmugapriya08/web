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


int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("username");  
int basicpay=Integer.parseInt(request.getParameter("basicpay"));
int workedhr=Integer.parseInt(request.getParameter("workedhr"));

int total=basicpay*workedhr;
float d=basicpay*1.5f;
int x= (int) (total+d);
System.out.println(x);




 System.out.println("this is value "+basicpay);
 ResultSet rs= null;
 try {
 	
 	String query = "insert into package (id,name,basicpay,workedhr,total) values('"+id+"','"+name+"','"+basicpay+"','"+workedhr+"','"+total+"')";
 System.out.println(query);
 	Class.forName("com.mysql.jdbc.Driver");
 	
 	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","");
 	
 	Statement stmt=con.createStatement();  
 	boolean status = stmt.execute(query);
 	System.out.println(status);
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