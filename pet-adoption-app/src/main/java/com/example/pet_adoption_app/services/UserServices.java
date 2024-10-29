package com.example.pet_adoption_app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pet_adoption_app.models.Users;
import com.example.pet_adoption_app.repositories.UserRepository;

@Service
public class UserServices {
	
	@Autowired
	private UserRepository uRepo;
	
	public List<Users> getAll(){
		return uRepo.findAll();
	}
	
	public Users getOne(Long id) {
		return uRepo.findById(id).orElse(null);
	}
	
	public Users createAccount(Users newUser) {
		return uRepo.save(newUser);
	}
	
	public void deleteAccount(Long id) {
		uRepo.deleteById(id);
	}
	
	public Users updatedAccount(Users updatedAcc) {
		return uRepo.save(updatedAcc);
	}
}
