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
public class TourController {
	@Autowired
	TourDao tourDao;
	
	
	@RequestMapping(value="/listTourByLocation", method=RequestMethod.GET)
	public ModelAndView getAllTourByLocation(@RequestParam("location-start") String location)
	{	
		List<Tour> lsTourCustom=tourDao.listByLocation(location);
		ModelAndView modelView=new ModelAndView("find_tour");
		modelView.addObject("lsTourCustom", lsTourCustom);
		return modelView;
	}
	
	@RequestMapping(value = {"/search_tour"}, method = RequestMethod.GET)
	public ModelAndView SearchTour() {
		ModelAndView modelView=new ModelAndView("search_tour");
		return modelView;
	}
	
	@RequestMapping(value = {"/find_tour"}, method = RequestMethod.GET)
	public ModelAndView FindTour() {
		ModelAndView modelView=new ModelAndView("find_tour");
		return modelView;
	}
	
	@RequestMapping(value = {"/find_tour_detail"}, method = RequestMethod.GET)
	public ModelAndView FindTourDetail(String id) {
		Tour lsTourId=tourDao.getById(id);
		ModelAndView modelView=new ModelAndView("find_tour_detail");
		modelView.addObject("lsTourId", lsTourId);
		return modelView;
	}
}
