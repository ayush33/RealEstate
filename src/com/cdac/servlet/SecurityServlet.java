package com.cdac.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cdac.beans.Securitybean;
import com.cdac.dao.Securitydao;
@WebServlet("/SecurityServlet")
public class SecurityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SecurityServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if(request.getParameter("Add")!=null)
		{
			String security=request.getParameter("security");
			Securitybean securitybean=new Securitybean();
			securitybean.setSecurity(security);
			Securitydao securitydao=new Securitydao();
			securitydao.save(securitybean);
		}
			
		if(request.getParameter("update")!=null)
		{
			String security=request.getParameter("security");
			Securitybean securitybean=new Securitybean();
			securitybean.setSecurity(security);
			Securitydao securitydao=new Securitydao();
			securitydao.update(securitybean);
		}
	}

}
