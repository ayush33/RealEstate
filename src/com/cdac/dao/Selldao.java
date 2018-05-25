package com.cdac.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.cdac.beans.Sellbean;



public class Selldao
{
	
	List<Sellbean> list1=null;
	  public void auth(Sellbean a)
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
	  public List<Sellbean> show()
	  {
		  try
		  {
	          Configuration configuration=new Configuration().configure();
			  
			  SessionFactory sessionFactory = configuration.buildSessionFactory();
			  
			  Session session=sessionFactory.openSession(); 
			  Transaction trans=session.beginTransaction();
			  String hql="FROM Sellbean";
		      list1=session.createQuery(hql).list();
		   trans.commit(); 
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  return list1;
	  }
	  public void delete(Sellbean a)
	    {
	    	  try
	      	  {
	      	     Configuration configuration=new Configuration().configure();
				  
				  SessionFactory sessionFactory = configuration.buildSessionFactory();
				  
				  Session session=sessionFactory.openSession(); 
				  Transaction trans=session.beginTransaction();
			
	                   		  int id=a.getId();
	                
	                   		  Sellbean sellbean=new Sellbean();
	                  Query q = session.createQuery("DELETE FROM Sellbean ye WHERE ye.id IN (:id)");
	                  q.setParameter("id", id);
	                  q.executeUpdate();
	                  trans.commit();
	      	  }
	      	  catch(Exception e)
	      	  {
	      		   e.printStackTrace();
	             }
	      	  }
     public void detail(int id)
     {
    	 try
		  {
	          Configuration configuration=new Configuration().configure();
			  
			  SessionFactory sessionFactory = configuration.buildSessionFactory();
			  
			  Session session=sessionFactory.openSession(); 
			  Transaction trans=session.beginTransaction();
			  String hql="FROM Sellbean s where r.id=:id";
			  Query query=session.createQuery(hql); 
			query.setParameter("id",id);
		     
		      trans.commit(); 
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		 
	  } 
     public void delete1(int id1)
	    {
	    	  try
	      	  {
	      	     Configuration configuration=new Configuration().configure();
				  
				  SessionFactory sessionFactory = configuration.buildSessionFactory();
				  
				  Session session=sessionFactory.openSession(); 
				  Transaction trans=session.beginTransaction();
			        
	                   		  Sellbean sellbean=new Sellbean();
	                  Query q = session.createQuery("DELETE FROM Sellbean ye WHERE ye.id IN (:id)");
	                  q.setParameter("id", id1);
	                  q.executeUpdate();
	                  trans.commit();
	      	  }
	      	  catch(Exception e)
	      	  {
	      		   e.printStackTrace();
	             }
	      	  }
}
