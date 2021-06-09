package com.xpertree.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xpertree.response.dto.GenericResponseDTO;
import com.xpertree.response.dto.JebResponseDTO;
import com.xpertree.response.dto.Status;
import com.xpertree.service.JebService;

@RestController
@RequestMapping("/general")
public class GenneralController {
	
	 @Autowired
	JebService jebService;
	
	@RequestMapping(value="/getJebList", method=RequestMethod.POST)
	public GenericResponseDTO<JebResponseDTO> getOranizationList(HttpServletRequest request) {
		GenericResponseDTO<JebResponseDTO> response=new GenericResponseDTO<JebResponseDTO>();
		Status status = new Status();
		JebResponseDTO data=new JebResponseDTO();
		try {
			data.setList(jebService.getAllJeb());
			status.setCode("00");
			status.setStatus("SUCCESS");
			status.setMessage(data.getList().size() + " records fetched");
		}
		catch(Exception e) {
			data.setList(null);
			status.setCode("01");
			status.setStatus("FAILURE");
			status.setMessage(e.toString());
		}
		return response;
	}

}
