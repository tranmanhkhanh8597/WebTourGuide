package com.ktpm.wtg.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.RoleDao;
import com.ktpm.wtg.web.entities.Role;


@Controller
public class AdminRoleController {
	@Autowired
	RoleDao roleDao;
	
	@RequestMapping(value = {"/admin_role"}, method = RequestMethod.GET)
	public ModelAndView AdminRole() {
		List<Role> lsRole=roleDao.list();
		ModelAndView modelView=new ModelAndView("admin/admin_role");
		modelView.addObject("lsRole", lsRole);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_role_detail"}, method = RequestMethod.GET)
	public ModelAndView AdminRoleDetail(String id) {
		Role role= roleDao.getById(id);
		ModelAndView modelView=new ModelAndView("admin/admin_role_detail");
		modelView.addObject("role", role);
		return modelView;
	}
	
	@RequestMapping(value = {"/admin_create_role"}, method = RequestMethod.GET)
	public ModelAndView AdminRoleCreate() {
		ModelAndView modelView=new ModelAndView("admin/admin_create_role");
		return modelView;
	}
	
	@RequestMapping(value = {"/addrole"}, method = RequestMethod.GET)
	public ModelAndView AdminRoleAdd(@RequestParam String role) {
		Role role1 = new Role();
		role1.setRole(role);
		roleDao.add(role1);
		return new ModelAndView("redirect:/admin_role");
	}
	
	@RequestMapping(value = {"/updaterole"}, method = RequestMethod.GET)
	public ModelAndView AdminRoleUpdate(@RequestParam String _id, @RequestParam String role) {
		Role role1 = new Role();
		role1.set_id(_id);
		role1.setRole(role);
		roleDao.add(role1);
		return new ModelAndView("redirect:/admin_role");
	}
	
	@RequestMapping(value = {"/deleterole"}, method = RequestMethod.GET)
	public ModelAndView AdminRoleDelete(@RequestParam String _id) {
		roleDao.delete(_id);
		return new ModelAndView("redirect:/admin_role");
	}
}
