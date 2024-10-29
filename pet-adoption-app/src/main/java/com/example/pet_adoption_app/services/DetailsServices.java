package com.example.pet_adoption_app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pet_adoption_app.models.UserDetails;
import com.example.pet_adoption_app.repositories.DetailsRepository;

@Service
public class DetailsServices {
	
	@Autowired
	private DetailsRepository dRepo;
	
	public List<UserDetails> getAll(){
		return dRepo.findAll();
	}
	
	public UserDetails getOne(Long id) {
		return dRepo.findById(id).orElse(null);
	}
	
	public UserDetails createDetails(UserDetails newDetails) {
		return dRepo.save(newDetails);
	}
}
