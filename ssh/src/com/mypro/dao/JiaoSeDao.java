package com.mypro.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mypro.entity.Jiaose;

public class JiaoSeDao extends BaseDao{
	//�����ɫ
	@SuppressWarnings("unchecked")
	public List<Jiaose> getalljiaose(){
		List<Jiaose> jslist=new ArrayList<Jiaose>();
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			String sql =" from Jiaose";
			Query query =session.createQuery(sql);
			jslist=(ArrayList<Jiaose>)query.list();	
			t.commit();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		
		return jslist;
	}
	//������ӽ�ɫ
	public boolean savejiaose(Jiaose js){
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			session.save(js);
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}
	//�����޸Ľ�ɫ
	public boolean saveeditjiaose(Jiaose js){
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			session.update(js);
			t.commit();
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}
	//ɾ����ɫ
	public boolean deletejiaose(Jiaose js){
		Session session=null;
		try{
			session=this.getsession();
			Transaction t= session.beginTransaction();
			session.delete(js);
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
