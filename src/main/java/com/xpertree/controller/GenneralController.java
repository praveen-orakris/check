package com.xpertree.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xpertree.response.dto.GenericResponseDTO;
import com.xpertree.response.dto.JebResponseDTO;

@RestController
@RequestMapping("/general")
public class GenneralController {
	
	@RequestMapping(value="/getJebList", method=RequestMethod.POST)
	public GenericResponseDTO<JebResponseDTO> getOranizationList(HttpServletRequest request) {
		GenericResponseDTO<JebResponseDTO> response=new GenericResponseDTO<JebResponseDTO>();
		JebResponseDTO data=new JebResponseDTO();
		
		return response;
	}

}
