package com.niit.shopping

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class Login {
	@RequestMapping("/")
	public ModelAndView home(){
		return new ModelAndView("Login1");
	}

}
