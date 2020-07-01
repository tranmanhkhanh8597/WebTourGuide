package com.ktpm.wtg.service.repository;


import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;

import com.ktpm.wtg.service.entities.Guider;

public interface  GuiderRepository extends MongoRepository<Guider, String>{
	Guider findBycountry(String country);
	Guider findBy_id(String _id);
}
