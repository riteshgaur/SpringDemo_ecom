package com.riteshgaur.dao;

import com.riteshgaur.model.Product;

import java.util.List;

public interface ProductDao {

    void addProduct(Product product);

    Product getProductbyId(String id);

    List<Product> getAllProducts();


    void deleteProduct(String id);

}
