package com.ktpm.wtg.service.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ktpm.wtg.service.entities.Member;
import com.ktpm.wtg.service.entities.User;


public interface MemberRepository extends MongoRepository<Member, String>{
	
	Member findBy_id(String _id);
	Member findByusername(String username);

}
