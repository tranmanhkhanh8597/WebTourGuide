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

import com.ktpm.wtg.service.entities.Tour;
import com.ktpm.wtg.service.repository.TourRepository;
import com.ktpm.wtg.service.repository.TourRepositoryCustomImpl;

@RestController  
@RequestMapping("/tour")
public class TourController {
	@Autowired  
	private TourRepository tourRepository;
	@Autowired
	private TourRepositoryCustomImpl tourCustomRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
	public List<Tour> getAllTour() {  
	    return tourRepository.findAll();  
	}  
	
	@RequestMapping(value = "/{location}", method = RequestMethod.GET)  
	public Tour getTourBylocation(@PathVariable("location") String location) {  
	    return tourRepository.findBylocation(location);  
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)  
	public Tour createTour(@Valid @RequestBody Tour tour) { 
//		tour.set_id(ObjectId.get());
		tourRepository.save(tour);  
	    return tour;  
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)  
	public void modifyTourById(@PathVariable("id") String id, @Valid @RequestBody Tour tour) {  
		tour.set_id(id);  
		tourRepository.save(tour);  
	} 
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)  
	public void deleteTour(@PathVariable String id) {  
		tourRepository.delete(tourRepository.findBy_id(id));  
	}
	
	@GetMapping("/search/custom")
	public List<Tour> searchNotes(@RequestParam("location") String textSearch) {
	    return tourCustomRepository.searchText(textSearch);
	}
	
	@RequestMapping(value = "/getById/{id}", method = RequestMethod.GET)  
	public Tour getTourById(@PathVariable("id") String id) {  
	    return tourRepository.findBy_id(id);  
	}
}
