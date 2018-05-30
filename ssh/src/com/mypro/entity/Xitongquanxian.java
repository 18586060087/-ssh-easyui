package com.mypro.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Xitongquanxian entity. @author MyEclipse Persistence Tools
 */

public class Xitongquanxian implements java.io.Serializable {

	// Fields

	private Integer xid;
	private String qxname;
	private Integer sjid;
	private Set quanxianshedings = new HashSet(0);

	// Constructors

	/** default constructor */
	public Xitongquanxian() {
	}

	/** full constructor */
	public Xitongquanxian(String qxname, Integer sjid, Set quanxianshedings) {
		this.qxname = qxname;
		this.sjid = sjid;
		this.quanxianshedings = quanxianshedings;
	}

	// Property accessors

	public Integer getXid() {
		return this.xid;
	}

	public void setXid(Integer xid) {
		this.xid = xid;
	}

	public String getQxname() {
		return this.qxname;
	}

	public void setQxname(String qxname) {
		this.qxname = qxname;
	}

	public Integer getSjid() {
		return this.sjid;
	}

	public void setSjid(Integer sjid) {
		this.sjid = sjid;
	}

	public Set getQuanxianshedings() {
		return this.quanxianshedings;
	}

	public void setQuanxianshedings(Set quanxianshedings) {
		this.quanxianshedings = quanxianshedings;
	}

}