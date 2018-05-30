package com.mypro.entity;

/**
 * Quanxianliebiao entity. @author MyEclipse Persistence Tools
 */

public class Quanxianliebiao implements java.io.Serializable {

	// Fields

	private Integer jsqxid;
	private Integer xiongtongquanxianid;
	private Integer jsid;
	private String jsname;
	private String xtmingcheng;
	private Integer shangjiid;
	private Integer liulan;
	private String url;

	// Constructors

	/** default constructor */
	public Quanxianliebiao() {
	}

	/** minimal constructor */
	public Quanxianliebiao(Integer xiongtongquanxianid, Integer jsid) {
		this.xiongtongquanxianid = xiongtongquanxianid;
		this.jsid = jsid;
	}

	/** full constructor */
	public Quanxianliebiao(Integer xiongtongquanxianid, Integer jsid,
			String jsname, String xtmingcheng, Integer shangjiid,
			Integer liulan, String url) {
		this.xiongtongquanxianid = xiongtongquanxianid;
		this.jsid = jsid;
		this.jsname = jsname;
		this.xtmingcheng = xtmingcheng;
		this.shangjiid = shangjiid;
		this.liulan = liulan;
		this.url = url;
	}

	// Property accessors

	public Integer getJsqxid() {
		return this.jsqxid;
	}

	public void setJsqxid(Integer jsqxid) {
		this.jsqxid = jsqxid;
	}

	public Integer getXiongtongquanxianid() {
		return this.xiongtongquanxianid;
	}

	public void setXiongtongquanxianid(Integer xiongtongquanxianid) {
		this.xiongtongquanxianid = xiongtongquanxianid;
	}

	public Integer getJsid() {
		return this.jsid;
	}

	public void setJsid(Integer jsid) {
		this.jsid = jsid;
	}

	public String getJsname() {
		return this.jsname;
	}

	public void setJsname(String jsname) {
		this.jsname = jsname;
	}

	public String getXtmingcheng() {
		return this.xtmingcheng;
	}

	public void setXtmingcheng(String xtmingcheng) {
		this.xtmingcheng = xtmingcheng;
	}

	public Integer getShangjiid() {
		return this.shangjiid;
	}

	public void setShangjiid(Integer shangjiid) {
		this.shangjiid = shangjiid;
	}

	public Integer getLiulan() {
		return this.liulan;
	}

	public void setLiulan(Integer liulan) {
		this.liulan = liulan;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}