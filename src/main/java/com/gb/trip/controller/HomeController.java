package com.gb.trip.controller;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;

=======
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
<<<<<<< HEAD
	@GetMapping({"","/","/index"})
	public String index(HttpServletRequest request) {
		
=======
	@GetMapping({"","/","index"})
	public String index() {
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95
		return "index";
	}
}
