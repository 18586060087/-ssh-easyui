package com.mypro.entity;

/**
 * Yonghu entity. @author MyEclipse Persistence Tools
 */

public class Yonghu implements java.io.Serializable {

	// Fields

	private Integer yid;
	private Jiaose jiaose;
	private String yname;
	private String ypwd;
	private String ybeizhu;

	// Constructors

	/** default constructor */
	public Yonghu() {
	}

	/** minimal constructor */
	public Yonghu(Jiaose jiaose) {
		this.jiaose = jiaose;
	}

	/** full constructor */
	public Yonghu(Jiaose jiaose, String yname, String ypwd, String ybeizhu) {
		this.jiaose = jiaose;
		this.yname = yname;
		this.ypwd = ypwd;
		this.ybeizhu = ybeizhu;
	}

	// Property accessors

	public Integer getYid() {
		return this.yid;
	}

	public void setYid(Integer yid) {
		this.yid = yid;
	}

	public Jiaose getJiaose() {
		return this.jiaose;
	}

	public void setJiaose(Jiaose jiaose) {
		this.jiaose = jiaose;
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

}