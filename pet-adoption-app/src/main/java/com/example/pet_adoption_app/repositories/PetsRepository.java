package com.example.pet_adoption_app.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.pet_adoption_app.models.Pets;

@Repository
public interface PetsRepository extends CrudRepository<Pets, Long>{

	List<Pets> findAll();
}
