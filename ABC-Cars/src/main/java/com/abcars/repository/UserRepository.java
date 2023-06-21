package com.abcars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abcars.model.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String name);
	
	
}
