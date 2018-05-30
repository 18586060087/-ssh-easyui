package com.mypro.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class BaseDao {
	private static SessionFactory sessionfactory;
	public Session getsession(){
		Configuration configuration=new Configuration();
		configuration.configure("hibernate.cfg.xml");
		if(sessionfactory==null)
			sessionfactory=configuration.buildSessionFactory();		
		//第三步：利用会话工厂创建一个会话对象
		Session session= sessionfactory.openSession();
		return session;
	}
	public void closefactory(){
		sessionfactory.close();
	}
}
