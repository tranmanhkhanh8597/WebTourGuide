package com.ktpm.wtg.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.MemberDao;
import com.ktpm.wtg.web.entities.Member;

@Controller
public class AdminMemberControllser {
	
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(value = {"/admin_member"}, method = RequestMethod.GET)
	public ModelAndView AdminMember(HttpSession session) {
		if(session.getAttribute("username") != null) {
		List<Member> lsMember=memberDao.list();
		ModelAndView modelView=new ModelAndView("admin/admin_member");
		modelView.addObject("lsMember", lsMember);
		return modelView;
		}else {
			return new ModelAndView("redirect:/");
		}
	}
	
	@RequestMapping(value = {"/admin_member_detail"}, method = RequestMethod.GET)
	public ModelAndView AdminMemberDetail(String id, HttpSession session) {
		if(session.getAttribute("username") != null) {
		Member member= memberDao.getById(id);
		ModelAndView modelView=new ModelAndView("admin/admin_member_detail");
		modelView.addObject("member", member);
		return modelView;
		}else {
			return new ModelAndView("redirect:/");
		}
	}
	
	@RequestMapping(value = {"/admin_create_member"}, method = RequestMethod.GET)
	public ModelAndView AdminMemberCreate(HttpSession session) {
		if(session.getAttribute("username") != null) {
		ModelAndView modelView=new ModelAndView("admin/admin_create_member");
		return modelView;
		}else {
			return new ModelAndView("redirect:/");
		}
	}
	
	@RequestMapping(value = {"/addmember"}, method = RequestMethod.GET)
	public ModelAndView AdminMemberAdd(@RequestParam String fullName, @RequestParam String birthday, @RequestParam String gender,
			@RequestParam String phoneNumber, @RequestParam String username, 
			@RequestParam String password, @RequestParam String email) {
		Member member = new Member();
		member.setFullName(fullName);
		member.setBirthday(birthday);
		member.setGender(gender);
		member.setPhoneNumber(phoneNumber);
		member.setUsername(username);
		member.setPassword(password);
		member.setEmail(email);
		memberDao.add(member);
		return new ModelAndView("redirect:/admin_member");
	}
	
	@RequestMapping(value = {"/updatemember"}, method = RequestMethod.GET)
	public ModelAndView AdminMemberUpdate(@RequestParam String _id, @RequestParam String fullName, @RequestParam String birthday, @RequestParam String gender,
			@RequestParam String phoneNumber, @RequestParam String username, 
			@RequestParam String password, @RequestParam String email) {
		Member member = new Member();
		member.set_id(_id);
		member.setFullName(fullName);
		member.setBirthday(birthday);
		member.setGender(gender);
		member.setPhoneNumber(phoneNumber);
		member.setUsername(username);
		member.setPassword(password);
		member.setEmail(email);
		memberDao.add(member);
		return new ModelAndView("redirect:/admin_member");
	}
	
	@RequestMapping(value = {"/deletemember"}, method = RequestMethod.GET)
	public ModelAndView AdminMemberDelete(@RequestParam String _id) {
		memberDao.delete(_id);
		return new ModelAndView("redirect:/admin_member");
	}

}
