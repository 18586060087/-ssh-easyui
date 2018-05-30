package com.mypro.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mypro.common.ResInfo;
import com.mypro.dao.JiaoSeDao;
import com.mypro.dao.QxDao;
import com.mypro.dao.YongHuDao;
import com.mypro.entity.Fmenu;
import com.mypro.entity.Jiaose;
import com.mypro.entity.Quanxianliebiao;
import com.mypro.entity.Smenu;
import com.mypro.entity.UserJiaose;
import com.mypro.entity.Xitongquanxian;
import com.mypro.entity.Yonghu;
import com.opensymphony.xwork2.Action;

public class QuanXianAction implements Action {	
	
	private String page="1";
	private String rows="5";
	//��ɫ�û��������ԣ���ɫ����ɫ���ƣ��û���������ɫ���ƣ�
	private String jsname;
	//��ɫ������
	
	private String jsbeizhu;
	private int jsquanxian;
	private int id;
	private int hidejsid;
	//�û�������
	private int addyjsid;
	private String ybeizhu;
	private int yid;
	private int yjsid;
	private String yname;
	private String ypwd;
	//ϵͳȨ���б�
	private List<Fmenu> fqxlist;
	private List<Smenu> sqxlist;
	
	
	public List<Fmenu> getFqxlist() {
		return fqxlist;
	}
	public List<Smenu> getSqxlist() {
		return sqxlist;
	}
	public void setAddyjsid(int addyjsid) {
		this.addyjsid = addyjsid;
	}
	public void setYbeizhu(String ybeizhu) {
		this.ybeizhu = ybeizhu;
	}
	public void setYid(int yid) {
		this.yid = yid;
	}
	
	
	public void setYjsid(int yjsid) {
		this.yjsid = yjsid;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public void setYpwd(String ypwd) {
		this.ypwd = ypwd;
	}
	public void setHidejsid(int hidejsid) {
		this.hidejsid = hidejsid;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setJsname(String jsname) {
		this.jsname = jsname;
	}
	public void setJsbeizhu(String jsbeizhu) {
		this.jsbeizhu = jsbeizhu;
	}
	public void setJsquanxian(int jsquanxian) {
		this.jsquanxian = jsquanxian;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getRows() {
		return rows;
	}
	public void setRows(String rows) {
		this.rows = rows;
	}
	private static final long serialVersionUID = 1L;

	private Map<String, Object> result;

	
	@Override
	public String execute() throws Exception {
	
		return null;
	}
	//�����ɫ
	public String jiaoseliebiao(){
		
		JiaoSeDao dao=new JiaoSeDao();
		List<Jiaose> jslist=dao.getalljiaose(); 
		
		List<UserJiaose> userjslist=new ArrayList<UserJiaose>();
		for(Jiaose js:jslist){
			UserJiaose ujs=new UserJiaose();
			ujs.setId(js.getId());
			ujs.setJsname(js.getJsname());
			ujs.setJsbeizhu(js.getJsbeizhu());
			ujs.setJsquanxian(js.getJsquanxian());
			userjslist.add(ujs);
		}
		result=new HashMap<String, Object>();
		result.put("total", "30");
		result.put("rows", userjslist);
		return SUCCESS;
	}
	//��Ӻ��޸Ľ�ɫ
	public String savejiaoseliebiao(){
		Jiaose yzjs=new Jiaose();
		yzjs.setId(hidejsid);
		if(yzjs.getId()==0){
			JiaoSeDao dao=new JiaoSeDao();
			Jiaose js=new Jiaose();
			js.setJsname(jsname);
			js.setJsbeizhu(jsbeizhu);
			js.setJsquanxian(jsquanxian);
			boolean rs=dao.savejiaose(js);
			ResInfo res=new ResInfo();
			result=new HashMap<String, Object>();
			if(rs==true){
				res.res=true;
				res.msg="����ɹ���";
				result.put("res",res.res);
				result.put("msg",res.msg);
			}else{
				res.res=false;
				res.msg="����ʧ�ܣ�";
				result.put("res",res.res);
				result.put("msg",res.msg);	
				
			}
		}else{
			JiaoSeDao dao=new JiaoSeDao();
			Jiaose editjs=new Jiaose();
			editjs.setId(hidejsid);
			editjs.setJsname(jsname);
			editjs.setJsbeizhu(jsbeizhu);
			editjs.setJsquanxian(jsquanxian);
			boolean rs=dao.saveeditjiaose(editjs);
			ResInfo res=new ResInfo();
			result=new HashMap<String, Object>();
			if(rs==true){
				res.res=true;
				res.msg="����ɹ���";
				result.put("res",res.res);
				result.put("msg",res.msg);
			}else{
				res.res=false;
				res.msg="����ʧ�ܣ�";
				result.put("res",res.res);
				result.put("msg",res.msg);	
				
			}
		}
		return SUCCESS;
	}
	//ɾ����ɫ
	public String deletejiaoseliebiao(){
		Jiaose js=new Jiaose();
		js.setId(id);
		JiaoSeDao dao=new JiaoSeDao();
		boolean rs=dao.deletejiaose(js);
		ResInfo res=new ResInfo();
		result=new HashMap<String, Object>();
		if(rs==true){
			res.res=true;
			res.msg="ɾ���ɹ���";
			result.put("res",res.res);
			result.put("msg",res.msg);
		}else{
			res.res=false;
			res.msg="ɾ��ʧ�ܣ�";
			result.put("res",res.res);
			result.put("msg",res.msg);	
			
		}
		return SUCCESS;
	}
	//����û�
	public String yonghuliebiao(){
		YongHuDao dao=new YongHuDao();
		List<Yonghu> yhlist=dao.getallyonghu();
		result=new HashMap<String,Object>();
		result.put("total", "30");
		result.put("rows", yhlist);
		return SUCCESS;
	}
	//�޸ĺ���ӱ����û�
	public String saveyonghuliebiao(){
		Yonghu yzyh=new Yonghu();
		yzyh.setYid(yid);
		if(yzyh.getYid()==0){
			Yonghu yh=new Yonghu();
			Jiaose js=new Jiaose();
			js.setId(addyjsid);
			yh.setJiaose(js);
			yh.setYname(yname);
			yh.setYpwd(ypwd);
			yh.setYbeizhu(ybeizhu); 
			YongHuDao dao=new YongHuDao();
			boolean rs=dao.saveanewyonghu(yh);
			ResInfo res=new ResInfo();
			result=new HashMap<String, Object>();
			if(rs==true){
				res.res=true;
				res.msg="����ɹ���";
				result.put("res",res.res);
				result.put("msg",res.msg);
			}else{
				res.res=false;
				res.msg="����ʧ�ܣ�";
				result.put("res",res.res);
				result.put("msg",res.msg);	
				
			}
		}else{
			Yonghu yh=new Yonghu();
			Jiaose js=new Jiaose();
			js.setId(yjsid);
			yh.setYid(yid);
			yh.setJiaose(js);
			yh.setYname(yname);
			yh.setYpwd(ypwd);
			yh.setYbeizhu(ybeizhu); 
			YongHuDao dao=new YongHuDao();
			boolean rs=dao.edityonghu(yh);
			ResInfo res=new ResInfo();
			result=new HashMap<String, Object>();
			if(rs==true){
				res.res=true;
				res.msg="����ɹ���";
				result.put("res",res.res);
				result.put("msg",res.msg);
			}else{
				res.res=false;
				res.msg="����ʧ�ܣ�";
				result.put("res",res.res);
				result.put("msg",res.msg);	
				
			}
		}
		return SUCCESS;
	}
	//ɾ���û�
	public String deleteyonghuliebiao(){
		Yonghu yh=new Yonghu();
		yh.setYid(yid);
		YongHuDao dao=new YongHuDao();
		boolean rs=dao.deleteyonghu(yh);
		ResInfo res=new ResInfo();
		result=new HashMap<String, Object>();
		if(rs==true){
			res.res=true;
			res.msg="ɾ���ɹ���";
			result.put("res",res.res);
			result.put("msg",res.msg);
		}else{
			res.res=false;
			res.msg="ɾ��ʧ�ܣ�";
			result.put("res",res.res);
			result.put("msg",res.msg);	
			
		}
		return SUCCESS;
	}
	public Map<String, Object> getResult() {
		return result;
	}
	//���ȫ��Ȩ���б�
	public String indexliebiao(){
		QxDao dao=new QxDao();
		List<Quanxianliebiao> qxlist=new ArrayList<Quanxianliebiao>();
		qxlist=dao.getquanxianliebiao();
		fqxlist=new ArrayList<Fmenu>();
		sqxlist=new ArrayList<Smenu>();
		for(Quanxianliebiao qx:qxlist){
			if(qx.getShangjiid()==0){
				Fmenu f=new Fmenu();
				f.setJsqxid(qx.getJsqxid());
				f.setXitongquanxianid(qx.getXiongtongquanxianid());
				f.setJsid(qx.getJsid());
				f.setJsname(qx.getJsname());
				f.setXtmingcheng(qx.getXtmingcheng());
				f.setShangjiid(qx.getShangjiid());
				f.setLiulan(qx.getLiulan());
				f.setUrl(qx.getUrl());
				fqxlist.add(f);
			}else{
				Smenu s=new Smenu();
				s.setJsqxid(qx.getJsqxid());
				s.setXitongquanxianid(qx.getXiongtongquanxianid());
				s.setJsid(qx.getJsid());
				s.setJsname(qx.getJsname());
				s.setXtmingcheng(qx.getXtmingcheng());
				s.setShangjiid(qx.getShangjiid());
				s.setLiulan(qx.getLiulan());
				s.setUrl(qx.getUrl());
				sqxlist.add(s);
			}
		}
		return SUCCESS;
	}

}
