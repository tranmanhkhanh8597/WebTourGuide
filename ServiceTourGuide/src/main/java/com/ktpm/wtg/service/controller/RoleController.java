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

import com.ktpm.wtg.service.entities.Role;
import com.ktpm.wtg.service.repository.RoleRepository;

@RestController  
@RequestMapping("/role")
public class RoleController {
	@Autowired  
	private RoleRepository roleRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
	public List<Role> getAllRole() {  
	    return roleRepository.findAll();  
	}  
	

	@RequestMapping(value = "/add", method = RequestMethod.POST)  
	public Role createRole(@Valid @RequestBody Role role) { 
		role.set_id(ObjectId.get());
		roleRepository.save(role);  
	    return role;  
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)  
	public void modifyRoleById(@PathVariable("id") ObjectId id, @Valid @RequestBody Role role) {  
		role.set_id(id);  
		roleRepository.save(role);  
	} 
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)  
	public void deleteRole(@PathVariable ObjectId id) {  
		roleRepository.delete(roleRepository.findBy_id(id));  
	}
	
	
	@RequestMapping(value = "/getById/{id}", method = RequestMethod.GET)  
	public Role getRoleById(@PathVariable("id") ObjectId id) {  
	    return roleRepository.findBy_id(id);  
	}
}
