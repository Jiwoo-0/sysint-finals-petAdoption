package com.example.pet_adoption_app.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.pet_adoption_app.models.Users;

@Repository
public interface UserRepository extends CrudRepository<Users, Long> {

	List<Users> findAll();
	
}
