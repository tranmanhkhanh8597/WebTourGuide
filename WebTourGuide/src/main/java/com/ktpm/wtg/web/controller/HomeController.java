package com.ktpm.wtg.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.UserDao;
import com.ktpm.wtg.web.entities.User;

@Controller
public class HomeController {
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = {"/", "index"}, method = RequestMethod.GET)
	public ModelAndView Home() {
		ModelAndView modelView=new ModelAndView("index");
		return modelView;
	}
	
	@RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
	public ModelAndView HomeAdmin(HttpSession session) {
		if(session.getAttribute("username") != null) {
			ModelAndView modelView=new ModelAndView("admin/index");
			return modelView;
		}else {
			return new ModelAndView("redirect:/");
		}
	}
	
	@RequestMapping(value = {"/adminLogin"}, method = RequestMethod.GET)
	public ModelAndView AdminLogin() {
		ModelAndView modelView=new ModelAndView("loginAdmin");
		return modelView;
	}
	
	@RequestMapping(value = "/adminLoginAction", method = RequestMethod.GET)
	public ModelAndView loginAction(@RequestParam String loginEmail, @RequestParam String loginPassword, HttpSession session) {
		try {
			System.out.println(loginEmail);
			User user = userDao.getByUsername(loginEmail);
			if(user != null) {
				session.setAttribute("username", user.getUsername());
			}
			if(loginPassword.equalsIgnoreCase(user.getPassword())) {
				ModelAndView modelView = new ModelAndView("admin/index");
				return modelView;
			}else {
				ModelAndView modelView = new ModelAndView("index");
				return modelView;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return new ModelAndView("redirect:/");
		}
	}
	

}
