package com.ktpm.wtg.web.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.UserDao;
import com.ktpm.wtg.web.entities.User;


@Controller
public class AdminUserController {
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = {"/admin_user"}, method = RequestMethod.GET)
	public ModelAndView AdminUser() {
		List<User> lsUser=userDao.list();
		ModelAndView modelView=new ModelAndView("admin/admin_user");
		modelView.addObject("lsUser", lsUser);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_user_detail"}, method = RequestMethod.GET)
	public ModelAndView AdminUserDetail(String id) {
		User user= userDao.getById(id);
		ModelAndView modelView=new ModelAndView("admin/admin_user_detail");
		modelView.addObject("user", user);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_create_user"}, method = RequestMethod.GET)
	public ModelAndView AdminUserCreate() {
		ModelAndView modelView=new ModelAndView("admin/admin_create_user");
		return modelView;
	}
	
	@RequestMapping(value = {"/adduser"}, method = RequestMethod.GET)
	public ModelAndView AdminUserAdd(@RequestParam String fullName, @RequestParam String birthday, @RequestParam String gender,
			@RequestParam String phoneNumber, @RequestParam String role, @RequestParam String username, 
			@RequestParam String password, @RequestParam String email, @RequestParam String status) {
		User user = new User();
		user.setFullName(fullName);
		user.setBirthday(birthday);
		user.setGender(gender);
		user.setPhoneNumber(phoneNumber);
		user.setRole(role);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setStatus(status);
		userDao.add(user);
		return new ModelAndView("redirect:/admin_user");
	}
	
	@RequestMapping(value = {"/updateuser"}, method = RequestMethod.GET)
	public ModelAndView AdminUserUpdate(@RequestParam String _id, @RequestParam String fullName, @RequestParam String birthday, @RequestParam String gender,
			@RequestParam String phoneNumber, @RequestParam String role, @RequestParam String username, 
			@RequestParam String password, @RequestParam String email, @RequestParam String status) {
		User user = new User();
		user.set_id(_id);
		user.setFullName(fullName);
		user.setBirthday(birthday);
		user.setGender(gender);
		user.setPhoneNumber(phoneNumber);
		user.setRole(role);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setStatus(status);
		userDao.add(user);
		return new ModelAndView("redirect:/admin_user");
	}
	
	@RequestMapping(value = {"/deleteuser"}, method = RequestMethod.GET)
	public ModelAndView AdminUserDelete(@RequestParam String _id) {
		userDao.delete(_id);
		return new ModelAndView("redirect:/admin_user");
	}
	
}
