package com.xpertree.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="xt_jeb")
public class Jeb {
	@Id
	@Column(name="JIN")
	private int jin;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="LINK")
	private String link;
	
	@Column(name="YEAR")
	private int year;
	
	@Column(name="MESH_TERMS")
	private String meshTerms;
	
	@Column(name="COUNTRY")
	private String country;
	
	@Column(name="THERAPY_AREA")
	private String therapyArea;
	
	public Jeb() {
		
	}
	
	@Override
	public String toString() {
		return "Jeb [jin=" + jin + ", name=" + name + ", link=" + link + ", year=" + year + ", meshTerms=" + meshTerms
				+ ", country=" + country + ", therapyArea=" + therapyArea + ", subTherapyArea=" + subTherapyArea + "]";
	}

	public Jeb(int jin, String name, String link, int year, String meshTerms, String country, String therapyArea,
			String subTherapyArea) {
		super();
		this.jin = jin;
		this.name = name;
		this.link = link;
		this.year = year;
		this.meshTerms = meshTerms;
		this.country = country;
		this.therapyArea = therapyArea;
		this.subTherapyArea = subTherapyArea;
	}

	public int getJin() {
		return jin;
	}

	public void setJin(int jin) {
		this.jin = jin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getMeshTerms() {
		return meshTerms;
	}

	public void setMeshTerms(String meshTerms) {
		this.meshTerms = meshTerms;
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

	@Column(name="SUB_THERAPY_AREA")
	private String subTherapyArea;

}
