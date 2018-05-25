package com.cdac.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cdac.beans.Adminbean;
import com.cdac.dao.Admindao;
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
           public AdminServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		if(request.getParameter("register")!=null)
		{
			
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String mobile=request.getParameter("mobile");
			String gender=request.getParameter("gender");
			String security=request.getParameter("security");
			Adminbean adminbean=new Adminbean();
			adminbean.setName(name);
			adminbean.setEmail(email);
			adminbean.setPassword(password);
			adminbean.setPassword(password);
			adminbean.setMobile(mobile);
			adminbean.setGender(gender);
			adminbean.setSecurity(security);
			Admindao admindao=new Admindao();
			admindao.save(adminbean);
					
			
		}
		  if(request.getParameter("login")!=null)
		     {
		    	 String email=request.getParameter("email");
		    	 String password=request.getParameter("password");
		    	 
		    	 Adminbean a=new Adminbean();
		    	 a.setEmail(email);
		    	 a.setPassword(password);
		    	 
		    	Admindao admindao=new Admindao();
		    	 admindao.aut(a);
		    	 List<Adminbean> list=admindao.aut(a);
		    	 Iterator<Adminbean> itr=list.iterator();
		    	 while(itr.hasNext())
		    	 {
		    		 Adminbean t=itr.next();
		    		 String dname=t.getName();
		    		 int id=t.getId();
		    		String mobile=t.getMobile();
		    		String gender=t.getGender();
		    		String email1=t.getEmail();
		    		String password1=t.getPassword();
		    	 HttpSession session=request.getSession();  
		    			String id1=String.valueOf(id);
		    			session.setAttribute("id",id1);
		    			session.setAttribute("name",dname);
		    			session.setAttribute("mobile",mobile);
		    			session.setAttribute("email",email1);
		    			session.setAttribute("gender",gender);
		    			session.setAttribute("password", password1);
		    			response.sendRedirect("Admin2.jsp");
		    		    return;
		    		    		 
		          }
		  }
		  if(request.getParameter("edit")!=null)
		  {
			  HttpSession session=request.getSession();
			  String id=(String)session.getAttribute("id");
			  int id1=Integer.parseInt(id);
			  
			  String name=request.getParameter("name");
			  String email=request.getParameter("email");
			  String mobile=request.getParameter("mobile");
			  String gender=request.getParameter("gender");
		      Adminbean adminbean=new Adminbean();
		      adminbean.setName(name);
		      adminbean.setEmail(email);
		      adminbean.setMobile(mobile);
		      adminbean.setGender(gender);
		      adminbean.setId(id1);
		      
		      Admindao admindao=new Admindao();
		      admindao.update(adminbean);
		  }
		  if(request.getParameter("changepassword")!=null)
		  {
			  HttpSession session=request.getSession();
			  String id=(String)session.getAttribute("id");
			  int id1=Integer.parseInt(id);
			  String password=(String)session.getAttribute("password");
		       String oldpassword=request.getParameter("oldpassword");
		       String newpassword=request.getParameter("newpassword");
		       String confirmpassword=request.getParameter("confirmpassword");
		       if(oldpassword.equals(password))
		       {
		    	if(newpassword.equals(confirmpassword))   
		    	{
		       Adminbean adminbean=new Adminbean();
		       adminbean.setNewpassword(newpassword);
		       adminbean.setId(id1);
		       Admindao admindao=new Admindao();
		       admindao.updatepassword(adminbean);
		       response.sendRedirect("changeuserpassword.jsp");
		       }
		       }
		       else
		       {
		    	response.sendRedirect("");   
		       }
		  }
	  if(request.getParameter("delete")!=null)
	  {
		  HttpSession session=request.getSession();
		  String id=(String)session.getAttribute("id");
		  int id1=Integer.parseInt(id);
		  Adminbean adminbean=new Adminbean();
		  adminbean.setId(id1);
		  Admindao admindao=new Admindao();
		  admindao.delete(adminbean);
	  }
	}
	

}
