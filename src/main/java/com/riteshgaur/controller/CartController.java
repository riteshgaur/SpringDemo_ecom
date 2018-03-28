package com.riteshgaur.controller;

import com.riteshgaur.dao.CartDao;
import com.riteshgaur.dao.ProductDao;
import com.riteshgaur.model.Cart;
import com.riteshgaur.model.CartItem;
import com.riteshgaur.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/rest/cart")
public class CartController {

    @Autowired
    private CartDao cartDao;

    @Autowired
    private ProductDao productDao;

    @RequestMapping(value = "/{cartId}", method = RequestMethod.GET)
    public @ResponseBody
    Cart read(@PathVariable(value = "cartId") String cartId) {
        return cartDao.read(cartId);
    }


    @RequestMapping(value = "/{cartId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void update(@PathVariable(value = "cartId") String cartId, @RequestBody Cart cart) {

        cartDao.updateCart(cartId, cart);
    }


    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value = "cartId") String cartId) {

        cartDao.deletefromCart(cartId);


    }

    @RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable(value = "productId") String productId, HttpServletRequest request) {
        String sessionId = request.getSession(true).getId();
        Cart cart = cartDao.read(sessionId);

        if (cart == null) {
            cart = cartDao.create(new Cart(sessionId));

        }

        Product product = productDao.getProductById(productId);
        if (product == null) {

            throw new IllegalArgumentException(new Exception());

        }

        cart.addCartItems(new CartItem(product));

        cartDao.updateCart(sessionId, cart);

    }


    @RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable String productId, HttpServletRequest request) {

        String sessionId = request.getSession(true).getId();
        Cart cart = cartDao.read(sessionId);

        if (cart == null) {
            cart = cartDao.create(new Cart(sessionId));

        }

        Product product = productDao.getProductById(productId);
        if (product == null) {

            throw new IllegalArgumentException(new Exception());

        }

        cart.removeCartItem(new CartItem(product));

        cartDao.updateCart(sessionId, cart);


    }


    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please check your payload")
    public void handleCleintErrors(Exception e) {
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal server error!")
    public void handleServerErrors(Exception e) {
    }

}
