package com.gb.trip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.gb.trip.model.UserRegistration;
import com.gb.trip.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute(new UserRegistration());
		return "user/register";
	}

<<<<<<< HEAD
	@PostMapping("/register")
	public String register(Model model, @Valid UserRegistration userRegistration, BindingResult bindingResult) {
		if (userService.hasErrors(userRegistration, bindingResult)) {
			return "user/register";
		}
		userService.save(userRegistration);
		return "redirect:login";
	}
=======
    @PostMapping("/register")
    public String register(Model model,
            @Valid UserRegistration userRegistration, BindingResult bindingResult)
    {
        if (userService.hasErrors(userRegistration, bindingResult)) {
            return "user/register";
        }
        userService.save(userRegistration);
        return "redirect:login";
    }
    @RequestMapping("registerSuccess")
    public String registerSurccess() {
        return "user/registerSuccess";
    }
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95

	@GetMapping("/login")
	public String login(Model model, HttpServletRequest request) {
		// 이전페이지 URL 추출

		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referrer);
		System.out.println(referrer);
		return "user/login";
	}

	@GetMapping("/user/updateUser")
	public String updateUser() {

		return "user/updateUser";
	}

	@GetMapping("/user/updateNick")
	public String updateNick() {
		return "user/updateNick";
	}

	@GetMapping("/user/updateNick")
	public String updateNick() {
	  return "user/updateNick";
	}
}