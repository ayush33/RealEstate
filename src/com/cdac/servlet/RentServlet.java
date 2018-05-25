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
import com.cdac.beans.Rentbean;
import com.cdac.dao.Rentdao;
@WebServlet("/RentServlet")
@MultipartConfig(maxFileSize=16777215)
public class RentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RentServlet() {
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
			  String name=(String)session.getAttribute("name");
			  String contact=(String)session.getAttribute("mobile");
			 String city=request.getParameter("city");
			 Part part=request.getPart("photo");
			
				 InputStream inputStream=part.getInputStream();
			   byte []photo=org.apache.commons.io.IOUtils.toByteArray(inputStream);
			  
			
				 Rentbean a=new Rentbean();
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
			a.setPhoto(photo);
			    Rentdao q=new Rentdao();
			    q.auth(a);
		  }
	
	 if(request.getParameter("find")!=null)
	 {
		 HttpSession session=request.getSession();
		 String type=request.getParameter("type");
		 String city=request.getParameter("city");
		 Rentbean a=new Rentbean();
	     a.setType(type);
	     
	     Rentdao q=new Rentdao();
	     q.show();
	     System.out.println(city);
	     session.setAttribute("type", type);
	     session.setAttribute("city", city);
	     response.sendRedirect("detailr.jsp");

	}

}
}