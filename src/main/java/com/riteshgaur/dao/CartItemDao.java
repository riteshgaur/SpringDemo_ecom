package com.riteshgaur.dao;


import com.riteshgaur.model.Cart;
import com.riteshgaur.model.CartItem;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}

