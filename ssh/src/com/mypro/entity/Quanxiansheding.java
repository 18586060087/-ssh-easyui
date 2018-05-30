package com.mypro.entity;

/**
 * Quanxiansheding entity. @author MyEclipse Persistence Tools
 */

public class Quanxiansheding implements java.io.Serializable {

	// Fields

	private Integer id;
	private Xitongquanxian xitongquanxian;
	private Jiaose jiaose;
	private String jsname;
	private String qxname;
	private Integer liulan;
	private String url;

	// Constructors

	/** default constructor */
	public Quanxiansheding() {
	}

	/** minimal constructor */
	public Quanxiansheding(Xitongquanxian xitongquanxian, Jiaose jiaose) {
		this.xitongquanxian = xitongquanxian;
		this.jiaose = jiaose;
	}

	/** full constructor */
	public Quanxiansheding(Xitongquanxian xitongquanxian, Jiaose jiaose,
			String jsname, String qxname, Integer liulan, String url) {
		this.xitongquanxian = xitongquanxian;
		this.jiaose = jiaose;
		this.jsname = jsname;
		this.qxname = qxname;
		this.liulan = liulan;
		this.url = url;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Xitongquanxian getXitongquanxian() {
		return this.xitongquanxian;
	}

	public void setXitongquanxian(Xitongquanxian xitongquanxian) {
		this.xitongquanxian = xitongquanxian;
	}

	public Jiaose getJiaose() {
		return this.jiaose;
	}

	public void setJiaose(Jiaose jiaose) {
		this.jiaose = jiaose;
	}

	public String getJsname() {
		return this.jsname;
	}

	public void setJsname(String jsname) {
		this.jsname = jsname;
	}

	public String getQxname() {
		return this.qxname;
	}

	public void setQxname(String qxname) {
		this.qxname = qxname;
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