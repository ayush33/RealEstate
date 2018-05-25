package com.cdac.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RetrieveServlet")
public class RetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RetrieveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	    
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id=Integer.parseInt(request.getQueryString());
		System.out.println(id);
		byte[] raw=null;
		response.setContentType("image/jpeg");
		ServletOutputStream out=response.getOutputStream();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/realestate","root","rat");
			String query="select photo from sell where id="+id;
		Statement stmt=con.createStatement();
					ResultSet res=stmt.executeQuery(query);
		res.next();
		raw=res.getBytes("photo");
		out.write(raw);
		out.flush();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
	}
		  }
	 
	

