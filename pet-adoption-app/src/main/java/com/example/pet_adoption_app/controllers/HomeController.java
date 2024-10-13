package com.example.pet_adoption_app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "header.jsp";
	}
	
	@GetMapping("/home")
	public String Homepage() {
		return "homepage.jsp";
	}
	

}
