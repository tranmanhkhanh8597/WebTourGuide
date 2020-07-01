package com.ktpm.wtg.service.repository;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;

import com.ktpm.wtg.service.entities.Role;
import com.ktpm.wtg.service.entities.User;

public interface RoleRepository extends MongoRepository<Role, String>{
	Role findBy_id(ObjectId _id);
}
