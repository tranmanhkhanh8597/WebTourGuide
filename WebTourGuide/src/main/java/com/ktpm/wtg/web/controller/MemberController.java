package com.ktpm.wtg.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.MemberDao;
import com.ktpm.wtg.web.entities.Member;

@Controller
public class MemberController {
	@Autowired
	MemberDao memDao;
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public ModelAndView Login() {
		ModelAndView modelView=new ModelAndView("login");
		return modelView;
	}

//	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
//	public ModelAndView loginAction(HttpSession session, ModelMap model, String loginEmail, String loginPassword) {
//		try {
//			List<Member> mem = memDao.list();
//			if (mem != null && mem.size() > 0) {
//				for (int i = 0; i < mem.size(); i++) {
//					if (loginEmail.equalsIgnoreCase(mem.get(i).getUsername())
//							&& loginPassword.equalsIgnoreCase(mem.get(i).getPassword())) {
//						ModelAndView modelView = new ModelAndView("/index");
//						modelView.addObject("listMember", mem);
//						return modelView;
//					}
//				}
//			}
//			return new ModelAndView("redirect:/index");
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			return new ModelAndView("redirect:/");
//		}
//	}
	
	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
	public ModelAndView loginAction(@RequestParam String loginEmail, @RequestParam String loginPassword) {
		try {
			System.out.println(loginEmail);
			Member member = memDao.getByUsername(loginEmail);
			if(loginPassword.equalsIgnoreCase(member.getPassword())) {
				ModelAndView modelView = new ModelAndView("/index");
				return modelView;
			}else {
				return null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return new ModelAndView("redirect:/");
		}
	}
}
