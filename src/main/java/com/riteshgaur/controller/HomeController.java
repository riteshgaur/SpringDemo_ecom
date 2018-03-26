package com.riteshgaur.controller;

import com.riteshgaur.dao.ProductDao;
import com.riteshgaur.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {


    // private ProductDao_dead productDao = new ProductDao_dead();

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
   public String home(){
        return "index";
    }


    @RequestMapping("/productlist")
    public String getProducts(Model model){

        List<Product> productList = productDao.getAllProducts();
       // Product products = productList.get();
        model.addAttribute("productList",productList);

        return "productlist";

    }

    @RequestMapping("/productList")
    public String viewProduct() {


        return "viewProduct";
    }

    @RequestMapping("/productList/viewProduct/{productID}")
    public String viewProduct(@PathVariable String productID, Model model) {
        Product product = productDao.getProductbyId(productID);
        model.addAttribute(product);

        return "viewProduct";
    }


    /*
    public ModelAndView hello() {

        String helloWorldMessage = "Hello world! from SpringMVC";
        return new ModelAndView("home", "message", helloWorldMessage);
    }*/

}
