package com.ktpm.wtg.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value = {"/", "index"}, method = RequestMethod.GET)
	public ModelAndView Home() {
		ModelAndView modelView=new ModelAndView("index");
		return modelView;
	}
	
	@RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
	public ModelAndView HomeAdmin() {
		ModelAndView modelView=new ModelAndView("admin/index");
		return modelView;
	}
	

}
