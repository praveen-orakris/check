package com.xpertree.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xpertree.dao.OrganizationDAO;
import com.xpertree.model.Organization;

@Service
public class OrganizationService {
	
	@Autowired
	OrganizationDAO organizationDAO;
	
	public List<Organization> getOrganizationList()
	{
		
		List<Organization> org = new ArrayList<>();
		organizationDAO.findAll().forEach(org::add);
		return org;
		
	}

}
