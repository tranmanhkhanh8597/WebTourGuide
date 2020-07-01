package com.ktpm.wtg.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.TourDao;
import com.ktpm.wtg.web.entities.Tour;


@Controller
public class AdminTourController {
	@Autowired
	TourDao tourDao;
	
	@RequestMapping(value = {"/admin_tour"}, method = RequestMethod.GET)
	public ModelAndView AdminTour() {
		List<Tour> lsTour=tourDao.list();
		ModelAndView modelView=new ModelAndView("admin/admin_tour");
		modelView.addObject("lsTour", lsTour);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_tour_detail"}, method = RequestMethod.GET)
	public ModelAndView AdminTourDetail(String id) {
		Tour tour= tourDao.getById(id);
		ModelAndView modelView=new ModelAndView("admin/admin_tour_detail");
		modelView.addObject("tour", tour);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_create_tour"}, method = RequestMethod.GET)
	public ModelAndView AdminTourCreate() {
		ModelAndView modelView=new ModelAndView("admin/admin_create_tour");
		return modelView;
	}
	
	@RequestMapping(value = {"/addtour"}, method = RequestMethod.GET)
	public ModelAndView AdminTourAdd(@RequestParam String name, @RequestParam String rating, @RequestParam String price, @RequestParam String time,
			@RequestParam String introduce, @RequestParam String journeys, @RequestParam String transportation, @RequestParam String tour_duration, @RequestParam String includes,
			@RequestParam String retrictions, @RequestParam String image, @RequestParam String status, @RequestParam String location, @RequestParam String guiderName, 
			@RequestParam String title, @RequestParam String limit_person, @RequestParam String details) {
		Tour tour = new Tour();
		tour.setName(name);
		tour.setRating(rating);
		tour.setPrice(price);
		tour.setTime(time);
		tour.setIntroduce(introduce);
		tour.setJourneys(journeys);
		tour.setTransportation(transportation);
		tour.setTour_duration(tour_duration);
		tour.setIncludes(includes);
		tour.setRetrictions(retrictions);
		tour.setImage(image);
		tour.setStatus(status);
		tour.setLocation(location);
		tour.setGuiderName(guiderName);
		tour.setTitle(title);
		tour.setLimit_person(limit_person);
		tour.setDetails(details);
		tourDao.add(tour);
		return new ModelAndView("redirect:/admin_tour");
	}
	
	@RequestMapping(value = {"/updatetour"}, method = RequestMethod.GET)
	public ModelAndView AdminTourUpdate(@RequestParam String _id, @RequestParam String name, @RequestParam String rating, @RequestParam String price, @RequestParam String time,
			@RequestParam String introduce, @RequestParam String journeys, @RequestParam String transportation, @RequestParam String tour_duration, @RequestParam String includes,
			@RequestParam String retrictions, @RequestParam String image, @RequestParam String status, @RequestParam String location, @RequestParam String guiderName, 
			@RequestParam String title, @RequestParam String limit_person, @RequestParam String details) {
		Tour tour = new Tour();
		tour.set_id(_id);
		tour.setName(name);
		tour.setRating(rating);
		tour.setPrice(price);
		tour.setTime(time);
		tour.setIntroduce(introduce);
		tour.setJourneys(journeys);
		tour.setTransportation(transportation);
		tour.setTour_duration(tour_duration);
		tour.setIncludes(includes);
		tour.setRetrictions(retrictions);
		tour.setImage(image);
		tour.setStatus(status);
		tour.setLocation(location);
		tour.setGuiderName(guiderName);
		tour.setTitle(title);
		tour.setLimit_person(limit_person);
		tour.setDetails(details);
		tourDao.update(tour);
		return new ModelAndView("redirect:/admin_tour");
	}
	
	@RequestMapping(value = {"/deletetour"}, method = RequestMethod.GET)
	public ModelAndView AdminTourDelete(@RequestParam String _id) {
		tourDao.delete(_id);
		return new ModelAndView("redirect:/admin_tour");
	}

}
