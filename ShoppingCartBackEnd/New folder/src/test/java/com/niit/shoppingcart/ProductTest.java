package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

public class ProductTest {
public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
	   ProductDAO productDAO = 	(ProductDAO) context.getBean("productDAO");
	   
	   Product product = 	(Product) context.getBean("product");
	   product.setId("PD122");
	   product.setName("PDName122");
	   product.setDescription("PDDesc122");
	   product.setPrice(20000);
	   
	   
	   productDAO.saveOrUpdate(product);

}
}
