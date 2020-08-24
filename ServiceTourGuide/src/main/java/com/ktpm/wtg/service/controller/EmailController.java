package com.ktpm.wtg.service.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ktpm.wtg.service.repository.EmailRepository;

@RestController  
@RequestMapping("/email")
public class EmailController {
	@Autowired  
	private EmailRepository emailRepository;
	
//	@RequestMapping(value = "/new", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")  
//	public void sendEmail(@PathVariable String id) { 
//		emailRepository.sendEmail();
//	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
	public void sendEmail() {  
		emailRepository.sendEmail();
	} 
}
