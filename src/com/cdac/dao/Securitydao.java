package com.cdac.dao;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.cdac.beans.Securitybean;

public class Securitydao

{
	List<Securitybean> list1=null;
	  public void save(Securitybean a)
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
	  public List<Securitybean> aut()
	  {
		  try
		  {
			Configuration configuration=new Configuration().configure();
			SessionFactory sessionFactory=configuration.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			
			  String hql="FROM Securitybean";
		      list1=session.createQuery(hql).list();
		     
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		return list1;
		  
	  }

	  public void update(Securitybean a)
	  {
		  try
		  {
			Configuration configuration=new Configuration().configure();
			SessionFactory sessionFactory=configuration.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
		     a.getSecurity();
			 session.update(a);  
	  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
}
}