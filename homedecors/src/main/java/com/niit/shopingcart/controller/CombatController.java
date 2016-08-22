package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.UserDetails;

@Controller
public class CombatController {
	@Autowired
	UserDAO userDAO;
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
		userDAO.saveOrUpdate(userDetails);
		return new ModelAndView("home");
	}
}
