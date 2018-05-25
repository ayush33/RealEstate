package com.cdac.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cdac.beans.Registerbean;
import com.cdac.dao.Registerdao;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    public RegisterServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		  PrintWriter out=response.getWriter();
		if(request.getParameter("register")!=null)
		{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String mobile=request.getParameter("mobile");
		String message=request.getParameter("message");
		String gender=request.getParameter("gender");
			if(name.equals(null))
		{
			out.println("please write name");
		}
		Registerbean a=new Registerbean();
		a.setName(name);
		a.setEmail(email);
		a.setPassword(password);
		a.setMobile(mobile);
		a.setMessage(message);
		a.setGender(gender);
		 Registerdao dao=new Registerdao();
		 dao.auth(a);
		 response.sendRedirect("Login.jsp");
		}

     if(request.getParameter("login")!=null)
     {
    	 String email=request.getParameter("email");
    	 String password=request.getParameter("password");
    	Registerbean a=new Registerbean();
    	 a.setEmail(email);
    	 a.setPassword(password);
    	 Registerdao dao=new Registerdao();
         dao.aut(a);
    	 List<Registerbean> list=dao.aut(a);
    	 Iterator<Registerbean> itr=list.iterator();
    	 
    	 while(itr.hasNext())
    	 {
    		 Registerbean t=itr.next();
    		 String dname=t.getName();
    			 int id1=t.getId();
    			 String id=String.valueOf(id1);
    			 String dmobile=t.getMobile();
        		 HttpSession session=request.getSession();  
    			session.setAttribute("name",dname);
    			 session.setAttribute("mobile", dmobile);
    			 session.setAttribute("email",email);
    			 session.setAttribute("password", password);
    	         session.setAttribute("id", id);
    	         response.sendRedirect("index1.jsp");
    	         return;
    	 }	    		 
     }
   if(request.getParameter("update")!=null)
   {
	   HttpSession session=request.getSession();  
       String name=request.getParameter("name");
	   String email=request.getParameter("email");   
       String mobile=request.getParameter("mobile");
       String id=(String)session.getAttribute("id");
       System.out.println(id);
       int id1=Integer.parseInt(id);
       System.out.println(id1);
       Registerbean a=new Registerbean();
  	   a.setName(name);
       a.setEmail(email);
       a.setMobile(mobile);
       a.setId(id1);
       Registerdao dao=new Registerdao();
       dao.update(a);
       String someMessage = "Your Profile Updated You have to login !";
       out.print("<html><head>");
       out.print("<script type=\"text/javascript\">alert(" + someMessage + ");</script>");
       out.print("</head><body></body></html>");
       response.sendRedirect("Login.jsp");
       
   }
   if(request.getParameter("changepassword")!=null)
   {
	   HttpSession session=request.getSession();
	   String opassword=request.getParameter("opassword");
	   String npassword=request.getParameter("npassword");
	   String cpassword=request.getParameter("cpassword");
       String password=(String)session.getAttribute("password");
       String id=(String)session.getAttribute("id");
       if(password.equals(opassword))
       {
    	   if(npassword.equals(cpassword))
    	   {
    		   int id1=Integer.parseInt(id);
    		   Registerbean registerbean =new Registerbean();
    		   registerbean.setCpassword(cpassword);
    		   registerbean.setId(id1);
    		   Registerdao registerdao=new Registerdao();
    		   registerdao.changep(registerbean);
    	        response.sendRedirect("Login.jsp");
    	   }
    	   else
    	   {
    		   response.sendRedirect("changeuserpassword.jsp");
    	   }
       }

   }
}
}