package com.example.pet_adoption_app.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.pet_adoption_app.models.Pets;
import com.example.pet_adoption_app.models.Users;
import com.example.pet_adoption_app.services.PetServices;
import com.example.pet_adoption_app.services.UserServices;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private UserServices uService;
	
	@Autowired
	private PetServices pService;
	
	@GetMapping("/home")
	public String Homepage(Model mv,
						   HttpSession currentSession) {
		
		Users loggedUser = (Users)currentSession.getAttribute("activeUser");
		mv.addAttribute("loggedUser",loggedUser);
		mv.addAttribute("newAcc",new Users());
		mv.addAttribute("newPet",new Pets());
		
		return "homepage";
	}
	
	@PostMapping("/verify/account")
	public String verification(HttpSession currentSession,
							   @RequestParam String email,
							   @RequestParam String password) {
		
		for(int i = 0; i<uService.getAll().size(); i++) {
			if(uService.getAll().get(i).getUser_email().equals(email)&&
			   uService.getAll().get(i).getUser_password().equals(password)) {
				currentSession.setAttribute("activeUser", uService.getAll().get(i));
				return "redirect:/dashboard";
			}
		}
		
		return "homepage";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession currentSession,
							RedirectAttributes error,
							Model mv) {
		if(currentSession.getAttribute("activeUser")==null) {
			
			return "redirect:/home";
		}
		
		mv.addAttribute("newPet",new Pets());
		return "dashboard";
	}
	
	@GetMapping("/home/contact-us")
	public String contactPage(HttpSession currentSession,
							  Model mv){
		Users loggedUser = (Users)currentSession.getAttribute("activeUser");
		mv.addAttribute("loggedUser",loggedUser);
		mv.addAttribute("newAcc",new Users());
		mv.addAttribute("newPet",new Pets());
		return "contactpage";
	}

	@GetMapping("/home/about-us")
	public String aboutPage(HttpSession currentSession,
							Model mv){
		Users loggedUser = (Users)currentSession.getAttribute("activeUser");
		mv.addAttribute("loggedUser",loggedUser);
		mv.addAttribute("newAcc",new Users());
		mv.addAttribute("newPet",new Pets());
		return "aboutpage";
	}
	
	@PostMapping("/account/register")
	public String postRegisterPage(@ModelAttribute Users newAcc,
								   BindingResult result,
								   RedirectAttributes error) {
		
		uService.createAccount(newAcc);
		
		return "redirect:/home";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession currentSession) {
		
		currentSession.removeAttribute("activeUser");
		return "redirect:/home";
	}
	
	@PostMapping("/pet/register")
	public String registerPet(@ModelAttribute Pets newPet,
							  BindingResult result,
							  RedirectAttributes error) {
		
		pService.createPet(newPet);
		
		return "redirect:/dashboard";
	}
	
	
//	------------------------TEST PAGE------------------------------------
	
	@GetMapping("/test")
	public String testPage(Model mv) {
		
		mv.addAttribute("users",uService.getAll());
		mv.addAttribute("pets", pService.getAll());
		return "test";
	}
	
	
	
}
