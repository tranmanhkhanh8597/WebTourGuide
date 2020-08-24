package com.ktpm.wtg.web.dao;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.ktpm.wtg.web.entities.User;

@Component 
@Transactional
public class UserDao {
	public static final String PATH = "http://localhost:8081/user";
	
	public List<User> list()
	{
		String uri= PATH + "/";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<User>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<User>>(){});
		List<User> lst = rateResponse.getBody();
		return lst;
	}
	
	public User getById(String id)
	{
		String uri= PATH + "/getById/" + id;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<User> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<User>(){});
		User user = rateResponse.getBody();
		return user;
	}
	
	public User getByUsername(String username)
	{
		String uri= PATH + "/getByUsername/" + username;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<User> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<User>(){});
		User user = rateResponse.getBody();
		return user;
	}
	
	public void add(User user)
	{
		String url= PATH + "/add";
		RestTemplate restTemplate = new RestTemplate();
        restTemplate.postForObject(url, user, User.class);
	}
	
	public void update(User user)
	{
		String id = user.get_id();
	    final String uri = PATH + "/" + id;     
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.put(uri, user);
	}
	
	public void delete(String _id)
	{
		 	String uri = PATH + "/" + _id;		     
		    RestTemplate restTemplate = new RestTemplate();
		    restTemplate.delete( uri,  _id );
	}
}
