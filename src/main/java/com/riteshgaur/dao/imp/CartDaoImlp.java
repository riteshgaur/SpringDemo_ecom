package com.riteshgaur.dao.imp;

import com.riteshgaur.dao.CartDao;
import com.riteshgaur.model.Cart;

import java.util.HashMap;
import java.util.Map;

public class CartDaoImlp implements CartDao {

    private Map<String, Cart> listOfCarts;

    public CartDaoImlp() {

        listOfCarts = new HashMap<String, Cart>();
    }

    public Cart create(Cart cart) {

        if (listOfCarts.keySet().contains((cart.getCardID()))) {

            throw new IllegalArgumentException(String.format("Cannot create a cart. A cart with the given ID(%)" + "already exists", cart.getCardID()));
        }

        listOfCarts.put(cart.getCardID(), cart);

        return cart;
    }

    public Cart read(String cartID) {

        return listOfCarts.get(cartID);
    }

    public void updateCart(String cartID, Cart cart) {

        if (!listOfCarts.keySet().contains(cartID)) {
            throw new IllegalArgumentException((String.format("Can not update the cart with the given ID")));

        }
        listOfCarts.put(cartID, cart);
    }


    public void deletefromCart(String cartID) {

        if (!listOfCarts.keySet().contains(cartID)) {
            throw new IllegalArgumentException((String.format("Can not delete the cart with the given ID")));
        }
        listOfCarts.remove(cartID);
    }

}
