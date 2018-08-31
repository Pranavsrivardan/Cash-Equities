package com.logic;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;



import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.trade.InProgress;

public class PrioriryList {
	
	public List buyTopFive(String securityName) {
		Configuration config = new Configuration().configure("hibernate.cfg.xml");  
    	SessionFactory factory = config.buildSessionFactory();  
    	Session session = factory.openSession();  
        Transaction transaction = null;
        List ordersList = null;
		
		try {
			
            transaction = session.beginTransaction();
           ordersList = session.createCriteria(InProgress.class)
            	    .add( Restrictions.like("securityName", securityName))
            	    .add( Restrictions.like("direction", "buy"))  
            	    .addOrder( Order.desc("priceOfSecurity") )
            	    .addOrder( Order.asc("timeStamp") )
            	    .addOrder( Order.desc("quantity") )
            	    .setMaxResults(5)
            	    .list();
           
            System.out.println("In buy!!!/n/n");
            System.out.println("Price  Quantity  Name");
            for (Iterator iterator = ordersList.iterator(); iterator.hasNext();) {
            	 InProgress order1 = (InProgress) iterator.next();
                 System.out.println(order1.getPriceOfSecurity()+ "  "
                         + order1.getQuantity() + "  " + order1.getSecurityName() );
            }
            
		}catch(HibernateException e) {
			transaction.rollback();
			 
            e.printStackTrace();

		}
		return ordersList;
	}

	public List sellTopFive(String securityName) {
		
		Configuration config = new Configuration().configure("hibernate.cfg.xml");  
    	SessionFactory factory = config.buildSessionFactory();  
    	Session session = factory.openSession();  
        Transaction transaction = null;
        List ordersList = null;
		
		try {
			
            transaction = session.beginTransaction();
             ordersList = session.createCriteria(InProgress.class)
            		.add( Restrictions.like("securityName", securityName))
            	    .add( Restrictions.like("direction", "sell"))
            	    .addOrder( Order.asc("priceOfSecurity") )
            	    .addOrder( Order.asc("timeStamp") )
            	    .addOrder( Order.desc("quantity") )
            	    .setMaxResults(5)
            	    .list();
            
            
            System.out.println("In sell!!!/n/n");
            System.out.println("Name  Quantity  Price");
            for (Iterator iterator = ordersList.iterator(); iterator.hasNext();) {
           	 InProgress order1 = (InProgress) iterator.next();
                System.out.println(order1.getSecurityName()+ "  "
                        + order1.getQuantity() + "  " + order1.getPriceOfSecurity() );
           }
           
            
		}catch(HibernateException e) {
			transaction.rollback();
			 
            e.printStackTrace();

		}
		return ordersList;
		
	}
	
	
	public List<InProgress> buy(String stock,String userId) {
		Configuration config = new Configuration().configure("hibernate.cfg.xml");  
    	SessionFactory factory = config.buildSessionFactory();  
    	Session session = factory.openSession();  
        Transaction transaction = null;
        List<InProgress> InProgressList=null;
		try {
            transaction = session.beginTransaction();
             InProgressList = session.createCriteria(InProgress.class)
            	    .add( Restrictions.like("securityName", stock))
            	    //.add(Restrictions.ne("userId", userId))
            	    .add( Restrictions.like("direction", "buy"))
            	    .addOrder( Order.desc("priceOfSecurity") )
            	    .addOrder( Order.asc("timeStamp") )
            	    .addOrder( Order.desc("quantity") )
            	    .list();
           
            System.out.println("In buy!!!/n/n");
            System.out.println("Price  Quantity  Name");
            
            System.out.println("size: "+InProgressList.size());
		}catch(HibernateException e) {
			transaction.rollback();
			System.out.println(e);
            e.printStackTrace();

		}
		return InProgressList;
	}

	public List<InProgress> sell(String stock,String userId) {
		
		Configuration config = new Configuration().configure("hibernate.cfg.xml");  
    	SessionFactory factory = config.buildSessionFactory();  
    	Session session = factory.openSession();  
        Transaction transaction = null;
        List<InProgress> InProgressList=null;
		try {
			
            transaction = session.beginTransaction();
             InProgressList = session.createCriteria(InProgress.class)
             	    .add(Restrictions.ne("userId", userId))
            		.add( Restrictions.like("securityName", stock))
            	    .add( Restrictions.like("direction", "sell"))
            	    .addOrder( Order.asc("priceOfSecurity") )
            	    .addOrder( Order.asc("timeStamp") )
            	    .addOrder( Order.desc("quantity") )
            	    .list();
            System.out.println("In sell!!!/n/n");
            System.out.println("Name  Quantity  Price");
		}catch(HibernateException e) {
			transaction.rollback();
			 System.out.println(e);
            e.printStackTrace();

		}
		return InProgressList;
	}
}
