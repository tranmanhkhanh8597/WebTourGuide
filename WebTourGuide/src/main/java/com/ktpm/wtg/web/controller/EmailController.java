package com.ktpm.wtg.web.controller;

import java.io.IOException;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ktpm.wtg.web.dao.MemberDao;
import com.ktpm.wtg.web.entities.Member;
import com.sun.xml.messaging.saaj.packaging.mime.MessagingException;


@Controller
public class EmailController {
	@Autowired
    private JavaMailSender javaMailSender;
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value = {"/emailpage"}, method = RequestMethod.GET)
	public ModelAndView pageEmail() {
		ModelAndView modelView=new ModelAndView("send_email");
		return modelView;
	}
	
	@RequestMapping(value = {"/sendemail"}, method = RequestMethod.GET)
	public ModelAndView EmailSend(@RequestParam String content, @RequestParam String firstName, @RequestParam String lastName, @RequestParam String email) {
//		Member member = memberDao.getById(memberId);
//		String finalContent = content + memberId;
//		SimpleMailMessage msg = new SimpleMailMessage();
		MimeMessage msg = javaMailSender.createMimeMessage();

        // true = multipart message
		try {
        MimeMessageHelper helper = new MimeMessageHelper(msg, true);
			helper.setTo("ssmedia.firebase@gmail.com");
	        helper.setSubject("You have new Tourists");
	        helper.setText("<h2>Name</h2>" + firstName + " " + lastName + "<h2>Email</h2>" + email + "<h2>Content</h2>" + content, true);
		} catch (javax.mail.MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        javaMailSender.send(msg);
        return new ModelAndView("redirect:/index");
	}
}
