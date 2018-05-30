package com.mypro.actions;

import java.util.HashMap;
import java.util.Map;

import com.mypro.common.ResInfo;

import com.opensymphony.xwork2.Action;


 

public class LoginAction implements Action
{	
	ResInfo res=new ResInfo();
	private Map<String, Object> result;
	private String txtusername;
	private String txtuserpwd;

	public Map<String, Object> getResult()
	{
		return result;
	}

	public void setResult(Map<String, Object> result)
	{
		this.result = result;
	}

	
	

	public void setTxtusername(String txtusername)
	{
		this.txtusername = txtusername;
	}

	

	public void setTxtuserpwd(String txtuserpwd)
	{
		this.txtuserpwd = txtuserpwd;
	}

	@Override
	public String execute() throws Exception
	{
		return SUCCESS;
	}
	
	public String checklogin() throws Exception
	{	
		
		if(this.txtusername.equals("admin") && this.txtuserpwd.equals("888")) {
			res.res=true;
			res.msg="登录成功";
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("res", res.res);
			map.put("msg", res.msg);
			result = map;
		}else{
			res.res=false;
			res.msg="登录失败";
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("res", res.res);
			map.put("msg", res.msg);
			result = map;
		}
		return SUCCESS;
	}
}
