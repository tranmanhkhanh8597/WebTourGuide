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
public class AdminGuiderController {
	@Autowired
	GuiderDao guiderDao;
	
	@RequestMapping(value = {"/admin_guider"}, method = RequestMethod.GET)
	public ModelAndView AdminGuider() {
		List<Guider> lsGuider=guiderDao.list();
		ModelAndView modelView=new ModelAndView("admin/admin_guider");
		modelView.addObject("lsGuider", lsGuider);
		return modelView;
	}
	@RequestMapping(value = {"/admin_guider_detail"}, method = RequestMethod.GET)
	public ModelAndView AdminGuiderDetail(String id) {
		Guider guider= guiderDao.getById(id);
		ModelAndView modelView=new ModelAndView("admin/admin_guider_detail");
		modelView.addObject("guider", guider);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_create_guider"}, method = RequestMethod.GET)
	public ModelAndView AdminGuiderCreate() {
		ModelAndView modelView=new ModelAndView("admin/admin_create_guider");
		return modelView;
	}
	
	@RequestMapping(value = {"/addguider"}, method = RequestMethod.GET)
	public ModelAndView AdminGuiderAdd(@RequestParam String fullName, @RequestParam String rating, @RequestParam String birthday, @RequestParam String gender,
			@RequestParam String firstTour, @RequestParam String phoneNumber, @RequestParam String username, @RequestParam String password, @RequestParam String email,
			@RequestParam String country, @RequestParam String languages, @RequestParam String biography, @RequestParam String credentials, @RequestParam String retrictions, 
			@RequestParam String review, @RequestParam String image) {
		Guider guider = new Guider();
		guider.setFullName(fullName);
		guider.setRating(rating);
		guider.setBirthday(birthday);
		guider.setGender(gender);
		guider.setFirstTour(firstTour);
		guider.setPhoneNumber(phoneNumber);
		guider.setUsername(username);
		guider.setPassword(password);
		guider.setEmail(email);
		guider.setCountry(country);
		guider.setLanguages(languages);
		guider.setBiography(biography);
		guider.setCredentials(credentials);
		guider.setRetrictions(retrictions);
		guider.setReview(review);
		guider.setImage(image);
		guiderDao.add(guider);
		return new ModelAndView("redirect:/admin_guider");
	}
	
	@RequestMapping(value = {"/updateguider"}, method = RequestMethod.GET)
	public ModelAndView AdminGuiderUpdate(@RequestParam String _id, @RequestParam String fullName, @RequestParam String rating, @RequestParam String birthday, @RequestParam String gender,
			@RequestParam String firstTour, @RequestParam String phoneNumber, @RequestParam String username, @RequestParam String password, @RequestParam String email,
			@RequestParam String country, @RequestParam String languages, @RequestParam String biography, @RequestParam String credentials, @RequestParam String retrictions, 
			@RequestParam String review, @RequestParam String image) {
		Guider guider = new Guider();
		guider.set_id(_id);
		guider.setFullName(fullName);
		guider.setRating(rating);
		guider.setBirthday(birthday);
		guider.setGender(gender);
		guider.setFirstTour(firstTour);
		guider.setPhoneNumber(phoneNumber);
		guider.setUsername(username);
		guider.setPassword(password);
		guider.setEmail(email);
		guider.setCountry(country);
		guider.setLanguages(languages);
		guider.setBiography(biography);
		guider.setCredentials(credentials);
		guider.setRetrictions(retrictions);
		guider.setReview(review);
		guider.setImage(image);
		guiderDao.update(guider);
		return new ModelAndView("redirect:/admin_guider");
	}
	
	@RequestMapping(value = {"/deleteguider"}, method = RequestMethod.GET)
	public ModelAndView AdminGuiderDelete(@RequestParam String _id) {
		guiderDao.delete(_id);
		return new ModelAndView("redirect:/admin_guider");
	}
}
