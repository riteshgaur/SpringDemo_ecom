package com.riteshgaur.dao;

import com.riteshgaur.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


//Lets create some dummy data just to check the waters


public class ProductDao_x {


    public List<Product> getProductList() {

        Product p1 = new Product();

        p1.setProductID("001");
        p1.setName("Guitar");
        p1.setCategory("Instrument");
        p1.setDescription("Spanish Guitar");
        p1.setPrice(1900.00);
        p1.setCondition("New");
        p1.setStatus("active");
        p1.setInstock(10);
        p1.setManufacturer("Gibson");


        Product p2 = new Product();
        p2.setProductID("002");
        p2.setName("Art of Living");
        p2.setCategory("Books");
        p2.setDescription("Change of Lifestyle, improve your life");
        p2.setPrice(10.00);
        p2.setCondition("Old");
        p2.setStatus("active");
        p2.setInstock(100);
        p2.setManufacturer("RGPubHouse");

        Product p3 = new Product();
        p3.setProductID("003");
        p3.setName("Guitar Pick");
        p3.setCategory("Instrument");
        p3.setDescription("Guitar Pick HARD");
        p3.setPrice(5.00);
        p3.setCondition("New");
        p3.setStatus("active");
        p3.setInstock(100);
        p3.setManufacturer("Gibson");


        List<Product> productList = new ArrayList<Product>();
        productList.add(p1);
        productList.add(p2);
        productList.add(p3);
        return productList;


    }


    public Product getProductbyID(String productID) throws IOException {

        for (Product product : getProductList()) {
            if (product.getProductID().equals(productID)) {
                return product;

            }
        }
        throw new IOException("NO Product found!");

    }

}
