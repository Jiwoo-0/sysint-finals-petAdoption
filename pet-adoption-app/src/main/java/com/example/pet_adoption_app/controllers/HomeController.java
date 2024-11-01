package com.example.pet_adoption_app.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.pet_adoption_app.models.Admin;
import com.example.pet_adoption_app.models.Applications;
import com.example.pet_adoption_app.models.Pets;
import com.example.pet_adoption_app.models.UserDetails;
import com.example.pet_adoption_app.models.Users;
import com.example.pet_adoption_app.services.AdminServices;
import com.example.pet_adoption_app.services.ApplicationServices;
import com.example.pet_adoption_app.services.DetailsServices;
import com.example.pet_adoption_app.services.PetServices;
import com.example.pet_adoption_app.services.UserServices;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private UserServices uService;
	
	@Autowired
	private PetServices pService;
	
	@Autowired
	private ApplicationServices aService;
	
	@Autowired
	private AdminServices adService;
	
	@Autowired
	private DetailsServices dService;
	
	public ArrayList<Users> temp = new ArrayList<Users>();
	
	
	
	
	private void initForms(Model mv,
			   			   HttpSession currentSession) {
		
		Users loggedUser = (Users)currentSession.getAttribute("activeUser");
		mv.addAttribute("loggedUser",loggedUser);
		mv.addAttribute("newAcc",new Users());
		mv.addAttribute("newPet",new Pets());
		mv.addAttribute("adoptPet", new Applications());
		mv.addAttribute("newAdmin", new Admin());
		mv.addAttribute("newUserDetails", new UserDetails());
		mv.addAttribute("allPets", pService.getAll());
		mv.addAttribute("currentApplication", aService.getAll());
		mv.addAttribute("pets", pService.getAll());
		
		if(adService.getAll().isEmpty()) {
			Admin admin01 = new Admin(1,"admin01","default","admin1@admin","001");
			adService.createAdmin(admin01);
		}
		
		if(pService.getAll().isEmpty()) {
			Pets pet1 = new Pets(1,"Winter","/assets/images/pets/winter.jpg",
					"cat",8,"male","5kg","30","no","n/a","Non-chalant pero laging gutom");
			Pets pet2 = new Pets(2,"Belle","/assets/images/pets/belle.jpg",
					"cat",1,"female","4kg","20","no","has medical history","very cute, likes to bite");
			Pets pet3 = new Pets(3,"Potchi","/assets/images/pets/potchi.jpg",
					"dog",2,"male","8kg","50","yes","n/a","shih tzu na makulit");
			Pets pet4 = new Pets(4,"icy","/assets/images/pets/icy.jpg",
					"cat",5,"male","9kg","30","no","has medical history ","meow meow meow meow");
			pService.createPet(pet1);
			pService.createPet(pet2);
			pService.createPet(pet3);
			pService.createPet(pet4);
		}
	}
	
	@GetMapping("/")
	public String index(Model mv,
			   			HttpSession currentSession) {
		initForms(mv, currentSession);
		return "redirect:/home";
	}
	
	@GetMapping("/home")
	public String Homepage(Model mv,
						   HttpSession currentSession) {
		initForms(mv, currentSession);
		
		return "homepage";
	}
	
	@PostMapping("/verify/account")
	public String verification(HttpSession currentSession,
							   @RequestParam String email,
							   @RequestParam String password,
							   Model mv) {
		
		if(email.contains("@admin")) {
			for(int i = 0; i<adService.getAll().size(); i++) {
				System.out.println(email + " = " +adService.getAll().get(i).getAdmin_email());
				System.out.println(password + " = " +adService.getAll().get(i).getAdmin_password());
				if(adService.getAll().get(i).getAdmin_email().equals(email)&&
				   adService.getAll().get(i).getAdmin_password().equals(password)) {
					System.out.println("pumasok si admin");
					currentSession.setAttribute("activeAdmin", adService.getAll().get(i));
					return "redirect:/admin/dashboard";
					
				} else {
					System.out.println("di siya pumasok");
				}
			}
		}
		
		for(int i = 0; i<uService.getAll().size(); i++) {
			if(uService.getAll().get(i).getUser_email().equals(email)&&
					uService.getAll().get(i).getUser_password().equals(password)) {
				currentSession.setAttribute("activeUser", uService.getAll().get(i));
				return "redirect:/dashboard";
			}
		}
		
		
		return "redirect:/home";
	}
	
	@GetMapping("/register/application")
	public String applicationForm(Model mv,
								  HttpSession currentSession) {
		
		initForms(mv, currentSession);
		
		return "application";
	}
	
	@PostMapping("/register/application")
	public String postApplicationForm(@ModelAttribute UserDetails newUserDetails,
									  Model mv,
									  HttpSession currentSession,
									  @ModelAttribute Users newAcc) {
		
		initForms(mv, currentSession);
		uService.createAccount(temp.get(0));
		dService.createDetails(newUserDetails);
		return "redirect:/home";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession currentSession,
							RedirectAttributes error,
							Model mv) {
		if(currentSession.getAttribute("activeUser")==null) {
			
			return "redirect:/home";
		}
		
		initForms(mv, currentSession);
		mv.addAttribute("pets", pService.getAll());
		return "dashboard";
	}
	
	@GetMapping("/home/contact-us")
	public String contactPage(HttpSession currentSession,
							  Model mv){
		initForms(mv, currentSession);
		return "contactpage";
	}

	@GetMapping("/home/about-us")
	public String aboutPage(HttpSession currentSession,
							Model mv){
		initForms(mv, currentSession);
		return "aboutpage";
	}
	
	@PostMapping("/account/register")
	public String postRegisterPage(@ModelAttribute Users newAcc,
								   BindingResult result,
								   RedirectAttributes error) {
		
		for(int i = 0; i<uService.getAll().size(); i++) {
			if(uService.getAll().get(i).getUser_email().equals(newAcc.getUser_email())) {
				error.addFlashAttribute("error", "Email already exists");
				return "redirect:/home";
			}
		}
		
		temp.clear();
		temp.add(newAcc);
		System.out.println(temp.get(0).getUser_first_name());
		
		return "redirect:/register/application";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession currentSession) {
		
		currentSession.removeAttribute("activeAdmin");
		currentSession.removeAttribute("activeUser");
		return "redirect:/home";
	}
	
	@PostMapping("/pet/register")
	public String registerPet(@ModelAttribute Pets newPet,
							  BindingResult result,
							  RedirectAttributes error){
		
		
		pService.createPet(newPet);
		
		return "redirect:/dashboard";
	}
	
	@PostMapping("/adopt/pet")
	public String adoptPet(@ModelAttribute Applications adoptPet) {
		
		aService.createApplication(adoptPet);
		return "redirect:/dashboard"; 
	}
	
	@GetMapping("/admin/dashboard")
	public String adminDashboard(Model mv,
								HttpSession currentSession) {
		if(currentSession.getAttribute("activeAdmin")==null) {
			
			return "redirect:/home";
		}
		
		initForms(mv, currentSession);
		mv.addAttribute("updateAcc",new Users());
		mv.addAttribute("updatePet",new Pets());
		mv.addAttribute("users",uService.getAll());
		mv.addAttribute("pets", pService.getAll());
		mv.addAttribute("applications",aService.getAll());
		return "adminDashboard";
	}
	
	@GetMapping("/user/delete/{user_id}")
	public String deleteUser(@PathVariable Long user_id) {
		
		uService.deleteAccount(user_id);
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/pet/delete/{pet_id}")
	public String deletePet(@PathVariable Long pet_id) {
		
		pService.deletePet(pet_id);
		return "redirect:/admin/dashboard";
	}
	
	@PostMapping("/account/update")
	public String updateUser(@ModelAttribute Users updateAcc) {
		
		uService.updatedAccount(updateAcc);
		
		return "redirect:/admin/dashboard";
	}
	
	@PostMapping("/dashboard/account/update")
	public String updateDashboardUser(@ModelAttribute Users loggedUser,
									 HttpSession currentSession) {
		
		uService.updatedAccount(loggedUser);
		currentSession.removeAttribute("activeUser");
		currentSession.setAttribute("activeUser", loggedUser);
		
		return "redirect:/dashboard";
	}
	
	@PostMapping("/pet/update")
	public String updatePet(@ModelAttribute Pets updatePet,
							@RequestParam String medical_history,
							@RequestParam String description) {
		
		updatePet.setMedical_history(medical_history);
		updatePet.setDescription(description);
		pService.updatePet(updatePet);
		
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/admin/application")
	public String detailsPage() {
		
		
		return "UserApplicationDetails";
	}
	
	@GetMapping("/admin/application/{user_id}/{app_id}")
	public String detailsPage(@PathVariable long user_id,
							  @PathVariable long app_id,
							  Model mv,
							  HttpSession currentSession) {
		
		initForms(mv, currentSession);
		UserDetails theDeets=dService.getOne(user_id);
		Users theInfo=uService.getOne(user_id);
		Applications theApp = aService.getOne(app_id);
		mv.addAttribute("userdeets", theDeets);
		mv.addAttribute("userinfo", theInfo);
		mv.addAttribute("application",theApp);
		
		return "UserApplicationDetails";
	}
	
	@GetMapping("/admin/application/reject/{app_id}")
	public String rejectApp(@PathVariable long app_id) {
		
		Applications reject = aService.getOne(app_id);
		reject.setApplication_status("rejected");
		aService.updateApp(reject);
		
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/admin/application/approve/{app_id}")
	public String approveApp(@PathVariable long app_id) {
		
		Applications approve = aService.getOne(app_id);
		approve.setApplication_status("approved");
		aService.updateApp(approve);
		
		return "redirect:/admin/dashboard";
	}
	
//	------------------------TEST PAGE-------------------------------------
	
	@GetMapping("/test")
	public String testPage(Model mv) {
		
		mv.addAttribute("users",uService.getAll());
		mv.addAttribute("pets", pService.getAll());
		return "test";
	}
}
