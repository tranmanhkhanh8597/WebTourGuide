package com.ktpm.wtg.service.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ktpm.wtg.service.entities.Member;
import com.ktpm.wtg.service.repository.MemberRepository;


@RestController  
@RequestMapping("/member")
public class MemberController {
	@Autowired  
	private MemberRepository memberRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
	public List<Member> getAllUser() {  
	    return memberRepository.findAll();  
	}  
	

	@RequestMapping(value = "/add", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")  
	public Member createMember(@Valid @RequestBody Member member) { 
//		user.set_id(ObjectId.get());
		memberRepository.save(member);  
	    return member;  
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)  
	public void modifyMemberById(@PathVariable("id") String id, @Valid @RequestBody Member member) {  
		member.set_id(id);  
		memberRepository.save(member);  
	} 
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)  
	public void deleteMember(@PathVariable String id) {  
		memberRepository.delete(memberRepository.findBy_id(id));  
	}
	
	
	@RequestMapping(value = "/getById/{id}", method = RequestMethod.GET)  
	public Member getMemberById(@PathVariable("id") String id) {  
	    return memberRepository.findBy_id(id);  
	}
	

	@RequestMapping(value = "/getByUsername/{username}", method = RequestMethod.GET)  
	public Member getMemberByUsername(@PathVariable("username") String username) {  
	    return memberRepository.findByusername(username); 
	}
}
