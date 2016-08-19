package com.niit.shopingcart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class AuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	    @Override
	    protected String determineTargetUrl(HttpServletRequest request, HttpServletResponse response) {
	        // Get the role of logged in user
	    	System.out.println("@@@@@@@@@@@@@@@@@@");
	    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        String role = auth.getAuthorities().toString();
System.out.println("******");
	        String targetUrl = "";
	        if(role.contains("FALSE")) {
	            targetUrl = "/userhome";
	            System.out.println("user login");
	        } else if(role.contains("TRUE")) {
	            targetUrl = "/adminHome";
	            System.out.println("addmin logged in");
	        }
	        return targetUrl;
	        
	    }
	}

