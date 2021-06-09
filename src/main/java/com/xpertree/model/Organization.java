package com.xpertree.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="xt_org")
public class Organization {
	@Id
	@Column(name="ORIN")
	private int orin;
	@Column(name="NAME")
	private String name;
	@Column(name="COUNTRY")
	private String country;
	@Column(name="THERAPY_AREA")
	private String therapyArea;
	@Column(name="SUB_THERAPY_AREA")
	private String subTherapyArea;
	
	public Organization() {
		
	}

	public Organization(int orin, String name, String country, String therapyArea, String subTherapyArea) {
		super();
		this.orin = orin;
		this.name = name;
		this.country = country;
		this.therapyArea = therapyArea;
		this.subTherapyArea = subTherapyArea;
	}

	public int getOrin() {
		return orin;
	}

	public void setOrin(int orin) {
		this.orin = orin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getTherapyArea() {
		return therapyArea;
	}

	public void setTherapyArea(String therapyArea) {
		this.therapyArea = therapyArea;
	}

	public String getSubTherapyArea() {
		return subTherapyArea;
	}

	public void setSubTherapyArea(String subTherapyArea) {
		this.subTherapyArea = subTherapyArea;
	}

	@Override
	public String toString() {
		return "Organization [orin=" + orin + ", name=" + name + ", country=" + country + ", therapyArea=" + therapyArea
				+ ", subTherapyArea=" + subTherapyArea + "]";
	}
	

}

