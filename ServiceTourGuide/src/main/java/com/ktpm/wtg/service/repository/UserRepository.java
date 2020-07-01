package com.ktpm.wtg.service.repository;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;

import com.ktpm.wtg.service.entities.User;

public interface UserRepository extends MongoRepository<User, String>{
	User findBy_id(String _id);
	User findByusername(String username);
}
