package com.crud;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.trade.InProgress;
import com.trade.ShareDetail;
import com.trade.ShareInfo;

public class ShareDetailDAO {

	private static Transaction transaction = null;
	private static Session session = null;
	static Configuration config=null; 
	
	public ShareDetailDAO(){
		config= new Configuration().configure("hibernate.cfg.xml");
		SessionFactory factory = config.buildSessionFactory();
		 session = factory.openSession();
		 transaction = session.beginTransaction();
	}
	
	public List<ShareDetail> getShareDetail() {
		List<ShareDetail> share = null;
		try {
			share= session.createCriteria(ShareInfo.class)
					.add(Restrictions.like("timeStamp", "2018-07-19 09:00:00"))
					.addOrder(Order.asc("securityCode")).list();
					
    	   
			
		}catch(Exception e) {
			//transaction.rollback();
			System.out.println(e);
		}
		return share;
	}
	
	public void addOrUpdate(ShareDetail sharedetail) {
		Configuration conf=new Configuration();
		conf.configure("hibernate.cfg.xml");
		
		// creating session
		SessionFactory factory=conf.buildSessionFactory();
		Session session=factory.openSession();
		
		// get the current hibernate session
		Transaction t=session.beginTransaction();
		// create a query  ... sort by last name
		
		session.saveOrUpdate(sharedetail);
		
		// return the results
		t.commit();
		factory.close();
	}
	
	
}
