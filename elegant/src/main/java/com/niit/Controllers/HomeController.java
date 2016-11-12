package com.niit.Controllers;


import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {



     @RequestMapping("/")
     public String home(){
        return "index";
    }
    

   
    @RequestMapping("/about")
    public String about(){
        return "about";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}
    
    @RequestMapping(value = "homeuser", method = RequestMethod.GET)
	public ModelAndView homeuser(ModelMap model, Principal principal) {
		String name = principal.getName();
		ModelAndView mv = new ModelAndView("homeuser");
		model.addAttribute("author", name);
        java.util.UUID uid=java.util.UUID.randomUUID();
        String sUid = uid.toString();
        mv.addObject("sUid", sUid);
		return mv;
	}
    
    @RequestMapping(value = "homeadmin", method = RequestMethod.GET)
	public ModelAndView homeadmin(ModelMap model, Principal principal) {
		String name = principal.getName();
		model.addAttribute("author", name);
	
		return new ModelAndView("homeadmin");
	}

    
    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String loginerror(ModelMap model, Principal principal) {
		String username = principal.getName();
		model.addAttribute("message", "Sorry " + username + " You don't have privileges to view this page!!!");
		return "accessdenied";
	}
    

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "logout";
	}



    

} // The End of Class;
