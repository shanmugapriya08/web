package com.system;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public index() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String username=request.getParameter("username");
		int basicpay=Integer.parseInt(request.getParameter("basicpay"));
		int workedhr=Integer.parseInt(request.getParameter("workedhr"));
		
		int total=basicpay*workedhr;
		float d=basicpay*1.5f;
		int x= (int) (total+d);
		out.println(x);
		
		request.setAttribute("1", id);
		request.setAttribute("2", username);
		request.setAttribute("3", basicpay);
		request.setAttribute("4", workedhr);
		request.setAttribute("5", total);
		RequestDispatcher rd=request.getRequestDispatcher("Task.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
