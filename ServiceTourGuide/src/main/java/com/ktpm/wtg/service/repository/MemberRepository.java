package com.ktpm.wtg.service.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ktpm.wtg.service.entities.Member;


public interface MemberRepository extends MongoRepository<Member, String>{

}
