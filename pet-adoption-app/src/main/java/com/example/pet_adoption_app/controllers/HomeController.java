package com.example.pet_adoption_app.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.pet_adoption_app.models.Users;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	ArrayList<Users> allUsers = new ArrayList<Users>();
	
	@GetMapping("/home")
	public String Homepage() {
		return "homepage";
	}
	
	@PostMapping("/verify/account")
	public String verification(HttpSession current_session,
							   @RequestParam String email,
							   @RequestParam String password) {
		
		for(int i = 0; i<allUsers.size(); i++) {
			if(allUsers.get(i).getUser_email().equals(email)&&
			   allUsers.get(i).getUser_password().equals(password)) {
				current_session.setAttribute("activeUser", allUsers.get(i));
				return "redirect:/dashboard";
			}
		}
		
		return "homepage";
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	
	@GetMapping("/home/contact-us")
	public String contactPage(){
		return "contactpage";
	}

	@GetMapping("/home/about-us")
	public String aboutPage(){
		return "aboutpage";
	}
	
	@GetMapping("/account/register")
	public String registerPage(Model mv) {
		
		mv.addAttribute("reg_account",new Users());
		
		return "registerpage";
	}
	
	@PostMapping("/account/register")
	public String postRegisterPage(@ModelAttribute Users reg_account,
								   BindingResult result,
								   RedirectAttributes error) {
		
		allUsers.add(reg_account);
		
		return "redirect:/home";
	}
	
	
//	------------------------TEST PAGE------------------------------------
	
	@GetMapping("/test")
	public String testPage(Model mv) {
		
		mv.addAttribute("users",allUsers);
		
		return "test";
	}
	
	
	
}
