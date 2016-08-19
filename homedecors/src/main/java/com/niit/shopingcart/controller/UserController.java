package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.UserDetails;

@Controller
@SessionAttributes("userID")
public class UserController {

	@Autowired
	UserDAO userDAO;


	@RequestMapping("saveuser")
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
		userDAO.saveOrUpdate(userDetails);
		return new ModelAndView("login");
	}
	
	
	@RequestMapping("register")
	public ModelAndView register(){
		return new ModelAndView("register");
	}
	

	
	
	

	@RequestMapping(value = {"/","home"})
	public String testHome() {
		return "home";
	}

	

	@RequestMapping("userhome")
	public ModelAndView userHome() {
		return new ModelAndView("userhome");
	}

	@RequestMapping("adminHome")
	public ModelAndView adminHome() {
		return new ModelAndView("adminHome");
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String loginerror(){
		return "accessdenied";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "logout";
	}
}
