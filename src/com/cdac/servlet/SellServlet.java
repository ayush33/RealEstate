package com.cdac.servlet;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;

import com.cdac.beans.Sellbean;
import com.cdac.dao.Selldao;



@WebServlet("/SellServlet")
@MultipartConfig(maxFileSize=429496729)
public class SellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SellServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
	  if(request.getParameter("add")!=null)
	  {
		  HttpSession session=request.getSession();
		 
		  String for1=request.getParameter("for1");
		  String type=request.getParameter("type");
		  String price=request.getParameter("price");
		  String area=request.getParameter("area");
		  String bhk=request.getParameter("bhk");
		  String furnished=request.getParameter("furnished");
		  String description=request.getParameter("description");
		String id1=(String)session.getAttribute("id");
		int id=Integer.parseInt(id1);
		  String name=(String)session.getAttribute("name");
		  String contact=(String)session.getAttribute("mobile");
		 String city=request.getParameter("city");
		 Part part=request.getPart("photo");
		 
			 InputStream inputStream=part.getInputStream();
		   byte []photo=org.apache.commons.io.IOUtils.toByteArray(inputStream);
		  
		
			 Sellbean a=new Sellbean();
		     a.setFor1(for1);
		     a.setType(type);
		     a.setPrice(price);
		     a.setArea(area);
		     a.setBhk(bhk);
		     a.setFurnished(furnished);
		     a.setDescription(description);
		     a.setName(name);
		     a.setContact(contact);
	     	 a.setCity(city);
		     a.setUid(id);
		  a.setPhoto(photo);
		    Selldao q=new Selldao();
		    q.auth(a);
		    response.sendRedirect("Login.jsp");
	          
	  }
	 if(request.getParameter("find")!=null)
	 {
		 HttpSession session=request.getSession();
		 String type=request.getParameter("type");
		 String city=request.getParameter("city");
		 Sellbean a=new Sellbean();
	     a.setType(type);
	     
	     Selldao q=new Selldao();
	     q.show();
	     System.out.println(city);
	     session.setAttribute("type", type);
	     session.setAttribute("city", city);
	     response.sendRedirect("detail.jsp");
	     //request.getRequestDispatcher("detail.jsp").forward(request, response); 
	   /*  Selldao dao=new Selldao();
	     List<Sellbean> list=dao.show();
	     Iterator<Sellbean> itr=list.iterator();

	     while(itr.hasNext())
	     {
	    	 Sellbean t=itr.next();
	    	String type1=t.getType();
	    	String name=t.getName();
	      String mobile=t.getContact();
	    	String area=t.getArea();
	    	String bhk=t.getBhk();
	    	String furnished=t.getFurnished();
	    	String description=t.getDescription();
	    	String price=t.getPrice();
	    	
	     /* if(type1.equals(type))
	      {
	    	 request.setAttribute("type", type);
	    	 request.setAttribute("name", name);
	    	 request.setAttribute("mobile", mobile);
	    	 request.setAttribute("area", area);
	    	 request.setAttribute("bhk", bhk);
	    	 request.setAttribute("furnished",furnished);
	    	 request.setAttribute("description",description);
	    	 request.setAttribute("price",price);
	    	 request.getRequestDispatcher("detail.jsp").forward(request, response); 
	 	       
	      }
	      
	     }*/
	     
	}
	 if(request.getParameter("delete")!=null)
	 {
		 int id=Integer.parseInt(request.getParameter("id"));
				 Sellbean sellBean=new Sellbean();
		 sellBean.setId(id);
		 Selldao selldao=new Selldao();
		 selldao.delete(sellBean);
	   response.sendRedirect("DeleteAdd.jsp");
	 }
	}

}
