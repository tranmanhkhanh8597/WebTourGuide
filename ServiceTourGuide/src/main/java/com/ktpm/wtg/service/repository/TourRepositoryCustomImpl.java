package com.ktpm.wtg.service.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.TextCriteria;
import org.springframework.data.mongodb.core.query.TextQuery;
import org.springframework.stereotype.Repository;

import com.ktpm.wtg.service.entities.Tour;

@Repository
public class TourRepositoryCustomImpl implements TourRepositoryCustom{
	@Autowired
    MongoTemplate mongoTemplate;
	
	@Override
	public List<Tour> searchText(String textSearch){
		TextCriteria criteria = TextCriteria.forDefaultLanguage()
				  .matchingAny(textSearch);
		Query query = TextQuery.queryText(criteria);
		return mongoTemplate.find(query, Tour.class);
	}
}
