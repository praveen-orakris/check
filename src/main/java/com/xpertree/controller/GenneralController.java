package com.xpertree.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xpertree.response.dto.GenericResponseDTO;
import com.xpertree.response.dto.JebResponseDTO;
import com.xpertree.response.dto.OrganizationResponseDTO;
import com.xpertree.response.dto.Status;
import com.xpertree.service.JebService;
import com.xpertree.service.OrganizationService;

@RestController
@RequestMapping("/general")
public class GenneralController {
	
	 @Autowired
	JebService jebService;
	
	@RequestMapping(value="/getJebList", method=RequestMethod.POST)
	public GenericResponseDTO<JebResponseDTO> getOranizationList(HttpServletRequest request) {
		GenericResponseDTO<JebResponseDTO> response=new GenericResponseDTO<JebResponseDTO>();
		System.out.println("working");
		Status status = new Status();
		JebResponseDTO data=new JebResponseDTO();
		try {
			data.setList(jebService.getAllJeb());
			status.setCode("00");
			status.setStatus("SUCCESS");
			status.setMessage(data.getList().size() + " records fetched");
			response.setResponse(data);
			response.setStatus(status);
			}
		catch(Exception e) {
			data.setList(null);
			status.setCode("01");
			status.setStatus("FAILURE");
			status.setMessage(e.toString());
			response.setResponse(data);
			response.setStatus(status);
		}
		return response;
	}
	
	@Autowired
	OrganizationService orgService;
	
	@PostMapping("/getOrganizationList")
	public GenericResponseDTO<OrganizationResponseDTO> getOrgList(HttpServletRequest request) {
		GenericResponseDTO<OrganizationResponseDTO> orgres = new GenericResponseDTO<>();
		OrganizationResponseDTO org = new OrganizationResponseDTO();
		org.setList(orgService.getOrganizationList());
		orgres.setResponse(org);
		Status st= new Status();
		st.setCode("00");
		st.setStatus("SUCCESS");
		st.setMessage("good to go");
		orgres.setStatus(st);
		
		return orgres;
		
	
	}
	

}
