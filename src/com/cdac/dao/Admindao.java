package com.cdac.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.cdac.beans.Adminbean;
import com.cdac.beans.Securitybean;
public class Admindao 
{
	  List<Adminbean> list1=null;
	  public void save(Adminbean a)
	  {
		  try
		  {
			  Configuration configuration=new Configuration().configure();
		    SessionFactory sessionFactory=configuration.buildSessionFactory();
		    Session session=sessionFactory.openSession();
		    Transaction trans=session.beginTransaction();
		    String security=a.getSecurity();
		    Securitydao securitydao=new Securitydao();
		    List<Securitybean> list=securitydao.aut();
		    Iterator<Securitybean> itr=list.iterator();
		    while(itr.hasNext())
		    {
		    Securitybean t=itr.next();
		    String security1  =	t.getSecurity();
		  	if(security.equals(security1))
		    {
		    session.save(a);
		    trans.commit();
		    }
		    }
		    }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
	  }
	  public List<Adminbean> aut(Adminbean e)
	  {
		  List list=null;
		  try
		  {
			  
			Configuration configuration=new Configuration().configure();
			SessionFactory sessionFactory=configuration.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
           String email=e.getEmail();
           String password=e.getPassword();
        		   
			String q="FROM Adminbean A Where A.email=:email and A.password=:password";
    		
    		Query query=session.createQuery(q);
    		query.setParameter("email", email);
    		query.setParameter("password",password);
    		list=query.list();
		    }
		  catch(Exception q)
		  {
			  q.printStackTrace();
		  }
		return list;
	}
	  public void update(Adminbean a)
	  {
		  int id=a.getId();
		  String name=a.getName();
		  String email=a.getEmail();
		  String mobile=a.getMobile();
		  String gender=a.getGender();
		  try
		  {
			  
			Configuration configuration=new Configuration().configure();
			SessionFactory sessionFactory=configuration.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
		  String hql="Update Adminbean a set a.name=:name, a.mobile=:mobile, a.email=:email, a.gender=:gender WHERE a.id=:id";
		  Query query=session.createQuery(hql);
		  query.setParameter("id", id);
		  query.setParameter("name", name);
		  query.setParameter("mobile",mobile);
		  query.setParameter("gender", gender);
		  query.setParameter("email",email);
		  int i=query.executeUpdate();
		 trans.commit();
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
	  }
	  public List<Adminbean> select()
	  {
		  try
		  {
			Configuration configuration=new Configuration().configure();
			SessionFactory sessionFactory=configuration.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
		  String query="From Adminbean";
	      list1=session.createQuery(query).list();  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  return list1;
	  }
	  public void updatepassword(Adminbean a)
	  {
		  int id=a.getId();
		  String newpassword=a.getNewpassword();
		  try
		  {
			Configuration configuration=new Configuration().configure();
			SessionFactory sessionFactory=configuration.buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			
	      String hql="update Adminbean a set a:password=:newpassword where a.id=:id";
			Query query=session.createQuery(hql);
			query.setParameter("newpassword", newpassword);
			query.setParameter("id",id);
			trans.commit();
		  }
		  
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
}
      public void delete(Adminbean a)
      {
    	  try
      	  {
      	     Configuration configuration=new Configuration().configure();
			  
			  SessionFactory sessionFactory = configuration.buildSessionFactory();
			  
			  Session session=sessionFactory.openSession(); 
			  Transaction trans=session.beginTransaction();
		
                   		  int id=a.getId();
                
                  Query q = session.createQuery("DELETE FROM Adminbean ye WHERE ye.id IN (:id)");
                  q.setParameter("id", id);
                  q.executeUpdate();
                  trans.commit();
      	  }
      	  catch(Exception e)
      	  {
      		   e.printStackTrace();
             }
      	  }

      
}