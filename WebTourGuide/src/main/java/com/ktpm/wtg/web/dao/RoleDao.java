package com.ktpm.wtg.web.dao;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.ktpm.wtg.web.entities.Role;


@Component 
@Transactional
public class RoleDao {
	public static final String PATH = "http://localhost:8081/role";
	
	public List<Role> list()
	{
		String uri= PATH + "/";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Role>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<Role>>(){});
		List<Role> lst = rateResponse.getBody();
		return lst;
	}
	
	public Role getById(String id)
	{
		String uri= PATH + "/getById/" + id;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Role> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<Role>(){});
		Role role = rateResponse.getBody();
		return role;
	}
	
	public void add(Role role)
	{
		String url= PATH + "/add";
		RestTemplate restTemplate = new RestTemplate();
        restTemplate.postForObject(url, role, Role.class);
	}
	
	public void update(Role role)
	{
		String id = role.get_id();
	    final String uri = PATH + "/" + id;     
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.put(uri, role);
	}
	
	public void delete(String _id)
	{
		 	String uri = PATH + "/" + _id;		     
		    RestTemplate restTemplate = new RestTemplate();
		    restTemplate.delete( uri,  _id );
	}
}
