package com.ktpm.wtg.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.GuiderDao;
import com.ktpm.wtg.web.entities.Guider;

@Controller
public class GuiderController {
	@Autowired
	GuiderDao guiderDao;
	
	@RequestMapping(value="/listGuider", method=RequestMethod.GET)
	public ModelAndView getAllGuider()
	{
		List<Guider> lsGuider=guiderDao.list();
		ModelAndView modelView=new ModelAndView("listGuider");
		modelView.addObject("lsGuider", lsGuider);
		return modelView;
	}
	
	@RequestMapping(value="/listGuiderByCountry", method=RequestMethod.GET)
	public ModelAndView getAllGuiderByCountry(@RequestParam("location-start") String country)
	{	
		List<Guider> lsGuiderCustom=guiderDao.listByCountry(country);
		ModelAndView modelView=new ModelAndView("find_guide");
		modelView.addObject("lsGuiderCustom", lsGuiderCustom);
		return modelView;
	}
	
	@RequestMapping(value = {"/search_guide"}, method = RequestMethod.GET)
	public ModelAndView SearchGuider() {
		ModelAndView modelView=new ModelAndView("search_guide");
		return modelView;
	}
	
	@RequestMapping(value = {"/find_guide"}, method = RequestMethod.GET)
	public ModelAndView FindGuider() {
		ModelAndView modelView=new ModelAndView("find_guide");
		return modelView;
	}
	
	@RequestMapping(value = {"/find_guide_detail"}, method = RequestMethod.GET)
	public ModelAndView FindGuiderDetail(String id) {
		Guider lsGuiderId=guiderDao.getById(id);
		ModelAndView modelView=new ModelAndView("find_guide_detail");
		modelView.addObject("lsGuiderId", lsGuiderId);
		return modelView;
	}
}
