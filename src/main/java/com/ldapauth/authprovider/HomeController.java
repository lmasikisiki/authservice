package com.ldapauth.authprovider;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	@GetMapping("/")
	public String root() {
		return "welcome to root";
	}

	@GetMapping("/home")
	public String home() {
		return "welcome home";
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "welcome admin";
	}
	
	@GetMapping("/login")
	public String login() {
		return "enter your credentials";
	}
}
