package com.ktpm.wtg.web.dao;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.ktpm.wtg.web.entities.Guider;

@Component 
@Transactional
public class GuiderDao {
	public static final String PATH = "http://localhost:8081/guider";
	
	public List<Guider> list()
	{
		String uri= PATH + "/";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Guider>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<Guider>>(){});
		List<Guider> lst = rateResponse.getBody();
		return lst;
	}
	
	public List<Guider> listByCountry(String country)
	{
		String uri= PATH + "/search/custom?country=" + country;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Guider>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<Guider>>(){});
		List<Guider> lstCustom = rateResponse.getBody();
		return lstCustom;
	}
	
	public Guider getById(String id)
	{
		String uri= PATH + "/getById/" + id;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Guider> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<Guider>(){});
		Guider lstCustom = rateResponse.getBody();
		return lstCustom;
	}

	public void add(Guider guider)
	{
		String url= PATH + "/add";
		RestTemplate restTemplate = new RestTemplate();
        restTemplate.postForObject(url, guider, Guider.class);
	}
	
	public void update(Guider guider)
	{
		String id = guider.get_id();
	    final String uri = PATH + "/" + id;     
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.put(uri, guider);
	}
	
	public void delete(String _id)
	{
		String uri = PATH + "/" + _id;		     
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.delete( uri,  _id );
	}
}
