package com.example.pet_adoption_app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pet_adoption_app.models.Applications;
import com.example.pet_adoption_app.repositories.ApplicationRepository;

@Service
public class ApplicationServices {

	@Autowired
	private ApplicationRepository aRepo;
	
	public List<Applications> getAll(){
		return aRepo.findAll();
	}
	
	public Applications createApplication(Applications newApplication) {
		return aRepo.save(newApplication);
	}
}