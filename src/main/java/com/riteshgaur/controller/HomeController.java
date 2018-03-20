package com.riteshgaur.controller;

import com.riteshgaur.dao.ProductDao;
import com.riteshgaur.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    private ProductDao productDao = new ProductDao();

    @RequestMapping("/")
   public String home(){
        return "index";
    }


    @RequestMapping("/productlist")
    public String getProducts(Model model){

        List<Product> productList = productDao.getProductList() ;
        Product product = productList.get(0);
        model.addAttribute(product);

        return "productlist";

    }


    /*
    public ModelAndView hello() {

        String helloWorldMessage = "Hello world! from SpringMVC";
        return new ModelAndView("home", "message", helloWorldMessage);
    }*/

}
