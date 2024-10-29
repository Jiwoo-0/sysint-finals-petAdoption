package com.example.pet_adoption_app.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.pet_adoption_app.models.UserDetails;

@Repository
public interface DetailsRepository extends CrudRepository<UserDetails, Long>{

	List<UserDetails> findAll();
}
