package com.cdac.dao;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.cdac.beans.Adminbean;
import com.cdac.beans.Registerbean;
import com.cdac.servlet.RegisterServlet;


public class Registerdao 
{
  List<Registerbean> list1=null;
  public void auth(Registerbean a)
  {
	  try
	  {
		  Configuration configuration=new Configuration().configure();
	    SessionFactory sessionFactory=configuration.buildSessionFactory();
	    Session session=sessionFactory.openSession();
	    Transaction trans=session.beginTransaction();
	    session.save(a);
	    trans.commit();
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
  }
  public List<Registerbean> aut(Registerbean a)
  
  {
	  List list=null;
	  try
	  {
		Configuration configuration=new Configuration().configure();
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		String email=a.getEmail();
		String password=a.getPassword();
		String q="FROM Registerbean A Where A.email=:email and A.password=:password";
		
		Query query=session.createQuery(q);
		query.setParameter("email", email);
		query.setParameter("password",password);
		list=query.list();
		  trans.commit();
		  
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	return list;
	  
  }
  public void update(Registerbean a)
  {
	  try
	  {
		Configuration configuration=new Configuration().configure();
		SessionFactory sessionFactory=configuration.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
	    String name=a.getName();
	    String email=a.getEmail();
	    String mobile=a.getMobile();
	    int id=a.getId();
	    System.out.println(name);
        System.out.println(id);
		Query q=session.createQuery("update Registerbean r set  r.name=:name,r.email=:email ,r.mobile=:mobile where r.id= :id");
	    q.setParameter("name", name);
	    q.setParameter("email",email);
	    q.setParameter("mobile",mobile);
	    q.setParameter("id", id);
	 int i= q.executeUpdate();
	  trans.commit();
	  }
	  
	catch(Exception e)
   {
	   
	   e.printStackTrace();
   }
  }
  public List<Registerbean> sho()
  {
	  try
	  {
          Configuration configuration=new Configuration().configure();
		  
		  SessionFactory sessionFactory = configuration.buildSessionFactory();
		  
		  Session session=sessionFactory.openSession(); 
		  Transaction trans=session.beginTransaction();
		  String hql="FROM Registerbean";
	      list1=session.createQuery(hql).list();
	  trans.commit();      
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return list1;
  }
  public void chnage(String email,String password)
  {
	  try
	  {
          Configuration configuration=new Configuration().configure();
		  
		  SessionFactory sessionFactory = configuration.buildSessionFactory();
		  Session session=sessionFactory.openSession(); 
		  Transaction trans=session.beginTransaction();
	    String hql="update Registerbean r set r.password=:password where r.email=:email";
	    Query query=session.createQuery(hql);
		  query.setParameter("email", email);
		 query.setParameter("password",password);
		  int i=query.executeUpdate();
		  trans.commit();
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
  }
  public void changep(Registerbean r)
  {
	  try
	  {
          
		  Configuration configuration=new Configuration().configure();
		    SessionFactory sessionFactory = configuration.buildSessionFactory();
		  Session session=sessionFactory.openSession(); 
		  Transaction trans=session.beginTransaction();  
		  String password=r.getCpassword();
		  int id=r.getId();
		  String hql="update Registerbean r set r.password=:password where r.id=:id";
		    Query query=session.createQuery(hql);
			  query.setParameter("id", id);
			 query.setParameter("password",password);
			  int i=query.executeUpdate();
			  trans.commit();
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
}
}
