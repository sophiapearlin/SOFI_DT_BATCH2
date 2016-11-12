package com.niit.DAO;


import com.niit.Beans.Product;

import java.util.List;

public interface ProductDao {

    List<Product> getProductList();

    Product getProductById (int id);
    
    public Product find(Integer id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
