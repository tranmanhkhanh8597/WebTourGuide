package com.ktpm.wtg.service.controller;

import java.util.List;

import javax.validation.Valid;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ktpm.wtg.service.entities.User;
import com.ktpm.wtg.service.repository.UserRepository;

@RestController  
@RequestMapping("/user")
public class UserController {
	@Autowired  
	private UserRepository userRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
	public List<User> getAllUser() {  
	    return userRepository.findAll();  
	}  
	

	@RequestMapping(value = "/add", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")  
	public User createUser(@Valid @RequestBody User user) { 
//		user.set_id(ObjectId.get());
		userRepository.save(user);  
	    return user;  
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)  
	public void modifyUserById(@PathVariable("id") String id, @Valid @RequestBody User user) {  
		user.set_id(id);  
		userRepository.save(user);  
	} 
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)  
	public void deleteUser(@PathVariable String id) {  
		userRepository.delete(userRepository.findBy_id(id));  
	}
	
	
	@RequestMapping(value = "/getById/{id}", method = RequestMethod.GET)  
	public User getUserById(@PathVariable("id") String id) {  
	    return userRepository.findBy_id(id);  
	}
}
