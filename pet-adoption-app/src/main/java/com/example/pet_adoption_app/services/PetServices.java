package com.example.pet_adoption_app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pet_adoption_app.models.Pets;
import com.example.pet_adoption_app.repositories.PetsRepository;

@Service
public class PetServices {

	@Autowired
	private PetsRepository pRepo;
	
	public List<Pets> getAll(){
		return pRepo.findAll();
	}
	
	public Pets createPet(Pets newPet) {
		return pRepo.save(newPet);
	}
	
	public void deletePet(Long pet_id) {
		pRepo.deleteById(pet_id);
	}
}
