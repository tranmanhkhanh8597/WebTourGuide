package com.ktpm.wtg.web.dao;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.ktpm.wtg.web.entities.Tour;

@Component 
@Transactional
public class TourDao {
	public static final String PATH = "http://localhost:8081/tour";
	
	public List<Tour> list()
	{
		String uri= PATH + "/";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Tour>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<Tour>>(){});
		List<Tour> lst = rateResponse.getBody();
		return lst;
	}
	
	public List<Tour> listByLocation(String location)
	{
		String uri= PATH + "/search/custom?location=" + location;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<List<Tour>> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<List<Tour>>(){});
		List<Tour> lstCustom = rateResponse.getBody();
		return lstCustom;
	}
	
	public Tour getById(String id)
	{
		String uri= PATH + "/getById/" + id;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Tour> rateResponse = restTemplate.exchange(uri, HttpMethod.GET, null, 
																			new ParameterizedTypeReference<Tour>(){});
		Tour lstCustom = rateResponse.getBody();
		return lstCustom;
	}
	
	public void add(Tour tour)
	{
		String url= PATH + "/add";
		RestTemplate restTemplate = new RestTemplate();
        restTemplate.postForObject(url, tour, Tour.class);
	}
	
	public void update(Tour tour)
	{
		String id = tour.get_id();
	    final String uri = PATH + "/" + id;     
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.put(uri, tour);
	}
	
	public void delete(String _id)
	{
		 	String uri = PATH + "/" + _id;		     
		    RestTemplate restTemplate = new RestTemplate();
		    restTemplate.delete( uri,  _id );
	}
}
