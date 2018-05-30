package com.mypro.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mypro.entity.Jiaose;

public class JiaoSeDao extends BaseDao{
	//浏览角色
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
	//保存添加角色
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
	//保存修改角色
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
	//删除角色
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
