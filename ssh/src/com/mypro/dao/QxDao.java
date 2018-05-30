package com.mypro.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.mypro.entity.Quanxianliebiao;


public class QxDao extends BaseDao{
	//»®œﬁ‰Ø¿¿
	@SuppressWarnings("unchecked")
	public List<Quanxianliebiao> getquanxianliebiao(){
		List<Quanxianliebiao> qxlist=new ArrayList<Quanxianliebiao>();
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			String sql =" from Quanxianliebiao where jsid=20";
			Query query =session.createQuery(sql);
			qxlist=(ArrayList<Quanxianliebiao>)query.list();	
			t.commit();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		return qxlist;
	}
}
