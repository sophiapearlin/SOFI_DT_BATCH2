package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

public class UserTest {
public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   UserDAO userDAO = 	(UserDAO) context.getBean("userDAO");
	   
	   User user = 	(User) context.getBean("user");
	   user.setId("User122");
	   user.setName("UserName122");
	   user.setPassword("sofi");
	   user.setMobile("9524677667");
	   user.setMail("sopreeth@gmail.com");
	   user.setAddress("Useraddress");
	   
	   
	   userDAO.saveOrUpdate(user);
	   
	   
	   
	
		
	}

}
