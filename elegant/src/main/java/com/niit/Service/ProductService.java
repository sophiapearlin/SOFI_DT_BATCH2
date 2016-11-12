package com.niit.Service;


import com.niit.Beans.Product;

import java.util.List;

public interface ProductService {
	
	public Product find(Integer id);

    List<Product> getProductList();

    Product getProductById (int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);


}
