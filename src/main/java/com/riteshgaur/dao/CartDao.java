package com.riteshgaur.dao;

import com.riteshgaur.model.Cart;

public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void updateCart(String cartId, Cart cart);

    void deletefromCart(String cartId);
}
