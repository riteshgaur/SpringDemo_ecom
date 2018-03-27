package com.riteshgaur.controller;

import com.riteshgaur.dao.ProductDao;
import com.riteshgaur.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class HomeController {


    private Path path;

    private final ProductDao productDao;

    @Autowired
    public HomeController(ProductDao productDao) {
        this.productDao = productDao;
    }

    @RequestMapping("/")
    public String home() {
        return "index";
    }


    @RequestMapping("/productlist")
    public String getProducts(Model model) {

        List<Product> productList = productDao.getAllProducts();
        // Product products = productList.get();
        model.addAttribute("productList", productList);

        return "productlist";

    }

   /* @RequestMapping("/productlist")
    public String viewProduct() {

        return "productlist";
    }*/

    @RequestMapping("/productList/viewProduct/{productID}")
    public String viewProduct(@PathVariable String productID, Model model) {
        Product product = productDao.getProductById(productID);
        model.addAttribute(product);

        return "viewProduct";
    }

    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model) {

        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "productInventory";
    }


    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model) {

        Product product = new Product();
       /* product.setCategory("Books");
        product.setCondition("New");
        product.setStatus("Active");*/

        model.addAttribute("product", product);

        return "addProduct";

    }

    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product, HttpServletRequest request) {

        productDao.addProduct(product);

        MultipartFile productImage = product.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        //path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductID() + ".png");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductID() + ".png");

        if (productImage != null && !productImage.isEmpty()) {
            try {

                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {

                e.printStackTrace();
                throw new RuntimeException("Product image saving failed", e);
            }

        }


        return "redirect:/admin/productInventory";
    }


    @RequestMapping("/admin/productInventory/deleteProduct/{id}")
    public String deleteProduct(@PathVariable String id, Model model) {

        productDao.deleteProduct(id);
        return "redirect:/admin/productInventory";

    }


    /*
    public ModelAndView hello() {

        String helloWorldMessage = "Hello world! from SpringMVC";
        return new ModelAndView("home", "message", helloWorldMessage);
    }*/

}
