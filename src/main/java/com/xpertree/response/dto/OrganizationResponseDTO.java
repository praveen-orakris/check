package com.xpertree.response.dto;

import java.util.List;

import com.xpertree.model.Organization;

public class OrganizationResponseDTO {
	private List<Organization> list;
	
	public OrganizationResponseDTO() {}

	public List<Organization> getList() {
		return list;
	}

	public void setList(List<Organization> list) {
		this.list = list;
	}
	
}
