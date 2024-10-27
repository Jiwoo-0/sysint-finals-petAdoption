package com.example.pet_adoption_app.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.pet_adoption_app.models.Applications;

@Repository
public interface ApplicationRepository extends CrudRepository<Applications, Long> {

	List<Applications> findAll();
}
