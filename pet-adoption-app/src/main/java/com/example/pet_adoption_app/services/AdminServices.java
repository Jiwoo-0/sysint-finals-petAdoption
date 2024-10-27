package com.example.pet_adoption_app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pet_adoption_app.models.Admin;
import com.example.pet_adoption_app.repositories.AdminRepository;

@Service
public class AdminServices {

	@Autowired
	private AdminRepository aRepo;
	
	public List<Admin> getAll(){
		return aRepo.findAll();
	}
	
	public Admin createAdmin(Admin newAdmin) {
		return aRepo.save(newAdmin);
	}
	
	public Admin updateAdmin(Admin updatedAdmin) {
		return aRepo.save(updatedAdmin);
	}
	
	public Admin getOne(Long id) {
		return aRepo.findById(id).orElse(null);
	}
	
	public void deleteAdmin(Long id) {
		aRepo.deleteById(id);
	}
}
