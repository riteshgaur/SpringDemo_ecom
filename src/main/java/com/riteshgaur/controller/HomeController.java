package com.riteshgaur.controller;

import com.riteshgaur.dao.ProductDao;
import com.riteshgaur.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
       // Product products = productList.get();
        model.addAttribute("productList",productList);

        return "productlist";

    }

    @RequestMapping("/viewProduct")
    public String viewProduct() {
        return "viewProduct";
    }


    /*
    public ModelAndView hello() {

        String helloWorldMessage = "Hello world! from SpringMVC";
        return new ModelAndView("home", "message", helloWorldMessage);
    }*/

}
