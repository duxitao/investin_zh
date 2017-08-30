package com.investfar.model;

import java.util.Date;

public class Info {
	int id;
	String title;
	String description;
	String country;
	String additional1;
	String additional2;
	String additional3;
	String is_large;
	Date createTime;
	
	
	public String getIs_large() {
		return is_large;
	}
	public void setIs_large(String is_large) {
		this.is_large = is_large;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getAdditional1() {
		return additional1;
	}
	public void setAdditional1(String additional1) {
		this.additional1 = additional1;
	}
	public String getAdditional2() {
		return additional2;
	}
	public void setAdditional2(String additional2) {
		this.additional2 = additional2;
	}
	public String getAdditional3() {
		return additional3;
	}
	public void setAdditional3(String additional3) {
		this.additional3 = additional3;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
	
}
