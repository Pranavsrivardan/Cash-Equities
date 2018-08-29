package com.crud;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.internal.SessionFactoryImpl;

import com.trade.InProgress;
import com.trade.ShareInfo;

public class MarketCRUD {

	private static Transaction transaction = null;
	private static Session session = null;
	static Configuration config=null; 
	static SessionFactory factory=null; 
	public MarketCRUD() {
		// TODO Auto-generated constructor stub
		config= new Configuration().configure("hibernate.cfg.xml");
		factory = config.buildSessionFactory();
		 session = factory.openSession();
		 transaction = session.beginTransaction();
	}
	
	public List<ShareInfo> getShareInfo() {
		List<ShareInfo> shareinfo = null;
		try {
			 shareinfo= session.createQuery("from ShareInfo").list();	
			 transaction.commit();
			 factory.close();
		}catch(Exception e) {
			//transaction.rollback();
			System.out.println(e);
		}
		return shareinfo;
	}
	
	public ShareInfo getIndiShareInfo(String stock) {
		ShareInfo share = null;
		try {
			share=(ShareInfo) session.createCriteria(ShareInfo.class)
    	    .add( Restrictions.like("securityName", stock));
			transaction.commit();
			 factory.close();
		}catch(Exception e) {
			//transaction.rollback();
			System.out.println(e);
		}
		return share;
	}
	
}
