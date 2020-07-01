package com.ktpm.wtg.service.controller;

import java.util.List;

import javax.validation.Valid;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ktpm.wtg.service.entities.Guider;
import com.ktpm.wtg.service.repository.GuiderRepository;
import com.ktpm.wtg.service.repository.GuiderRepositoryCustomImpl;

@RestController  
@RequestMapping("/guider")
public class GuiderController {
	@Autowired  
	private GuiderRepository guiderRepository;
	@Autowired
	private GuiderRepositoryCustomImpl guiderCustomRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
	public List<Guider> getAllGuide() {  
	    return guiderRepository.findAll();  
	}  
	
	@RequestMapping(value = "/{country}", method = RequestMethod.GET)  
	public Guider getGuiderByCountry(@PathVariable("country") String country) {  
	    return guiderRepository.findBycountry(country);  
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")  
	public Guider createGuider(@Valid @RequestBody Guider guider) { 
//		guider.set_id(ObjectId.get());
		guiderRepository.save(guider);  
	    return guider;  
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)  
	public void modifyGuiderById(@PathVariable("id") String id, @Valid @RequestBody Guider guider) {  
		guider.set_id(id);  
		guiderRepository.save(guider);  
	} 
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)  
	public void deleteGuider(@PathVariable String id) {  
		guiderRepository.delete(guiderRepository.findBy_id(id));  
	}
	
	@GetMapping("/search/custom")
	public List<Guider> searchNotes(@RequestParam("country") String textSearch) {
	    return guiderCustomRepository.searchText(textSearch);
	}
	
	@RequestMapping(value = "/getById/{id}", method = RequestMethod.GET)  
	public Guider getGuiderById(@PathVariable("id") String id) {  
	    return guiderRepository.findBy_id(id);  
	}
}
