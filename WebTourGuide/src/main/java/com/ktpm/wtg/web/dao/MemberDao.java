package com.ktpm.wtg.web.dao;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.ktpm.wtg.web.entities.Member;


@Component 
@Transactional
public class MemberDao {
	public static final String PATH = "http://localhost:8081/member";
	
	public List<Member> list()
	{
		String uri= PATH + "/";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Member>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<Member>>(){});
		List<Member> lst = rateResponse.getBody();
		return lst;
	}
	
	public Member getById(String id)
	{
		String uri= PATH + "/getById/" + id;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Member> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<Member>(){});
		Member member = rateResponse.getBody();
		return member;
	}
	
	public Member getByUsername(String username)
	{
		String uri= PATH + "/getByUsername/" + username;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Member> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<Member>(){});
		Member member = rateResponse.getBody();
		return member;
	}
	
	public void add(Member member)
	{
		String url= PATH + "/add";
		RestTemplate restTemplate = new RestTemplate();
        restTemplate.postForObject(url, member, Member.class);
	}
	
	public void update(Member member)
	{
		String id = member.get_id();
	    final String uri = PATH + "/" + id;     
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.put(uri, member);
	}
	
	public void delete(String _id)
	{
		 	String uri = PATH + "/" + _id;		     
		    RestTemplate restTemplate = new RestTemplate();
		    restTemplate.delete( uri,  _id );
	}
}
