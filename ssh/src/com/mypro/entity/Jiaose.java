package com.mypro.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Jiaose entity. @author MyEclipse Persistence Tools
 */

public class Jiaose implements java.io.Serializable {

	// Fields

	private Integer id;
	private String jsname;
	private String jsbeizhu;
	private Integer jsquanxian;
	private Set yonghus = new HashSet(0);
	private Set quanxianshedings = new HashSet(0);

	// Constructors

	/** default constructor */
	public Jiaose() {
	}

	/** full constructor  */
	public Jiaose(String jsname, String jsbeizhu, Integer jsquanxian,
			Set yonghus, Set quanxianshedings) {
		this.jsname = jsname;
		this.jsbeizhu = jsbeizhu;
		this.jsquanxian = jsquanxian;
		this.yonghus = yonghus;
		this.quanxianshedings = quanxianshedings;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getJsname() {
		return this.jsname;
	}

	public void setJsname(String jsname) {
		this.jsname = jsname;
	}

	public String getJsbeizhu() {
		return this.jsbeizhu;
	}

	public void setJsbeizhu(String jsbeizhu) {
		this.jsbeizhu = jsbeizhu;
	}

	public Integer getJsquanxian() {
		return this.jsquanxian;
	}

	public void setJsquanxian(Integer jsquanxian) {
		this.jsquanxian = jsquanxian;
	}

	public Set getYonghus() {
		return this.yonghus;
	}

	public void setYonghus(Set yonghus) {
		this.yonghus = yonghus;
	}

	public Set getQuanxianshedings() {
		return this.quanxianshedings;
	}

	public void setQuanxianshedings(Set quanxianshedings) {
		this.quanxianshedings = quanxianshedings;
	}

}