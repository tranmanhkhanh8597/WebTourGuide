package com.ktpm.wtg.service.repository;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;

import com.ktpm.wtg.service.entities.Tour;



public interface  TourRepository extends MongoRepository<Tour, String>{
	Tour findBylocation(String location);
	Tour findBy_id(String _id);
}
