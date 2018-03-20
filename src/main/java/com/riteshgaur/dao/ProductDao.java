package com.riteshgaur.dao;

import com.riteshgaur.model.Product;

import java.util.ArrayList;
import java.util.List;


//Lets create some dummy data just to check the waters


public class ProductDao {


    private List<Product> productList;

    public List<Product> getProductList() {

        Product p1 = new Product();

        p1.setName("Guitar");
        p1.setCategory("Instrument");
        p1.setDescription("Spanish");
        p1.setPrice(1900.00);
        p1.setCondition("New");
        p1.setStatus("active");
        p1.setInstock(10);
        p1.setManufacturer("Gibson");

        productList = new ArrayList<Product>();
        productList.add(p1);
        return productList;


    }

}
