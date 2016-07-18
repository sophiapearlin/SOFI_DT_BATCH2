package com.niit.shoppingcartcore;

import org.springframework.context.AnnotationConfigApplicationContext;

@Component
public class Test {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartcore");
		context.refresh();
		context.getBean("Category");
		System.out.println("category is created");
	}

}
