package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest {
	
	
	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   CategoryDAO categoryDAO = 	(CategoryDAO) context.getBean("categoryDAO");
	   
	   Category category = 	(Category) context.getBean("category");
	   category.setId("CG125");
	   category.setName("CGName125");
	   category.setDescription("CGDesc125");
	   
	   
	   categoryDAO.saveOrUpdate(category);
	   
	   
	   
	
		
	}

}
