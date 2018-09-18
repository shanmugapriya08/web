
package newperform;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Task
 */
@WebServlet("/Task")
public class Task extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Task() {
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");  
		 String email=request.getParameter("email");

		 String password=request.getParameter("password");
		 out.println(username);
		 out.println(email);
		 out.println(password);
		 
		 ResultSet rs= null;
		 try {
		 	
		 	String query = "insert into serve (name,email,password) values('"+username+"','"+email+"','"+password+"')";
		 System.out.println(query);
		 	Class.forName("com.mysql.jdbc.Driver");
		 	
		 	java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
		 	
		 	Statement stmt=con.createStatement();  
		 	stmt.execute(query);
		 	//while(rs.next()){
		 	//out.println("DATA : "+rs.getString(2));
		 	//}
		 }
		 catch (ClassNotFoundException e) {
		 	e.printStackTrace();
		 } catch (SQLException e) {
		 	e.printStackTrace();
		 	
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
