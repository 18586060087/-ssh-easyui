package com.mypro.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mypro.entity.Yonghu;

public class YongHuDao extends BaseDao{
	//����û�
	@SuppressWarnings("unchecked")
	public List<Yonghu> getallyonghu(){
		List<Yonghu> yhlist=new ArrayList<Yonghu>();
		Session session=null;
		try{
			session=this.getsession();
			@SuppressWarnings("unused")
			Transaction t= session.beginTransaction();
			String sql ="from VYonghuliebiao";
			Query query =session.createQuery(sql);
			yhlist=(ArrayList<Yonghu>)query.list();	
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		
		return yhlist;
	}
	//����û�
	public boolean saveanewyonghu(Yonghu yh){
		Session session=null;
		try{
			session=this.getsession();
			@SuppressWarnings("unused")
			Transaction t= session.beginTransaction();
			session.save(yh);
			return  true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}
	//�޸��û�
	public boolean edityonghu(Yonghu yh){
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			session.update(yh);
			t.commit();
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}
	//ɾ���û�
	public boolean deleteyonghu(Yonghu yh){
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			session.delete(yh);
			t.commit();
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}
}
