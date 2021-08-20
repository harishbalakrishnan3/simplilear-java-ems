package com.harish.ems.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {
	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	@GetMapping("/user")
	public String showUserOptions() {
		
		return "user-options";
	}
	
	@GetMapping("/admin")
	public String showAdminOptions() {
		
		return "admin-options";
	}
}
