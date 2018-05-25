package com.cdac.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.cdac.beans.Rentbean;


public class Rentdao 
{
	List<Rentbean> list1=null;
	  public void auth(Rentbean a)
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
	  public List<Rentbean> show()
	  {
		  try
		  {
	          Configuration configuration=new Configuration().configure();
			  
			  SessionFactory sessionFactory = configuration.buildSessionFactory();
			  
			  Session session=sessionFactory.openSession(); 
			  Transaction trans=session.beginTransaction();
			  String hql="FROM Rentbean";
		      list1=session.createQuery(hql).list();
		     trans.commit();
		
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  return list1;
	  }
}
