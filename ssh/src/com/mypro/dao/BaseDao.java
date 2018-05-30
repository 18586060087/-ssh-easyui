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
		//�����������ûỰ��������һ���Ự����
		Session session= sessionfactory.openSession();
		return session;
	}
	public void closefactory(){
		sessionfactory.close();
	}
}
