package com.mypro.entity;

/**
 * VYonghuliebiao entity. @author MyEclipse Persistence Tools
 */

public class VYonghuliebiao implements java.io.Serializable {

	// Fields

	private Integer yid;
	private String yname;
	private String ypwd;
	private String ybeizhu;
	private Integer yjsid;
	private String jsname;

	// Constructors

	/** default constructor */
	public VYonghuliebiao() {
	}

	/** minimal constructor */
	public VYonghuliebiao(Integer yjsid) {
		this.yjsid = yjsid;
	}

	/** full constructor */
	public VYonghuliebiao(String yname, String ypwd, String ybeizhu,
			Integer yjsid, String jsname) {
		this.yname = yname;
		this.ypwd = ypwd;
		this.ybeizhu = ybeizhu;
		this.yjsid = yjsid;
		this.jsname = jsname;
	}

	// Property accessors

	public Integer getYid() {
		return this.yid;
	}

	public void setYid(Integer yid) {
		this.yid = yid;
	}

	public String getYname() {
		return this.yname;
	}

	public void setYname(String yname) {
		this.yname = yname;
	}

	public String getYpwd() {
		return this.ypwd;
	}

	public void setYpwd(String ypwd) {
		this.ypwd = ypwd;
	}

	public String getYbeizhu() {
		return this.ybeizhu;
	}

	public void setYbeizhu(String ybeizhu) {
		this.ybeizhu = ybeizhu;
	}

	public Integer getYjsid() {
		return this.yjsid;
	}

	public void setYjsid(Integer yjsid) {
		this.yjsid = yjsid;
	}

	public String getJsname() {
		return this.jsname;
	}

	public void setJsname(String jsname) {
		this.jsname = jsname;
	}

}